
t
Command: %s
53*	vivadotcl2C
/link_design -top led_top -part xc7a100tfgg676-22default:defaultZ4-113h px? 
g
#Design is defaulting to srcset: %s
437*	planAhead2
	sources_12default:defaultZ12-437h px? 
j
&Design is defaulting to constrset: %s
434*	planAhead2
	constrs_12default:defaultZ12-434h px? 
?
-Reading design checkpoint '%s' for cell '%s'
275*project2q
]c:/Users/chmun/Programming/Artix7/DDR_UART/DDR_UART.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.dcp2default:default2 
CLK_400_INST2default:defaultZ1-454h px? 
?
-Reading design checkpoint '%s' for cell '%s'
275*project2u
ac:/Users/chmun/Programming/Artix7/DDR_UART/DDR_UART.srcs/sources_1/ip/clk_wiz_72m/clk_wiz_72m.dcp2default:default2
CLK_72_INST2default:defaultZ1-454h px? 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
132default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
x
Netlist was created with %s %s291*project2
Vivado2default:default2
2018.32default:defaultZ1-479h px? 
W
Loading part %s157*device2$
xc7a100tfgg676-22default:defaultZ21-403h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
?
LRemoving redundant IBUF, %s, from the path connected to top-level port: %s 
35*opt22
CLK_400_INST/inst/clkin1_ibufg2default:default2
sys_clk2default:defaultZ31-35h px? 
?
LRemoving redundant IBUF, %s, from the path connected to top-level port: %s 
35*opt21
CLK_72_INST/inst/clkin1_ibufg2default:default2
sys_clk2default:defaultZ31-35h px? 
?
?Could not create '%s' constraint because net '%s' is not directly connected to top level port. Synthesis is ignored for %s but preserved for implementation.
528*constraints2 
IBUF_LOW_PWR2default:default2*
CLK_400_INST/clk_in12default:default2 
IBUF_LOW_PWR2default:default8Z18-550h px? 
?
?Could not create '%s' constraint because net '%s' is not directly connected to top level port. Synthesis is ignored for %s but preserved for implementation.
528*constraints2 
IBUF_LOW_PWR2default:default2)
CLK_72_INST/clk_in12default:default2 
IBUF_LOW_PWR2default:default8Z18-550h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2y
cc:/Users/chmun/Programming/Artix7/DDR_UART/DDR_UART.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_board.xdc2default:default2'
CLK_400_INST/inst	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2y
cc:/Users/chmun/Programming/Artix7/DDR_UART/DDR_UART.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_board.xdc2default:default2'
CLK_400_INST/inst	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2s
]c:/Users/chmun/Programming/Artix7/DDR_UART/DDR_UART.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc2default:default2'
CLK_400_INST/inst	2default:default8Z20-848h px? 
?
%Done setting XDC timing constraints.
35*timing2s
]c:/Users/chmun/Programming/Artix7/DDR_UART/DDR_UART.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc2default:default2
572default:default8@Z38-35h px? 
?
Deriving generated clocks
2*timing2s
]c:/Users/chmun/Programming/Artix7/DDR_UART/DDR_UART.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc2default:default2
572default:default8@Z38-2h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2 
get_clocks: 2default:default2
00:00:082default:default2
00:00:092default:default2
1217.7812default:default2
558.3362default:defaultZ17-268h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2s
]c:/Users/chmun/Programming/Artix7/DDR_UART/DDR_UART.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc2default:default2'
CLK_400_INST/inst	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2}
gc:/Users/chmun/Programming/Artix7/DDR_UART/DDR_UART.srcs/sources_1/ip/clk_wiz_72m/clk_wiz_72m_board.xdc2default:default2&
CLK_72_INST/inst	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2}
gc:/Users/chmun/Programming/Artix7/DDR_UART/DDR_UART.srcs/sources_1/ip/clk_wiz_72m/clk_wiz_72m_board.xdc2default:default2&
CLK_72_INST/inst	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2w
ac:/Users/chmun/Programming/Artix7/DDR_UART/DDR_UART.srcs/sources_1/ip/clk_wiz_72m/clk_wiz_72m.xdc2default:default2&
CLK_72_INST/inst	2default:default8Z20-848h px? 
?
Deriving generated clocks
2*timing2w
ac:/Users/chmun/Programming/Artix7/DDR_UART/DDR_UART.srcs/sources_1/ip/clk_wiz_72m/clk_wiz_72m.xdc2default:default2
572default:default8@Z38-2h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2w
ac:/Users/chmun/Programming/Artix7/DDR_UART/DDR_UART.srcs/sources_1/ip/clk_wiz_72m/clk_wiz_72m.xdc2default:default2&
CLK_72_INST/inst	2default:default8Z20-847h px? 
?
Parsing XDC File [%s]
179*designutils2e
OC:/Users/chmun/Programming/Artix7/DDR_UART/DDR_UART.srcs/constrs_1/new/LEDs.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2e
OC:/Users/chmun/Programming/Artix7/DDR_UART/DDR_UART.srcs/constrs_1/new/LEDs.xdc2default:default8Z20-178h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1217.7812default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
122default:default2
42default:default2
02default:default2
02default:defaultZ4-41h px? 
]
%s completed successfully
29*	vivadotcl2
link_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2!
link_design: 2default:default2
00:00:132default:default2
00:00:152default:default2
1217.7812default:default2
906.8982default:defaultZ17-268h px? 
?
4The following parameters have non-default value.
%s
395*common24
 tcl.collectionResultDisplayLimit2default:defaultZ17-600h px? 


End Record