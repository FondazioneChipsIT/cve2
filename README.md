# CV32E20 RISC-V Core

The OpenHW Foundation CV32E20, is
a RISC-V processor core that is targeted for the ultra-low-end of the
32-bit microcontroller application space.

Within the project, the original IP was reorganized according to the EuroCDP
IP directory and release structure. The resulting package was enhanced with a
reproducible physical-design flow, simulation flow, implementation reports and release
deliverables.

The EuroCDP IP documentation can be found in the `ip_doc` folder, while the original documentation from OpenHW resides in the `doc` folder and can also be [read online at ReadTheDocs](https://docs.openhwgroup.org/projects/cve2-user-manual/en/latest/).

## Running the flow

To initialize the repo and run the RTL-to-GDS Librelane flow use the following command:

```
make all
```

The simulation flow covers RTL, post synthesis and post PnR simulations which can be executed with the commands below:

```
make simulate-rtl
make simulate-postsynth
make simulate-postpnr
```

To check the full list of makefile commands run:

```
make help
```
