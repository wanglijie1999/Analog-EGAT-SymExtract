** Generated for: hspiceD
** Generated on: Mar  9 09:39:04 2023
** Design library name: DDA_22Train
** Design cell name: DDA_2021_LAY
** Design view name: schematic



** Library name: DDA_22Train
** Cell name: DDA_2021_LAY
** View name: schematic
.subckt 02DDALAY vss v0 vdd i _net0 _net1 _net2 _net3
xm27 net017 net017 net39 vss nch_5_mac l=1e-6 w=3e-6 ad=1.44e-12 as=1.44e-12 pd=6.96e-6 ps=6.96e-6 nrd=90e-3 nrs=90e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=4
xm24 vss vss vss vss nch_5_mac l=1e-6 w=3e-6 ad=1.44e-12 as=1.44e-12 pd=6.96e-6 ps=6.96e-6 nrd=90e-3 nrs=90e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=21
xm4 net39 net39 vss vss nch_5_mac l=1e-6 w=3e-6 ad=1.44e-12 as=1.44e-12 pd=6.96e-6 ps=6.96e-6 nrd=90e-3 nrs=90e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm3 net28 net39 vss vss nch_5_mac l=1e-6 w=3e-6 ad=1.44e-12 as=1.44e-12 pd=6.96e-6 ps=6.96e-6 nrd=90e-3 nrs=90e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm2 net31 net39 vss vss nch_5_mac l=1e-6 w=3e-6 ad=1.44e-12 as=1.44e-12 pd=6.96e-6 ps=6.96e-6 nrd=90e-3 nrs=90e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm1 net37 net017 net31 vss nch_5_mac l=1e-6 w=3e-6 ad=1.44e-12 as=1.44e-12 pd=6.96e-6 ps=6.96e-6 nrd=90e-3 nrs=90e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=4
xm0 v0 net017 net28 vss nch_5_mac l=1e-6 w=3e-6 ad=1.44e-12 as=1.44e-12 pd=6.96e-6 ps=6.96e-6 nrd=90e-3 nrs=90e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=4
xm25 vdd vdd vdd vdd pch_5_mac l=1e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=8
xm23 net024 net024 net024 net024 pch_5_mac l=1e-6 w=8e-6 ad=3.84e-12 as=3.84e-12 pd=16.96e-6 ps=16.96e-6 nrd=33.75e-3 nrs=33.75e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=4
xm22 net26 net26 net26 net26 pch_5_mac l=1e-6 w=8e-6 ad=3.84e-12 as=3.84e-12 pd=16.96e-6 ps=16.96e-6 nrd=33.75e-3 nrs=33.75e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=4
xm21 net37 net37 net38 vdd pch_5_mac l=1e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=4
xm20 v0 net37 net52 vdd pch_5_mac l=1e-6 w=2e-6 ad=1.44e-12 as=1.44e-12 pd=6.96e-6 ps=6.96e-6 nrd=90e-3 nrs=90e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=4
xm19 net52 net38 vdd vdd pch_5_mac l=1e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=4
xm18 net38 net38 vdd vdd pch_5_mac l=1e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=4
xm17 net56 net011 vdd vdd pch_5_mac l=1e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm16 net024 i net56 vdd pch_5_mac l=1e-6 w=2e-6 ad=480e-15 as=480e-15 pd=2.96e-6 ps=2.96e-6 nrd=270e-3 nrs=270e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm15 net31 _net2 net024 net024 pch_5_mac l=1e-6 w=24e-6 ad=8.16e-12 as=8.16e-12 pd=34.04e-6 ps=34.04e-6 nrd=11.25e-3 nrs=11.25e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=3 multi=2
xm14 net28 _net0 net024 net024 pch_5_mac l=1e-6 w=24e-6 ad=8.16e-12 as=8.16e-12 pd=34.04e-6 ps=34.04e-6 nrd=11.25e-3 nrs=11.25e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=3 multi=2
xm13 net31 _net3 net26 net26 pch_5_mac l=1e-6 w=24e-6 ad=8.16e-12 as=8.16e-12 pd=34.04e-6 ps=34.04e-6 nrd=11.25e-3 nrs=11.25e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=3 multi=2
xm12 net28 _net1 net26 net26 pch_5_mac l=1e-6 w=24e-6 ad=3.84e-12 as=3.84e-12 pd=16.96e-6 ps=16.96e-6 nrd=33.75e-3 nrs=33.75e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=3 multi=2
xm11 net26 i net55 vdd pch_5_mac l=1e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm10 net55 net011 vdd vdd pch_5_mac l=1e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm9 net017 i net54 vdd pch_5_mac l=1e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm8 net54 net011 vdd vdd pch_5_mac l=1e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm7 i i net011 vdd pch_5_mac l=1e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm6 net011 net011 vdd vdd pch_5_mac l=1e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
.ENDS
