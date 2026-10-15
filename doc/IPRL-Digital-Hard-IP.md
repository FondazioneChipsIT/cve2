# Digital Hard IP Quality Assessment using IPRL scale

This questionnaire supports self-assessment of an IP block using the IP Readiness
Level (IPRL) scale. It follows EuroCDP D5.3, *Open IP Concept*.

## Assessment guidance

- Complete a copy in the IP repository's `doc/` directory for the assessed release.
- Mark a question `[x]` when it is true and add links to supporting design files,
  documentation, reports, or measurements. Leave other questions unchecked and
  explain missing evidence or non-applicability where relevant.
- **Assessment rule:** the achieved IPRL is the highest level with at least one
  true answer at that level and at every lower level. Unanswered or non-applicable
  questions do not count as true answers.
- **Catalog acceptance:** D5.3 specifies a minimum of IPRL 5 for digital IP and
  requires IP designed for open PDKs.

## Assessment record

- IP name: [name]
- Assessed release / commit: [version / commit]
- Target open PDK / revision: [PDK / revision]
- Assessor / date: [name / YYYY-MM-DD]
- Achieved IPRL: [not assessed]
- Evidence summary and known limitations: [references / notes]

---

## IPRL 1 - Basic principles observed

- [x] Is the IP functionality clearly described?
- [x] Have the potential applications of the IP been identified and described?

## IPRL 2 - Concept formulation

- [x] Is the IP architecture described at the block level?
- [x] Are the IP requirements and specifications clearly described, including I/O descriptions and whether it includes a standard interface?

## IPRL 3 - Experimental proof of concept

- [x] Have the core functionalities of the system been implemented at RTL level?
- [x] Has the RTL model been provided?
- [x] Has a complete behavioral simulation flow been provided?
- [x] Has a testbench been provided?
- [x] Has the basic functionality of the IP been demonstrated?

## IPRL 4 - Component prototype

- [x] Has the RTL been fully developed with all features implemented?
- [x] Has the design been synthesized (e.g. FPGA or ASIC)?
- [x] Has a complete post-synthesis simulation been carried out (e.g. FPGA or ASIC) or a logic equivalence check (LEC) report provided?
- [x] Have preliminary post-synthesis Power, Performance, and Area (PPA) results been provided (e.g. on FPGA or ASIC)?
- [x] Has the IP been able to run preliminary application code (e.g. an accelerator running machine learning code on simulation or FPGA)?

## IPRL 5 - Full design at layout level

- [ ] Has full verification been completed and documented, including 100% code coverage with waivers?
- [x] Has the place-and-route stage been successfully completed and corresponding constraints provided?
- [x] Has the LEC between the RTL and the post-place-and-route design been performed?
- [x] Have final post-layout PPA results been provided?
- [x] Have the post-place-and-route simulations been performed, and are the corresponding testbenches provided?
- [x] Has signoff been completed in the target technology node?

## IPRL 6 - Full design for SoC integration

- [x] Have all IP views been completed?
- [ ] Has full functional verification been completed with documented coverage?
- [x] Has the IP been characterized across process, voltage and temperature (PVT) corners?
- [x] Are there clear instructions on how to use and integrate the IP?

## IPRL 7 - Lab demonstrator prototype

- [ ] Has the silicon prototype (e.g. through a multi-project wafer (MPW)) been demonstrated on an application development board or another platform, and tested in a laboratory environment?
- [ ] Has the application development board been provided and fully documented?
- [ ] Have the key performance metrics at the application level been provided?

## IPRL 8 - In-field demonstrator prototype

- [ ] Has the IP undergone full qualification, including design-for-manufacturing and design-for-testability features such as scan chains, built-in self-tests (BISTs), and related structures?
- [ ] Has the IP passed industry-standard compliance and certification testing?
- [ ] Has this IP been fabricated in final mask production?
- [ ] Has the IP been deployed in an end-use prototype?
- [ ] Has the IP been tested in a pilot production run or customer field trial?

## IPRL 9 - Commercial application

- [ ] Has this IP been used in product production?
- [ ] Has this IP been commercially deployed?
- [ ] Has the product reliability been demonstrated in the field?
- [ ] Are the IP authors providing support for bug fixing or enhancement requests?
- [ ] Does the IP documentation include complete supporting material, including training resources?
