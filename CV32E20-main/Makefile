MAKEFILE_DIR := $(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

RUN_TAG = $(shell ls -1 $(LIBRELANE_DIR)/runs 2>/dev/null | tail -n 1)

TOP = core_wrap

.DEFAULT_GOAL := help

LIBRELANE_DIR := Flow/scripts/Librelane
PNR_DIR := PlaceAndRoute
SYNTH_DIR := synthesis
VERIF_DIR := verification
FLOW_FINAL_DIR := Flow/scripts/Librelane/final

help: ## Show this help message
	@echo 'Usage: make [target]'
	@echo ''
	@echo 'Available targets:'
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "  %-20s %s\n", $$1, $$2}'
.PHONY: help

all: ## Run Librelane flow and package the whole chip
	$(MAKE) init-submodules
	$(MAKE) librelane
	$(MAKE) copy-pnr
	$(MAKE) copy-synthesis
	$(MAKE) copy-verification
.PHONY: all

copy-results: ## Copy results from Librelane to PlaceAndRoute, synthesis and verification
	$(MAKE) copy-pnr
	$(MAKE) copy-synthesis
	$(MAKE) copy-verification
.PHONY: copy-results

init-submodules: ## Initialize and update git submodules
	git -C $(MAKEFILE_DIR) -c safe.directory='*' submodule update --init
	cd $(LIBRELANE_DIR)/ihp13/pdk && git apply ../verilator_stdcell.patch
.PHONY: init-submodules

librelane: ## Run LibreLane with Magic and KLayout DRC checks
	librelane $(LIBRELANE_DIR)/config.yaml --save-views-to $(FLOW_FINAL_DIR)/
.PHONY: librelane

librelane-nodrc: ## Run LibreLane without DRC checks
	librelane $(LIBRELANE_DIR)/config.yaml --save-views-to $(FLOW_FINAL_DIR)/ --skip KLayout.DRC --skip Magic.DRC --skip KLayout.Antenna --skip KLayout.Density
.PHONY: librelane-nodrc

librelane-magicdrc: ## Run LibreLane with only Magic DRC checks
	librelane $(LIBRELANE_DIR)/config.yaml --save-views-to $(FLOW_FINAL_DIR)/ --skip KLayout.DRC
.PHONY: librelane-magicdrc

librelane-klayoutdrc: ## Run LibreLane with only KLayout DRC checks
	librelane $(LIBRELANE_DIR)/config.yaml --save-views-to $(FLOW_FINAL_DIR)/ --skip Magic.DRC
.PHONY: librelane-klayoutdrc

librelane-openroad: ## Open the last LibreLane run in OpenROAD GUI
	librelane $(LIBRELANE_DIR)/config.yaml --last-run --flow OpenInOpenROAD
.PHONY: librelane-openroad

librelane-klayout: ## Open the last LibreLane run in KLayout
	librelane $(LIBRELANE_DIR)/config.yaml --last-run --flow OpenInKLayout
.PHONY: librelane-klayout

copy-pnr: ## Copy final views to PlaceAndRoute/
	rm -f $(PNR_DIR)/$(TOP).gds.gz
	mkdir -p $(PNR_DIR)/
	cp $(FLOW_FINAL_DIR)/gds/$(TOP).gds $(PNR_DIR)/$(TOP).gds
	gzip $(PNR_DIR)/$(TOP).gds

	rm -f $(PNR_DIR)/$(TOP).nl.v
	mkdir -p $(PNR_DIR)/
	cp $(FLOW_FINAL_DIR)/nl/$(TOP).nl.v $(PNR_DIR)/$(TOP).nl.v

	rm -f $(PNR_DIR)/$(TOP).lef
	mkdir -p $(PNR_DIR)/
	cp $(FLOW_FINAL_DIR)/lef/$(TOP).lef $(PNR_DIR)/$(TOP).lef

	rm -f $(PNR_DIR)/$(TOP).def
	mkdir -p $(PNR_DIR)/
	cp $(FLOW_FINAL_DIR)/def/$(TOP).def $(PNR_DIR)/$(TOP).def

	rm -rf $(PNR_DIR)/timing
	mkdir -p $(PNR_DIR)/timing
	cp $(FLOW_FINAL_DIR)/sdf/nom_fast_1p32V_m40C/$(TOP)__nom_fast_1p32V_m40C.sdf $(PNR_DIR)/timing/$(TOP)__nom_fast_1p32V_m40C.sdf
	cp $(FLOW_FINAL_DIR)/sdf/nom_slow_1p08V_125C/$(TOP)__nom_slow_1p08V_125C.sdf $(PNR_DIR)/timing/$(TOP)__nom_slow_1p08V_125C.sdf
	cp $(FLOW_FINAL_DIR)/sdf/nom_typ_1p20V_25C/$(TOP)__nom_typ_1p20V_25C.sdf $(PNR_DIR)/timing/$(TOP)__nom_typ_1p20V_25C.sdf
	cp $(FLOW_FINAL_DIR)/lib/nom_fast_1p32V_m40C/$(TOP)__nom_fast_1p32V_m40C.lib $(PNR_DIR)/timing/$(TOP)__nom_fast_1p32V_m40C.lib
	cp $(FLOW_FINAL_DIR)/lib/nom_slow_1p08V_125C/$(TOP)__nom_slow_1p08V_125C.lib $(PNR_DIR)/timing/$(TOP)__nom_slow_1p08V_125C.lib
	cp $(FLOW_FINAL_DIR)/lib/nom_typ_1p20V_25C/$(TOP)__nom_typ_1p20V_25C.lib $(PNR_DIR)/timing/$(TOP)__nom_typ_1p20V_25C.lib

	rm -rf $(PNR_DIR)/parasitics
	mkdir -p $(PNR_DIR)/parasitics
	cp $(FLOW_FINAL_DIR)/spef/nom/$(TOP).nom.spef $(PNR_DIR)/parasitics/$(TOP).nom.spef
.PHONY: copy-pnr

copy-synthesis: ## Copy netlists, reports and SDFs to synthesis/
	rm -rf $(SYNTH_DIR)/netlist
	mkdir -p $(SYNTH_DIR)/netlist
	cp $(FLOW_FINAL_DIR)/spice/$(TOP).spice $(SYNTH_DIR)/netlist/$(TOP).spice
	cp $(LIBRELANE_DIR)/runs/${RUN_TAG}/*-yosys-synthesis/$(TOP).nl.v $(SYNTH_DIR)/netlist/$(TOP).nl.v

	rm -rf $(SYNTH_DIR)/reports
	mkdir -p $(SYNTH_DIR)/reports
	cp $(LIBRELANE_DIR)/runs/${RUN_TAG}/*-yosys-synthesis/reports/stat.rpt $(SYNTH_DIR)/stat.rpt
	cp $(LIBRELANE_DIR)/runs/${RUN_TAG}/*-openroad-stapostpnr/summary.rpt $(SYNTH_DIR)/stapostpnr_summary.rpt
	cp $(LIBRELANE_DIR)/runs/${RUN_TAG}/*-openroad-stapostpnr/nom_fast_1p32V_m40C/power.rpt $(SYNTH_DIR)/stapostpnr_nom_fast_1p32V_m40C_power.rpt
	cp $(LIBRELANE_DIR)/runs/${RUN_TAG}/*-openroad-stapostpnr/nom_slow_1p08V_125C/power.rpt $(SYNTH_DIR)/stapostpnr_nom_slow_1p08V_125C_power.rpt
	cp $(LIBRELANE_DIR)/runs/${RUN_TAG}/*-openroad-stapostpnr/nom_typ_1p20V_25C/power.rpt $(SYNTH_DIR)/stapostpnr_nom_typ_1p20V_25C_power.rpt

	rm -rf $(SYNTH_DIR)/sdf
	mkdir -p $(SYNTH_DIR)/sdf
	cp $(FLOW_FINAL_DIR)/sdf/nom_fast_1p32V_m40C/$(TOP)__nom_fast_1p32V_m40C.sdf $(SYNTH_DIR)/sdf/$(TOP)__nom_fast_1p32V_m40C.sdf
	cp $(FLOW_FINAL_DIR)/sdf/nom_slow_1p08V_125C/$(TOP)__nom_slow_1p08V_125C.sdf $(SYNTH_DIR)/sdf/$(TOP)__nom_slow_1p08V_125C.sdf
	cp $(FLOW_FINAL_DIR)/sdf/nom_typ_1p20V_25C/$(TOP)__nom_typ_1p20V_25C.sdf $(SYNTH_DIR)/sdf/$(TOP)__nom_typ_1p20V_25C.sdf
.PHONY: copy-synthesis

copy-verification: ## Copy verification reports to verification/
	rm -f $(VERIF_DIR)/verilator-lint.log
	mkdir -p $(VERIF_DIR)/
	cp $(LIBRELANE_DIR)/runs/${RUN_TAG}/*-verilator-lint/verilator-lint.log $(VERIF_DIR)/verilator-lint.log

	rm -f $(VERIF_DIR)/drc.magic.rpt
	mkdir -p $(VERIF_DIR)/
	cp $(LIBRELANE_DIR)/runs/${RUN_TAG}/*-magic-drc/reports/drc.magic.rpt $(VERIF_DIR)/drc.magic.rpt

	rm -f $(VERIF_DIR)/drc.klayout.json
	mkdir -p $(VERIF_DIR)/
	cp $(LIBRELANE_DIR)/runs/${RUN_TAG}/*-klayout-drc/reports/drc.klayout.json $(VERIF_DIR)/drc.klayout.json

	rm -f $(VERIF_DIR)/lvs.netgen.rpt
	mkdir -p $(VERIF_DIR)/
	cp $(LIBRELANE_DIR)/runs/${RUN_TAG}/*-netgen-lvs/reports/lvs.netgen.rpt $(VERIF_DIR)/lvs.netgen.rpt

	rm -f $(VERIF_DIR)/stapostpnr_summary.rpt
	mkdir -p $(VERIF_DIR)/
	cp $(LIBRELANE_DIR)/runs/${RUN_TAG}/*-openroad-stapostpnr/summary.rpt $(VERIF_DIR)/stapostpnr_summary.rpt

	rm -f $(VERIF_DIR)/irdrop.rpt
	mkdir -p $(VERIF_DIR)/
	cp $(LIBRELANE_DIR)/runs/${RUN_TAG}/*-openroad-irdropreport/irdrop.rpt $(VERIF_DIR)/irdrop.rpt
.PHONY: copy-verification

simulate-rtl: ## Run RTL simulation with Verilator
	cd $(MAKEFILE_DIR)/simulation && ./run_verilator.sh --build-rtl --run-rtl ./helloworld.hex
.PHONY: simulate-rtl

simulate-postsynth: ## Run post synthesis simulation with Verilator
	cd $(MAKEFILE_DIR)/simulation && ./run_verilator.sh --build-postsynth --run-postsynth ./helloworld.hex
.PHONY: simulate-postsynth

simulate-postpnr: ## Run post place and route simulation with Verilator
	cd $(MAKEFILE_DIR)/simulation && ./run_verilator.sh --build-postpnr --run-postpnr ./helloworld.hex
.PHONY: simulate-postpnr
