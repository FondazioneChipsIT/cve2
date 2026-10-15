## CV32E20 RISC-V Core IP

### Overview and Origin

CV32E20 is a specific configuration of the CVE2 core family and is a
production-quality open source 32-bit RISC-V CPU core written in
SystemVerilog. The CVE2 is based on the lowRISC Ibex core, but
simplified and (re) verified by the OpenHW Foundation. This core is
distributed under the Apache-2.0 with SHL-2.1 license.

The [OpenHW Foundation CV32E20](https://github.com/openhwgroup/cve2), is
a RISC-V processor core that is targeted for the ultra-low-end of the
32-bit microcontroller application space. Likely uses include any
"constrained compute socket" or as the processor element in embedded
SoC subsystems.

Within the project, the original IP was reorganized according to the EuroCDP
IP directory and
release structure. The resulting package was enhanced with a
reproducible physical-design flow, simulation flow, implementation reports and release
deliverables.

The current release targets the IHP 130nm BiCMOS process design kit using the
SG13G2 standard-cell library. In addition to the synthesizable
RTL implementation, the release includes a placed-and-routed hard macro and the associated
logical, physical, timing, and verification views required for
integration into a larger design.

### Functional Architecture

The architecture of CV32E20 is summarized in
Figure [1](#fig:cve2_architecture).

<figure id="fig:cve2_architecture" data-latex-placement="htbp">
<img src="../doc/03_reference/images/blockdiagram.drawio.svg" style="width:95.0%" />
<figcaption>Architecture of CV32E20 from: <a
href="https://docs.openhwgroup.org/projects/cve2-user-manual/en/latest/01_specification/index.html">OpenHW
Documentation</a></figcaption>
</figure>

CV32E20 is a 2-stage pipelined implementation featuring a 32-bit Harvard
memory architecture for independent instruction fetch and data
load/store interfaces. The first pipeline stage is the instruction
fetch, while the second stage is the Instruction Decode and Execute. As
displayed in Figure [1](#fig:cve2_architecture), the IP comprises:

- The CV32E20 processor core with dual 32-bit Harvard memory interfaces

- Instruction fetch bus and data load/store OBI buses

- Support for both RV32I (32 x 32b GPRs) and RV32E (16 x 32b GPRs)

- Support for ISA extensions: C (compressed) and M (multiply & divide)

- Support for basic set of Configuration & Status Registers (CSRs)

- Optional support for the Core-V eXtension Interface (CV-X-IF) \[NOT
  INCLUDED IN THIS RELEASE\]

### Interfaces

The main caracteristics of the core interface are summarized in the table below.

| **Interface** | **Main signals** | **Description** |
|---------------|------------------|-----------------|
| Clock and reset | `clk_i`, `rst_ni` | system clock and active-low reset. |
| Test enable | `test_en_i` | Test input, enables clock and allows test control of reset. |
| Boot address | `boot_addr_i`, `uart_rx_i` | The address of the first program counter after reset. |
| Instruction memory interface | `instr_*` | OBI instruction fetch interface |
| Data memory interface | `data_*` | OBI load-store unit interface |
| Interrupts | `irq_*` | Interrupt inputs |
| Debug interface | `debug_*` | Debug interface compliant with RISC-V Debug Specification |
| Instruction fetch enable | `fetch_enable_i` | Allow the core to fetch instructions. If this bit is set low, the core will pause fetching new instructions. |
| Interrupts | `core_busy_o` | Activity indication for SoC |

### Design and Implementation Flow

The IP was
implemented using an automated RTL-to-GDS flow covering synthesis, physical
implementation, timing analysis, physical verification, and release
packaging. The main stages were as follows:

1.  logic synthesis using Yosys;

2.  initial floorplanning and power-distribution planning;

3.  standard-cell placement and optimization;

4.  clock-tree synthesis;

5.  global and detailed routing;

6.  parasitic extraction;

7.  multi-corner static timing analysis;

8.  design-rule checking, layout-versus-schematic verification, and
    antenna checking;

9.  packaging of logical, timing, physical and verification views.

The implementation environment is summarized below:

- Flow: LibreLane;

- Process design kit: IHP 130nm BiCMOS;

- Standard-cell library: `SG13G2`;

- Clock period constraint: 13 ns;

- Nominal target frequency: 76.9 MHz;

- Execution and testing platform: IHP cloud server.

The implementation results are reproducible only within the recorded
flow, PDK, library,
tool, and constraint configuration. Changes to tool versions, routing
settings, timing corners, or PDK revisions may produce different timing,
power, and physical-verification results.

### Physical Implementation Results

The principal implementation and sign-off results are reported in
the table below.

| **Metric**                                                          |  **Result**
|---------------------------------------------------------------------|--------------------------------
| Macro dimensions |                                                      $950 \times 470~\mu\mathrm{m}$
| Clock constraint |                                                     13 ns
| Setup violations |                                                     0
| Hold violations |                                                      0
| DRC violations |  0
| Antenna violations |                                                   0
| LVS |             Circuits match uniquely

The positive worst-case setup and hold slacks indicate that the
implemented macro meets the specified 13 ns clock constraint for the
analyzed timing corners. No setup or hold violations were reported.

The routed layout also completed the available block-level
physical-verification checks without DRC or antenna violations.
LVS confirmed a
unique match between the extracted layout and the reference circuit.

### Verification Status

The verification and sign-off status of the current release is
summarized in the table below.

| **Verification activity**             | **Status**
| --------------------------------------|----------------
| RTL simulation                        | Passed
| Synthesis checks                      | Passed
| Post-synthesis gate-level simulation  | Passed
| Post-route gate-level simulation      | Passed
| Design-rule checking                  | Passed
| Layout-versus-schematic verification  | Passed
| Multi-corner static timing analysis   | Passed
| Antenna verification                  | Passed
| Clock-domain crossing analysis        | Not applicable
| Logical equivalence checking / EQY    | Not performed
| Silicon validation                    | Not performed


The completed verification activities provide evidence that the
RTL is functional,
synthesizable, and physically implementable under the selected
configuration. Gate-level simulations were completed
for both the post-synthesis and post-route representations.

### Maturity Assessment

The IP is assessed
at **IPRL5-Full
design at layout level**.

The RTL has been
functionally verified, synthesized, placed, clock-routed, and fully
routed. The resulting
hard macro has passed the available block-level static timing, DRC , LVS, antenna, and gate-level
simulation checks. The release
also includes implementation and integration documentation sufficient to
support evaluation and integration activities.

### Known Limitations

The following limitations apply to the current release:

- Formal logical equivalence checking between the
  RTL and the
  synthesized or routed netlists has not been completed.

- No scan insertion, design-for-test implementation, or production test
  strategy is included.

- No silicon fabrication, measurement, or characterization results are
  available.

- The reported results for timing, power and physical-verification apply
  only to the recorded HP 130nm BiCMOS PDK revision, the `SG13G` library, tool
  configuration, operating corners and design constraints.

- The release has been verified at block level and has not yet been
  validated in a complete top-level system integration.

### Conclusion

The IP directory
provides a physically implemented and integration-documented CV32E20
hard macro targeting the IHP 130nm BiCMOS technology. Its
RTL, synthesis,
place-and-route, static timing, DRC, LVS, and antenna results support an
IPRL5 maturity
assessment.
