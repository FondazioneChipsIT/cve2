.DEFAULT_GOAL := help

help: ## Show this help message
	@echo 'Usage: make [target]'
	@echo ''
	@echo 'Available targets:'
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "  %-20s %s\n", $$1, $$2}'
.PHONY: help

all: librelane
.PHONY: all

librelane: ## Run LibreLane flow
	librelane ./Flow/scripts/Librelane/config.yaml --save-views-to Flow/scripts/Librelane/final/
	ln -sf ../Flow/scripts/Librelane/final/def/core_wrap.def PlaceAndRoute/core_wrap.def
	ln -sf ../Flow/scripts/Librelane/final/gds/core_wrap.gds PlaceAndRoute/core_wrap.gds
	ln -sf ../Flow/scripts/Librelane/final/klayout_gds/core_wrap.klayout.gds PlaceAndRoute/core_wrap.klayout.gds
	ln -sf ../Flow/scripts/Librelane/final/lef/core_wrap.lef PlaceAndRoute/core_wrap.lef
	ln -sf ../Flow/scripts/Librelane/final/lib/nom_fast_1p32V_m40C/core_wrap__nom_fast_1p32V_m40C.lib PlaceAndRoute/core_wrap__nom_fast_1p32V_m40C.lib
	ln -sf ../Flow/scripts/Librelane/final/lib/nom_slow_1p08V_125C/core_wrap__nom_slow_1p08V_125C.lib PlaceAndRoute/core_wrap__nom_slow_1p08V_125C.lib
	ln -sf ../Flow/scripts/Librelane/final/lib/nom_typ_1p20V_25C/core_wrap__nom_typ_1p20V_25C.lib PlaceAndRoute/core_wrap__nom_typ_1p20V_25C.lib
	ln -sf ../Flow/scripts/Librelane/final/nl/core_wrap.nl.v PlaceAndRoute/core_wrap.nl.v
	ln -sf ../Flow/scripts/Librelane/final/odb/core_wrap.odb PlaceAndRoute/core_wrap.odb
	ln -sf ../Flow/scripts/Librelane/final/sdc/core_wrap.sdc PlaceAndRoute/core_wrap.sdc
	ln -sf ../Flow/scripts/Librelane/final/sdf/nom_fast_1p32V_m40C/core_wrap__nom_fast_1p32V_m40C.sdf PlaceAndRoute/core_wrap__nom_fast_1p32V_m40C.sdf
	ln -sf ../Flow/scripts/Librelane/final/sdf/nom_slow_1p08V_125C/core_wrap__nom_slow_1p08V_125C.sdf PlaceAndRoute/core_wrap__nom_slow_1p08V_125C.sdf
	ln -sf ../Flow/scripts/Librelane/final/sdf/nom_typ_1p20V_25C/core_wrap__nom_typ_1p20V_25C.sdf PlaceAndRoute/core_wrap__nom_typ_1p20V_25C.sdf
	ln -sf ../Flow/scripts/Librelane/final/spef/nom/core_wrap.nom.spef PlaceAndRoute/core_wrap.nom.spef
	ln -sf ../Flow/scripts/Librelane/final/spice/core_wrap.spice PlaceAndRoute/core_wrap.spice
	ln -sf ../Flow/scripts/Librelane/final/vh/core_wrap.vh PlaceAndRoute/core_wrap.vh
	ln -sf ../Flow/scripts/Librelane/final/nl/core_wrap.nl.v synthesis/core_wrap.nl.v
	ln -sfn "../$(shell ls -1dt ./Flow/scripts/Librelane/runs/*/06-yosys-synthesis/reports | sed 1q)" synthesis/reports

.PHONY: librelane
