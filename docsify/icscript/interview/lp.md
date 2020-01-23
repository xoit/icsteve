# Low Power

- Lint clean for simulation and synthesis
- Code and functional coverage goals met, including assertions
- Clock and reset domains verified, through static and dynamic verification
- Timing constraints (SDC) verified, including false and multi-cycle paths
- Detection and removal of X-propagation sources
- Stuck-at and at-speed coverage goals met
- Power goals met, including power estimation and reduction
- Power and voltage domain verification
- Power intent (UPF) verification
- Area, timing, and congestion analysis to ensure physical clean RTL

- RTL provides enough detail to detect and fix significant problems in a timely manner along with the appropriate attention from the knowledgeable design engineers, compared to larger amounts of data to sift through and the cursory design knowledge from the implementation engineers post synthesis and layout.
- RTL tools run faster and are less expensive than synthesis and layout tools, which allows the designer, most familiar with the design, to find and fix problems at RTL more quickly than could be done post synthesis or layout.
- Higher quality RTL reduces the risk of expensive iterations from synthesis or layout back to RTL – A restart of synthesis or design layout is quite costly in engineering time and tool runtime.

## Low Power cell

- isolation
- retention
- power switch
- level shift

Problem

My design uses low-power methodology. Earlier, the isolation enable signals were constrained manually to make them transparent for LEC. Does Conformal provide some option or flow to use the power intent file and handle the isolation cells, without the need to constrain them manually?


Solution

You can use the Equivalence Checking flow in Conformal Low Power (CLP-EC) to read the power intent file and do low-power aware logical equivalence checking (LEC-LP).

With this flow, Conformal will understand the low power logic (level-shifter cells, isolation cells, SRPG cells, power-switch cells and power-ground nets) and will handle them accordingly. You do not need to specify any constraint on the isolation enable signals. CLP-EC can be invoked by specifying the -lp (or -lpgxl) option without the -verify option.

Example:

lec -lp -nogui -dofile <clp_ec.do>

CLP-EC can also do virtual insertion of isolation cells in a design where LP cells have not been inserted yet, for example, the RTL design or intermediate synthesis netlist. This is done using the -insert_isolation option, as mentioned in the following sample flows:

Sample flow for CPF power intent

set lowpower option -golden_netlist_style  logical/hybrid/physical
set lowpower option -revised_netlist_style logical/hybrid/physical
read library ...
read design –golden ...
read design –revised ...
read power intent -golden  -cpf <CPF files>
read power intent -revised -cpf <CPF files>
commit power intent -golden -insert_isolation
commit power intent -revised
//pin constraints and flatten model options
set system mode lec
add compare point -all
compare

Sample flow for IEEE-1801 (UPF) power intent

set lowpower option -native_1801
set lowpower option -golden_analysis_style pre_sim/pre_synthesis/post_syn/pre_route/post_route
set lowpower option -revised_analysis_style pre_sim/pre_synthesis/post_syn/pre_route/post_route
read library -liberty my.lib -lp all
read design -golden ...
read design -revised ...
read power intent -1801 <UPF files> -insert_isolation -golden
read power intent -1801 <UPF files> -revised
set system mode lec
add compare points -all
compare

Notes:

The -insert_isolation option is required only for non-LP designs. If your golden design is LP-inserted, you do not need this option.
You do not need commit power intent in the 1801 flow. In this flow, the read power intent command has this functionality built in.
Refer to the Conformal Web Interface for the detailed flow examples.

|Power Management Technique|Definition|
|---|---|
|Clock tree optimization and clock gating |Portions of the clock tree(s) that aren’t being used at any particular time are disabled. w|
|Operand isolation |Reduce power dissipation in datapath blocks controlled by an enable signal;when the datapath element is not active, prevent it from switching.|
|Logic restructuring |Move high switching operations up in the logic cone, and low switching operations back in the logic cone; a gate-level dynamic power optimization technique.|
|Logic resizing (transistor resizing)| Upsizing improves slew times, reducing dynamic current. Downsizing reduces leakage current. To be effective, sizing operations must include accurate switching information.|
|Transition rate buffering| Buffer manipulation reduces dynamic power by minimizing switching times.|
|Pin swapping |By swapping gate pins, switching occurs at gates/pins with lower capacitive loads.|
|Multi-Vth |With the use of multi-threshold libraries, individual logic gates use transistors with low switching thresholds (faster with higher leakage) or high switching thresholds (slower with lower leakage).|
|Multi-supply voltage (MSV or voltage islands)|Selected functional blocks are run at different supply voltages.|
|Dynamic voltage scaling (DVS)|In this subset of DVFS, selected portions of the device are dynamically set to run at different voltages on the fly while the chip is running.|
|Dynamic voltage and frequency scaling (DVFS)| Selected portions of the device are dynamically set to run at different voltages and frequencies on the fly while the chip is running. Used for dynamic power reduction.|
|Adaptive voltage and frequency scaling (AVFS)|In this variation of DVFS, a wider variety of voltages are set dynamically, based on adaptive feedback from a control loop; involves analog circuitry.|
|Power shut-off (PSO) [or power gating]|When not in use, selected functional blocks are individually powered down.|
|Memory splitting| If the software and/or data are persistent in one portion of a memory but not in another, it may be appropriate to split that block of memory into two or more portions. One can then selectively power down those portions that aren’t in use.|
|Substrate biasing (bodybiasing or back-biasing)|Substrate biasing in PMOS biases the body of the transistor to a voltage higher than Vdd; in NMOS, to a voltage lower than Vss.|
