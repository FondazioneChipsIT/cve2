MAKEFILE_DIR := $(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

RUN_TAG = $(shell ls -1 $(LIBRELANE_DIR)/runs 2>/dev/null | tail -n 1)

TOP = CV32E20

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

all: ## Run Librelane flow and package the whole macro
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
	$(MAKE) $(LIBRELANE_DIR)/ihp13/pdk/.patched
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
	rm -f $(PNR_DIR)/gds/$(TOP).gds.gz
	mkdir -p $(PNR_DIR)/gds
	cp $(FLOW_FINAL_DIR)/gds/$(TOP).gds $(PNR_DIR)/gds/$(TOP).gds
	gzip $(PNR_DIR)/gds/$(TOP).gds

	rm -f $(PNR_DIR)/netlist/$(TOP).nl.v
	mkdir -p $(PNR_DIR)/netlist
	cp $(FLOW_FINAL_DIR)/nl/$(TOP).nl.v $(PNR_DIR)/netlist/$(TOP).nl.v

	rm -f $(PNR_DIR)/lef/$(TOP).lef
	mkdir -p $(PNR_DIR)/lef
	cp $(FLOW_FINAL_DIR)/lef/$(TOP).lef $(PNR_DIR)/lef/$(TOP).lef

	rm -f $(PNR_DIR)/def/$(TOP).def
	mkdir -p $(PNR_DIR)/def
	cp $(FLOW_FINAL_DIR)/def/$(TOP).def $(PNR_DIR)/def/$(TOP).def

	rm -rf $(PNR_DIR)/timing/sdf/$(TOP)* $(PNR_DIR)/timing/lib/$(TOP)*
	mkdir -p $(PNR_DIR)/timing/sdf $(PNR_DIR)/timing/lib
	cp $(FLOW_FINAL_DIR)/sdf/nom_fast_1p32V_m40C/$(TOP)__nom_fast_1p32V_m40C.sdf $(PNR_DIR)/timing/sdf/$(TOP)__nom_fast_1p32V_m40C.sdf
	cp $(FLOW_FINAL_DIR)/sdf/nom_slow_1p08V_125C/$(TOP)__nom_slow_1p08V_125C.sdf $(PNR_DIR)/timing/sdf/$(TOP)__nom_slow_1p08V_125C.sdf
	cp $(FLOW_FINAL_DIR)/sdf/nom_typ_1p20V_25C/$(TOP)__nom_typ_1p20V_25C.sdf $(PNR_DIR)/timing/sdf/$(TOP)__nom_typ_1p20V_25C.sdf
	cp $(FLOW_FINAL_DIR)/lib/nom_fast_1p32V_m40C/$(TOP)__nom_fast_1p32V_m40C.lib $(PNR_DIR)/timing/lib/$(TOP)__nom_fast_1p32V_m40C.lib
	cp $(FLOW_FINAL_DIR)/lib/nom_slow_1p08V_125C/$(TOP)__nom_slow_1p08V_125C.lib $(PNR_DIR)/timing/lib/$(TOP)__nom_slow_1p08V_125C.lib
	cp $(FLOW_FINAL_DIR)/lib/nom_typ_1p20V_25C/$(TOP)__nom_typ_1p20V_25C.lib $(PNR_DIR)/timing/lib/$(TOP)__nom_typ_1p20V_25C.lib

	rm -rf $(PNR_DIR)/parasitics/spef/$(TOP).nom.spef
	mkdir -p $(PNR_DIR)/parasitics/spef
	cp $(FLOW_FINAL_DIR)/spef/nom/$(TOP).nom.spef $(PNR_DIR)/parasitics/spef/$(TOP).nom.spef
.PHONY: copy-pnr

copy-synthesis: ## Copy netlists, reports and SDFs to synthesis/
	rm -rf $(SYNTH_DIR)/netlist/$(TOP).spice $(SYNTH_DIR)/netlist/$(TOP).nl.v
	mkdir -p $(SYNTH_DIR)/netlist
	cp $(FLOW_FINAL_DIR)/spice/$(TOP).spice $(SYNTH_DIR)/netlist/$(TOP).spice
	cp $(LIBRELANE_DIR)/runs/${RUN_TAG}/*-yosys-synthesis/$(TOP).nl.v $(SYNTH_DIR)/netlist/$(TOP).nl.v

	rm -rf $(SYNTH_DIR)/reports/sta*
	mkdir -p $(SYNTH_DIR)/reports
	cp $(LIBRELANE_DIR)/runs/${RUN_TAG}/*-yosys-synthesis/reports/stat.rpt $(SYNTH_DIR)/reports/stat.rpt
	cp $(LIBRELANE_DIR)/runs/${RUN_TAG}/*-openroad-stapostpnr/summary.rpt $(SYNTH_DIR)/reports/stapostpnr_summary.rpt
	cp $(LIBRELANE_DIR)/runs/${RUN_TAG}/*-openroad-stapostpnr/nom_fast_1p32V_m40C/power.rpt $(SYNTH_DIR)/reports/stapostpnr_nom_fast_1p32V_m40C_power.rpt
	cp $(LIBRELANE_DIR)/runs/${RUN_TAG}/*-openroad-stapostpnr/nom_slow_1p08V_125C/power.rpt $(SYNTH_DIR)/reports/stapostpnr_nom_slow_1p08V_125C_power.rpt
	cp $(LIBRELANE_DIR)/runs/${RUN_TAG}/*-openroad-stapostpnr/nom_typ_1p20V_25C/power.rpt $(SYNTH_DIR)/reports/stapostpnr_nom_typ_1p20V_25C_power.rpt

	rm -rf $(SYNTH_DIR)/sdf/$(TOP)*
	mkdir -p $(SYNTH_DIR)/sdf
	cp $(FLOW_FINAL_DIR)/sdf/nom_fast_1p32V_m40C/$(TOP)__nom_fast_1p32V_m40C.sdf $(SYNTH_DIR)/sdf/$(TOP)__nom_fast_1p32V_m40C.sdf
	cp $(FLOW_FINAL_DIR)/sdf/nom_slow_1p08V_125C/$(TOP)__nom_slow_1p08V_125C.sdf $(SYNTH_DIR)/sdf/$(TOP)__nom_slow_1p08V_125C.sdf
	cp $(FLOW_FINAL_DIR)/sdf/nom_typ_1p20V_25C/$(TOP)__nom_typ_1p20V_25C.sdf $(SYNTH_DIR)/sdf/$(TOP)__nom_typ_1p20V_25C.sdf
.PHONY: copy-synthesis

copy-verification: ## Copy verification reports to verification/
	rm -f $(VERIF_DIR)/lint/verilator-lint.log
	mkdir -p $(VERIF_DIR)/lint
	cp $(LIBRELANE_DIR)/runs/${RUN_TAG}/*-verilator-lint/verilator-lint.log $(VERIF_DIR)/lint/verilator-lint.log

	rm -f $(VERIF_DIR)/drc/drc.magic.rpt $(VERIF_DIR)/drc/drc.klayout.json
	mkdir -p $(VERIF_DIR)/drc
	cp $(LIBRELANE_DIR)/runs/${RUN_TAG}/*-magic-drc/reports/drc.magic.rpt $(VERIF_DIR)/drc/drc.magic.rpt
	cp $(LIBRELANE_DIR)/runs/${RUN_TAG}/*-klayout-drc/reports/drc.klayout.json $(VERIF_DIR)/drc/drc.klayout.json

	rm -f $(VERIF_DIR)/lvs/lvs.netgen.rpt
	mkdir -p $(VERIF_DIR)/lvs
	cp $(LIBRELANE_DIR)/runs/${RUN_TAG}/*-netgen-lvs/reports/lvs.netgen.rpt $(VERIF_DIR)/lvs/lvs.netgen.rpt

	rm -f $(VERIF_DIR)/sta/stapostpnr_summary.rpt
	mkdir -p $(VERIF_DIR)/sta
	cp $(LIBRELANE_DIR)/runs/${RUN_TAG}/*-openroad-stapostpnr/summary.rpt $(VERIF_DIR)/sta/stapostpnr_summary.rpt
.PHONY: copy-verification

simulate-rtl: ## Run RTL simulation with Verilator
	cd $(MAKEFILE_DIR)/testbench && ./run_verilator.sh --build-rtl --run-rtl ./helloworld.hex
.PHONY: simulate-rtl

simulate-postsynth: ## Run post synthesis simulation with Verilator
	cd $(MAKEFILE_DIR)/testbench && ./run_verilator.sh --build-postsynth --run-postsynth ./helloworld.hex
.PHONY: simulate-postsynth

simulate-postpnr: ## Run post place and route simulation with Verilator
	cd $(MAKEFILE_DIR)/testbench && ./run_verilator.sh --build-postpnr --run-postpnr ./helloworld.hex
.PHONY: simulate-postpnr

$(LIBRELANE_DIR)/ihp13/pdk/.patched: $(MAKEFILE_DIR)/Flow/scripts/Librelane/ihp13/verilator_stdcell.patch
	cd $(LIBRELANE_DIR)/ihp13/pdk && git apply $<
	touch $@

