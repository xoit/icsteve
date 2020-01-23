|passcod|stages|description|type|
|---|---|---|---|
|file01|Use the Latest DE release.|Init TO|Latest version of DE release is used. List the directory.|pre"=>0, "basic" => 0|
|file02|Netlist defined in pds.conf is same as latest DE release.|Init TO|Netlists are consistent between the one defined in pds.conf  and the one specified by latest DE release.|pre"=>0, "basic" => 0|
|file03|SDC defined in pds.conf is same as latest DE release.|Init TO|SDC consistency check between pds.conf  and latest DE release. List the file path|pre"=>0, "basic" => 0|
|file10|PNR database is the latest one.|TO|Latest PnR database is used. List the ICC/EDI database file path or directory.|pre"=>0, "basic" => 0|
|file09|PNR implementation directory is correct.|TO|List the PnR implementation directory and the run directory.|pre"=>0, "basic" => 0|
|file08|PNR data is the latest one.|TO|Check PnR  output data, DEF and GDS. List the file location.|pre"=>0, "basic" => 0|
|file07|PNR data is the latest one.|TO|Verify signoff extraction file, SPEF/SBPF. List the file location.|pre"=>0, "basic" => 0|
|file06|PNR data is the latest one.|TO|Check PnR output data, logic and PG netlist. List the file location.|pre"=>0, "basic" => 0|
|file05|Use the latest PNR release.|TO|Latest version of PNR release used. List the directory path.|pre"=>0, "basic" => 0|
|clk10|Map File is defined in checklist.design_info.|CTS|Received clock tree structure map from designer.|pre"=>0, "basic" => 0|
|clk11|Run pre-check or point out the report file in checklist.design_info.|CTS|Please list full path of the clock structure file.|pre"=>0, "basic" => 0|
|file04|No error after vlogCheck.|Init|VlogCheck, unique, and assign checks are performed.|pre"=>0, "basic" => 0|
|tech04|Rule file is same as central one.|Init|Please list full path of antenna and DFM rule file.|pre"=>0, "basic" => 1|
|tech03|Rule file is same as central one.|Init|Please list full path of RC file.|pre"=>0, "basic" => 1|
|tech02|Use the latest version in central location.|Init|The latest version of LEF/FRAM files are used. Did not use different versions of the same file throughout the project.|pre"=>0, "basic" => 0|
|tech01|Use the latest version in central location.|Init|Correct tech files are used.|pre"=>0, "basic" => 0|
|sdc01|No constraints on hier pin.|Init|Did not have sdc constraints on hier pin.|pre"=>0, "basic" => 0|
|tech05|Rule file is same as central one.|Init|Please list full path of stream map file.|pre"=>0, "basic" => 1|
|tech06|No error after library check.|Init|Logical library and physical library are consistent. |pre"=>0, "basic" => 0|
|cell27|Retention flops is used correctly.|Init Place PostCTS TO|Check the retention flops, report their type and corresponding count.|pre"=>0, "basic" => 0|
|cell25|Isolation cell is used correctly.|Init Place PostCTS TO|Provide the Isolation instances count and location.|pre"=>0, "basic" => 0|
|cell26|Spare cell's count is same as initial stage and cell distribute evenly.|Init Place PostCTS TO|Do evenly distributed spare cells. Provide the number of instances.|pre"=>0, "basic" => 0|
|cell24|Special register's count should be used correctly.|Init Place PostCTS TO|Special register's (*sync*) count reported. dont_touch/dont_use attribute listed.|pre"=>0, "basic" => 0|
|cell23|TCD cell cover the reasonable area.|FP Place Route TimingECO TO|The number of TCD cells is reported and they are inserted on-row. No metal exists over TCD for 28nm design.|pre"=>0, "basic" => 0|
|cell28|ESD cell cover the reasonable area.|FP Place Route TimingECO TO|The number of CoreESD cells is reported and they are placed  on-row.|pre"=>0, "basic" => 0|
|pwr19|PG on Hard Macro is reasonable.|FP TO|Check PG quality  Same Net spacing|pre"=>0, "basic" => 1|
|pwr20|PG on Hard Macro is reasonable.|FP TO|Check PG quality  Small height MTOP for block and top|pre"=>0, "basic" => 1|
|pwr12|PG on Hard Macro is reasonable.|FP|Check PG connection on HM.|pre"=>0, "basic" => 1|
|cell33|VDDMC pin should be connected individually.|FP|Get HMs with 2nd PG(VDDMC and VSSM). And check the connection.|pre"=>0, "basic" => 0|
|cell37|Hard Macro should be no overlap and all in the die area.|FP TO|Check if HM has overlap or out of die area.|pre"=>0, "basic" => 0|
|cell36|HM should have same orientation.|FP TO|Check HM/IO orientation.|pre"=>0, "basic" => 0|
|cell04|No hard macro match width/height ratio &gt; 20.|FP|List narrow width/height memories.|pre"=>0, "basic" => 1|
|pwr13|Via type on PG is reasonable.|FP|List the via type for PG stripe.|pre"=>0, "basic" => 1|
|blkg01|Bounds should not be overlap with hard placement blockage.|FP|Bounds did not overlap with hard placement blockage|pre"=>0, "basic" => 0|
|cell35|Channel between HM should be blocked.|FP Place|HM/memory channel blockages are added.|pre"=>0, "basic" => 0|
|cell01|No base DRC for weltap and endcap.|FP|Welltap and endcap are added correctly.|pre"=>0, "basic" => 0|
|cell02|Confirm the review result of routing channel.|FP|Detail signal routing channels between memory and macro are reviewed.|pre"=>0, "basic" => 1|
|pwr17|Voltage area is not disjoint.|FP|Disjoint voltage areas are checked.|pre"=>0, "basic" => 0|
|pwr08|PG pad supply is strong enough and evenly distributed in each pad domain.|FP|There are enough PG pads supply both for IO and core, and they are  evenly distributed in each pad domain.|pre"=>0, "basic" => 0|
|pad02|Pad finger connection is strong enough.|FP|PAD finger connections are strong enough.|pre"=>0, "basic" => 1|
|io05|No term has min area violation.|FP Place TO|Block IO physical pin's min area is greater than the requirement value.|pre"=>0, "basic" => 0|
|io04|All IOs are buffering and max routing length &lt;150.|FP Place TO|IO buffers are inserted. Also max routing length is checked.|pre"=>0, "basic" => 0|
|io03|IO terms are all on routing grid and no overlap.|FP Place TO|Check if IO terminals are on routing grid without overlap.|pre"=>0, "basic" => 0|
|pad01|PG pad location is reviewed by PGA team.|FP|PG PAD location reviewed by PGA team. List the Location and provide the distribution map.|pre"=>0, "basic" => 0|
|pwr09|Analog PG is reviewed by IP owner.|FP|Analog PG is reviewed by IP owner.|pre"=>0, "basic" => 1|
|pwr11||FP|Power switches are added and connected into chain. Power switch control signal set as dont_touch or defined in CPF/UFP for AON buffering.|pre"=>0, "basic" => 0|
|cell22||FP Place CTS PostCTS Route TimingECO TO|Std cell utilization/Core utilization/Area ratio macro to core are checked.|pre"=>0, "basic" => 0|
|cell21||Init FP Place CTS PostCTS Route TimingECO TO|Total instance count is reported.|pre"=>0, "basic" => 0|
|cell20|Design width and height get the data.|FP TO|Design width/height and area is reported.|pre"=>0, "basic" => 0|
|cell29|SVT ratio is large than 50 percent.|Init FP Place CTS PostCTS Route TimingECO TO|Std VT ratio is reported.|pre"=>0, "basic" => 0|
|cell15|No low driving strength cell in design.|Init Place PostCTS TO|List low driving strengh (x0 x1) of *ao* *oa* cells. Those cells should not be used in the design.|pre"=>0, "basic" => 0|
|route09||Place|max_fanout/max_wire_length constraints are set.|pre"=>0, "basic" => 0|
|blkg02||Place|Bounds/guide/region are removed after placement.|pre"=>0, "basic" => 1|
|cell05||Place|Bounds are placed to control the clock generation cells.|pre"=>0, "basic" => 0|
|tim02||Place|There are manually placed special paths.|pre"=>0, "basic" => 0|
|tim03||Place|Weight and critical ranges are set on timing critical group.|pre"=>0, "basic" => 0|
|tim04||Place|Check_timing results are reported.|pre"=>0, "basic" => 0|
|tim05||Place|Timing exception path are reviewed.|pre"=>0, "basic" => 1|
|tim06||Place|ZWL timing is not only clean but also have enough margin left.|pre"=>0, "basic" => 0|
|cell06||Place|Special cells requested by designers are fixed at specified location.|pre"=>0, "basic" => 1|
|cell07||Place|Area recovery feature is enabled.|pre"=>0, "basic" => 1|
|cell08||Place|To preserve routing resources, Std-cell padding/keepout are added for multi-pin cells.|pre"=>0, "basic" => 1|
|cell09||Place|Cells with displacement greater than 20 rows height are verified.|pre"=>0, "basic" => 0|
|cell11||Place|Critical modules get well distributed after coarse placement.|pre"=>0, "basic" => 0|
|cell12||Place|Module distribution corresponds to data flow after coarse placement.|pre"=>0, "basic" => 0|
|route03||Place|The area near MACRO corner is protected by partial blockage to reduce congestion.|pre"=>0, "basic" => 0|
|cell19||Place TO|Placement legalizations are using the correct pnet options.|pre"=>0, "basic" => 1|
|net04||Place PostCTS Route TimingECO|List the dont touch cells.|pre"=>0, "basic" => 0|
|net03||Place PostCTS Route TimingECO|List the dont use cells, especially double height cells.|pre"=>0, "basic" => 0|
|net02||Place PostCTS Route TimingECO|The ideal net is checked except special nets like pad ring, custom routing and etc.|pre"=>0, "basic" => 0|
|cell18|No 1x spacing violation.|Place CTS PostCTS Route TimingECO TO|1x gap spacing is checked.|pre"=>0, "basic" => 0|
|cell10||Place|AON cells are used in HFS.|pre"=>0, "basic" => 1|
|clk01||CTS|Clock generation paths are checked.|pre"=>0, "basic" => 0|
|clk02||CTS|Excluded pins are set on the regs in clock gen or clock_gating control module.|pre"=>0, "basic" => 0|
|clk03||CTS|Scan clock tree is balanced.|pre"=>0, "basic" => 1|
|clk04||CTS|Inter-clock is balanced.|pre"=>0, "basic" => 1|
|clk05||CTS|feedthrough clock latency is minimized.|pre"=>0, "basic" => 0|
|clk06||CTS|Clock feedthrough between power domain is checked.|pre"=>0, "basic" => 0|
|clk07||CTS|Duty cycle does meet target, especially for the high speed clock.|pre"=>0, "basic" => 0|
|clk08||CTS|CTS quality is reasonable based on setup/hold timing.|pre"=>0, "basic" => 0|
|route08||Route TimingECO TO|Check via number on each clock net. High via number may degrade the net resistance.|pre"=>0, "basic" => 0|
|clk12||CTS|pre-existing clock cells are placement grouped.|pre"=>0, "basic" => 0|
|clk14||CTS|If top-down CTS method is used; confirm all sink pins can be traced properly.|pre"=>0, "basic" => 0|
|clk15||CTS|If bottom-up CTS method is used; check if different sub-trees need to be balanced.|pre"=>0, "basic" => 0|
|clk16||CTS|Dont_touch_subtree is specified before building top clock.|pre"=>0, "basic" => 0|
|clk17||CTS|Function clock tree is preserved before scan clock tree insertion.|pre"=>0, "basic" => 0|
|clk18||CTS|After function clock tree is built, case analysis is updated for scan clock propagation.|pre"=>0, "basic" => 0|
|clk19||CTS|Timing on ICG clock_gating is checked.|pre"=>0, "basic" => 0|
|clk20||CTS|Special clock buffers are used for high frequency clocks.|pre"=>0, "basic" => 0|
|clk21||CTS|Floating pins/macro model are honored after CTS is completed.|pre"=>0, "basic" => 0|
|clk22||CTS|Clock skew and latency are checked.|pre"=>0, "basic" => 0|
|cell30||CTS|List clock cells used for CTS, including AON cells.|pre"=>0, "basic" => 0|
|clk09||CTS|UDR buf/iv are included in clock buffer list.|pre"=>0, "basic" => 0|
|cell31||Init Place CTS PostCTS Route TimingECO TO|No non-clock cells are on the Clock Tree. List any pre-exist comb/inv/buf cells inside the clock tree.|pre"=>0, "basic" => 0|
|tim01||Place CTS|Useful skew is used.|pre"=>0, "basic" => 0|
|route02||Place PostCTS|Global routing congestion map is submitted.|pre"=>0, "basic" => 0|
|clk23|Clock is propagated.|PostCTS Route|Clock is propagated.|pre"=>0, "basic" => 0|
|pwr15||PostCTS TimingECO|leakage optimization is performed prior to hold-fixing.|pre"=>0, "basic" => 0|
|sta01||Route TimingECO|SI prevention is enabled during routing.|pre"=>0, "basic" => 0|
|route05||Route TimingECO|max/min routing layer corresponds to the correct tech file.|pre"=>0, "basic" => 0|
|route06||Route TimingECO|Half track route guides are added at boundary.|pre"=>0, "basic" => 0|
|cell34||PostCTS Route TimingECO|Macro Pin are accessable.|pre"=>0, "basic" => 0|
|route04||Route TimingECO|Route detour are checked.|pre"=>0, "basic" => 0|
|route07||CTS Route TimingECO|NDR routing rules / clock routing are checked.|pre"=>0, "basic" => 0|
|route01||FP Place PostCTS Route TimingECO|Routing and buffering are skipped for custom route and pad ring.|pre"=>0, "basic" => 0|
|net05|List the dfm via for each layer and total ratio &gt; 50 percent.|Route TimingECO TO|DFM via ratio is reported.|pre"=>0, "basic" => 0|
|pwr14||FP Place CTS PostCTS Route TimingECO|PG is derived.|pre"=>0, "basic" => 1|
|clk25||Place PostCTS Route TimingECO|Virtual clocks latency report generated.|pre"=>0, "basic" => 0|
|cell13||Place CTS PostCTS Route TimingECO|Cell density map is submitted.|pre"=>0, "basic" => 0|
|cell14||Place PostCTS Route TimingECO|Tristate buffers are placed as close as possible to drivers.|pre"=>0, "basic" => 0|
|pwr16||Route TimingECO TO|2nd PG ndr rule and wire length ratio/fanout guidelines are followed.|pre"=>0, "basic" => 0|
|pwr06||FP|M5 stripes are added in the sections with 2nd PG and for high speed designs.|pre"=>0, "basic" => 0|
|pwr07||FP|AON power network are used in shutdown power domian if UDR cell is planned to be used.|pre"=>0, "basic" => 0|
|pwr18||FP Place CTS PostCTS Route TimingECO TO|CLP result do not have any waived violations.  Mv result is checked in PNR tool.|pre"=>0, "basic" => 0|
|lec03|Get FE team's approval for signoff.|TO|LEC golden netlist is consistent with latest DE release.|pre"=>0, "basic" => 0|
|lec02|Get FE team's approval for signoff.|TO|LEC do not have any waived failing points.|pre"=>0, "basic" => 0|
|lec01|Get FE team's approval for signoff.|TO|No additional mapping file or items used by BE for LEC.|pre"=>0, "basic" => 0|
|sta09||TO|Filler and dcap ratio report analyzed.|pre"=>0, "basic" => 0|
|pwr05|Get PGV team's approval for signoff.|TO|IP spec check is OK and received PGV team's approval.|pre"=>0, "basic" => 0|
|pwr04|Get PGV team's approval for signoff.|TO|All missing vias are checked and received PGV team's approval.|pre"=>0, "basic" => 0|
|pwr03|Get PGV team's approval for signoff.|TO|2nd PG QoR is OK and received PGV team's approval.|pre"=>0, "basic" => 0|
|pwr02|Get PGV team's approval for signoff.|TO|EM is OK and received PGV team's approval.|pre"=>0, "basic" => 0|
|pwr01|Get INT team's approval for signoff.|TO|IR-drop is OK and get PGV team's approval.|pre"=>0, "basic" => 0|
|pv04|Get INT team's approval for signoff.|TO|ERC is clean and received INT team's approval.|pre"=>0, "basic" => 0|
|pv03|Get INT team's approval for signoff.|TO|LVSQ is clean and received INT's team approval.|pre"=>0, "basic" => 0|
|pv02|Get INT team's approval for signoff.|TO|LVSN is clean and got INT team's approval.|pre"=>0, "basic" => 0|
|pv01|Get INT team's approval for signoff.|TO|DRC is clean and got INT team's approval.|pre"=>0, "basic" => 0|
|pv06|Get INT team's approval for signoff.|Route TimingECO TO|ANT is clean and got INT team's approval. ANT rule is loaded and checked in PnR tool.|pre"=>0, "basic" => 0|
|pv05||FP Route TimingECO TO|DRC/LVS are checked by PnR tool. The fix-ability and correlation are verified with calibre. Please list the PV run directory.|pre"=>0, "basic" => 0|
|dft01||TO|Test pattern is regenerated if scan reordered at PnR.|pre"=>0, "basic" => 0|
|sta07||PostCTS Route TimingECO TO|All modes/corners are checked and reviewed. List the ones that are active in PNR.|pre"=>0, "basic" => 1|
|clk26||Place PostCTS Route TimingECO|Clock uncertainty for setup is set correctly.|pre"=>0, "basic" => 1|
|clk27||PostCTS Route TimingECO|No extra clock uncertainty set for hold, compared to the signoff env.|pre"=>0, "basic" => 1|
|clk28||PostCTS Route TimingECO|CRPR is checked.|pre"=>0, "basic" => 0|
|sta08||Place PostCTS TimingECO TO|Input/Output delay values are checked.|pre"=>0, "basic" => 0|
|clk24||Place PostCTS Route TimingECO|clock gating is checked.|pre"=>0, "basic" => 1|
|cell17||PostCTS Route TimingECO TO|Delay cells are used for hold fixing and the derating setting are verified.|pre"=>0, "basic" => 0|
|sta03||TO|Infinite timing window is set on inputs.|pre"=>0, "basic" => 0|
|sta06||PostCTS Route TimingECO TO|Hold (WNS/TNS/NVP) (except IO groups) timing violations are reported. Please attach the .sum file.|pre"=>0, "basic" => 1|
|sta05||Place PostCTS Route TimingECO TO|Setup (WNS/TNS/NVP) (except IO groups) timing  violations are reported, including any timing jump. Please attach the .sum file.|pre"=>0, "basic" => 1|
|sta04||TO|Input transition values are setted both for max and min, both for setup and hold check.|pre"=>0, "basic" => 0|
|sta02||TO|Transition violations, max slack, and violation count are reported.|pre"=>0, "basic" => 0|
|clk29||CTS PostCTS Route TimingECO TO|Clock transition and Clock net fanout are checked.|pre"=>0, "basic" => 0|
|rc05|RC annotated when do STA.|TimingECO TO|RC files are annotated at signoff STA env.|pre"=>0, "basic" => 0|
|tech07||Init|Scale factor is added for ICC . QRC does include a internal scale factor for EDI.|pre"=>0, "basic" => 0|
|rc04|StarRC version is same as version defined in checklist.proj_info.|TimingECO TO|The correct StarRC version is used.|pre"=>0, "basic" => 0|
|rc03|XT cmd file exists.|TimingECO TO|XT cmd file of any corner is reported.|pre"=>0, "basic" => 0|
|rc02|XT extract mode is 400.|TimingECO TO|XT extract mode is set to 400.|pre"=>0, "basic" => 0|
|rc01|XT extract scale is 0.9.|TimingECO TO|XT extract scale is set to 0.9.|pre"=>0, "basic" => 0|
|cell16||PostCTS Route TimingECO TO|Tie cells are inserted correctly.|pre"=>0, "basic" => 0|
|net01||Place|Analog and digital nets are splitted by guide buffer.|pre"=>0, "basic" => 0|
|cell32||Init|IP pin attribute (signal/PG) is consistent with net attribute.|pre"=>0, "basic" => 0|
|io01||FP TO|Top owner inserted IO buffers for analog IP with digital PHY.|pre"=>0, "basic" => 0|
|cell38||Place Route TimingECO TO|IP's analog/digital power is skipped from being tied off.|pre"=>0, "basic" => 0|