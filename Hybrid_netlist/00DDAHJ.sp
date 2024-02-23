** Generated for: hspiceD
** Generated on: Mar  7 20:35:12 2023
** Design library name: DDA_22Train
** Design cell name: DDA_2021_HJ
** Design view name: schematic



** Library name: DDA_22Train
** Cell name: DDA_2021_HJ
** View name: schematic
.subckt 00DDAHJ vss vout vdd ibias _net0 _net1 _net2 _net3
xm31 vss vss vss vss nch_5_mac l=2e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=22
xm26 net030 net3 vss vss nch_5_mac l=2e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=12
xm25 net027 net3 vss vss nch_5_mac l=2e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=12
xm24 vout vb net027 vss nch_5_mac l=2e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=6
xm23 net037 vb net030 vss nch_5_mac l=2e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=6
xm7 net15 net15 vss vss nch_5_mac l=2e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm6 vb vb net15 vss nch_5_mac l=2e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm5 net3 net3 vss vss nch_5_mac l=2e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm2 net32 net3 vss vss nch_5_mac l=2e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm1 net18 ibias net32 vss nch_5_mac l=2e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm4 ibias ibias net3 vss nch_5_mac l=2e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm29 vdd vdd vdd vdd pch_5_mac l=1e-6 w=3e-6 ad=1.44e-12 as=1.44e-12 pd=6.96e-6 ps=6.96e-6 nrd=90e-3 nrs=90e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=4
xm28 net34 net34 net34 net34 pch_5_mac l=2e-6 w=10e-6 ad=4.8e-12 as=4.8e-12 pd=20.96e-6 ps=20.96e-6 nrd=27e-3 nrs=27e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=4
xm27 net37 net37 net37 net37 pch_5_mac l=2e-6 w=10e-6 ad=4.8e-12 as=4.8e-12 pd=20.96e-6 ps=20.96e-6 nrd=27e-3 nrs=27e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=4
xm22 net038 net038 vdd vdd pch_5_mac l=1e-6 w=3e-6 ad=1.44e-12 as=1.44e-12 pd=6.96e-6 ps=6.96e-6 nrd=90e-3 nrs=90e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=4
xm21 net060 net038 vdd vdd pch_5_mac l=1e-6 w=3e-6 ad=1.44e-12 as=1.44e-12 pd=6.96e-6 ps=6.96e-6 nrd=90e-3 nrs=90e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=4
xm20 vout net037 net060 vdd pch_5_mac l=1e-6 w=3e-6 ad=1.44e-12 as=1.44e-12 pd=6.96e-6 ps=6.96e-6 nrd=90e-3 nrs=90e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=4
xm19 net037 net037 net038 vdd pch_5_mac l=1e-6 w=3e-6 ad=1.44e-12 as=1.44e-12 pd=6.96e-6 ps=6.96e-6 nrd=90e-3 nrs=90e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=4
xm18 net030 _net1 net34 net34 pch_5_mac l=2e-6 w=10e-6 ad=4.8e-12 as=4.8e-12 pd=20.96e-6 ps=20.96e-6 nrd=27e-3 nrs=27e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=4
xm17 net027 _net2 net34 net34 pch_5_mac l=2e-6 w=10e-6 ad=4.8e-12 as=4.8e-12 pd=20.96e-6 ps=20.96e-6 nrd=27e-3 nrs=27e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=4
xm16 net030 _net0 net37 net37 pch_5_mac l=2e-6 w=10e-6 ad=4.8e-12 as=4.8e-12 pd=20.96e-6 ps=20.96e-6 nrd=27e-3 nrs=27e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=4
xm15 net027 _net3 net37 net37 pch_5_mac l=2e-6 w=10e-6 ad=4.8e-12 as=4.8e-12 pd=20.96e-6 ps=20.96e-6 nrd=27e-3 nrs=27e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=4
xm14 net29 net35 vdd vdd pch_5_mac l=1e-6 w=3e-6 ad=1.44e-12 as=1.44e-12 pd=6.96e-6 ps=6.96e-6 nrd=90e-3 nrs=90e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=5
xm13 net34 net18 net29 vdd pch_5_mac l=1e-6 w=3e-6 ad=1.44e-12 as=1.44e-12 pd=6.96e-6 ps=6.96e-6 nrd=90e-3 nrs=90e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=5
xm12 net30 net35 vdd vdd pch_5_mac l=1e-6 w=3e-6 ad=1.44e-12 as=1.44e-12 pd=6.96e-6 ps=6.96e-6 nrd=90e-3 nrs=90e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=5
xm11 net37 net18 net30 vdd pch_5_mac l=1e-6 w=3e-6 ad=1.44e-12 as=1.44e-12 pd=6.96e-6 ps=6.96e-6 nrd=90e-3 nrs=90e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=5
xm10 net35 net35 vdd vdd pch_5_mac l=1e-6 w=3e-6 ad=1.44e-12 as=1.44e-12 pd=6.96e-6 ps=6.96e-6 nrd=90e-3 nrs=90e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm8 net31 net35 vdd vdd pch_5_mac l=1e-6 w=3e-6 ad=1.44e-12 as=1.44e-12 pd=6.96e-6 ps=6.96e-6 nrd=90e-3 nrs=90e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm3 vb net18 net31 vdd pch_5_mac l=1e-6 w=3e-6 ad=1.44e-12 as=1.44e-12 pd=6.96e-6 ps=6.96e-6 nrd=90e-3 nrs=90e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm9 net18 net18 net35 vdd pch_5_mac l=1e-6 w=3e-6 ad=1.44e-12 as=1.44e-12 pd=6.96e-6 ps=6.96e-6 nrd=90e-3 nrs=90e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
.ENDS
