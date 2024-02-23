** Generated for: hspiceD
** Generated on: Mar  9 10:03:44 2023
** Design library name: DDA_22Train
** Design cell name: DDA_2021_XZY
** Design view name: schematic



** Library name: DDA_22Train
** Cell name: DDA_2021_XZY
** View name: schematic

.subckt 10DDAXZY vss out vdd ibias _net0 _net1 _net2 _net3
xm29 net091 vbn1 net0101 vss nch_5_mac l=1e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm27 out vbn1 net081 vss nch_5_mac l=1e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm42 vss vss vss vss nch_5_mac l=2e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm28 net081 net089 vss vss nch_5_mac l=2e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=10
xm30 net0101 net089 vss vss nch_5_mac l=2e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=10
xm16 vbp2 ibias net113 vss nch_5_mac l=2e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm9 ibias ibias net089 vss nch_5_mac l=2e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm18 vbn1 vbn1 net110 vss nch_5_mac l=1e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm11 net089 net089 vss vss nch_5_mac l=2e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm19 net110 net110 vss vss nch_5_mac l=1e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm17 net113 net089 vss vss nch_5_mac l=2e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm37 vss vss vss vss nch_5_mac l=2e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm20 net077 vbp1 vdd vdd pch_5_mac l=2e-6 w=8e-6 ad=3.84e-12 as=3.84e-12 pd=16.96e-6 ps=16.96e-6 nrd=33.75e-3 nrs=33.75e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=5
xm21 net034 vbp2 net077 vdd pch_5_mac l=2e-6 w=8e-6 ad=3.84e-12 as=3.84e-12 pd=16.96e-6 ps=16.96e-6 nrd=33.75e-3 nrs=33.75e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=5
xm26 net0101 _net3 net034 net034 pch_5_mac l=1e-6 w=10e-6 ad=5.4e-12 as=9.6e-12 pd=21.08e-6 ps=41.92e-6 nrd=13.5e-3 nrs=13.5e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=2 multi=2
xm25 net081 _net2 net034 net034 pch_5_mac l=1e-6 w=10e-6 ad=2.7e-12 as=4.8e-12 pd=11.08e-6 ps=21.92e-6 nrd=27e-3 nrs=27e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=2 multi=4
xm38 net034 net034 net034 net034 pch_5_mac l=2e-6 w=10e-6 ad=4.8e-12 as=4.8e-12 pd=20.96e-6 ps=20.96e-6 nrd=27e-3 nrs=27e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm41 vdd vdd vdd vdd pch_5_mac l=1e-6 w=8e-6 ad=3.84e-12 as=3.84e-12 pd=16.96e-6 ps=16.96e-6 nrd=33.75e-3 nrs=33.75e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm40 vdd vdd vdd vdd pch_5_mac l=1e-6 w=8e-6 ad=3.84e-12 as=3.84e-12 pd=16.96e-6 ps=16.96e-6 nrd=33.75e-3 nrs=33.75e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm34 net092 net092 vdd vdd pch_5_mac l=1e-6 w=8e-6 ad=3.84e-12 as=3.84e-12 pd=16.96e-6 ps=16.96e-6 nrd=33.75e-3 nrs=33.75e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm32 net0102 net092 vdd vdd pch_5_mac l=1e-6 w=8e-6 ad=3.84e-12 as=3.84e-12 pd=16.96e-6 ps=16.96e-6 nrd=33.75e-3 nrs=33.75e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm23 net0103 vbp1 vdd vdd pch_5_mac l=2e-6 w=8e-6 ad=3.84e-12 as=3.84e-12 pd=16.96e-6 ps=16.96e-6 nrd=33.75e-3 nrs=33.75e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=5
xm22 net083 vbp2 net0103 vdd pch_5_mac l=2e-6 w=8e-6 ad=3.84e-12 as=3.84e-12 pd=16.96e-6 ps=16.96e-6 nrd=33.75e-3 nrs=33.75e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=5
xm35 net091 net091 net092 vdd pch_5_mac l=1e-6 w=8e-6 ad=3.84e-12 as=3.84e-12 pd=16.96e-6 ps=16.96e-6 nrd=33.75e-3 nrs=33.75e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm33 out net091 net0102 vdd pch_5_mac l=1e-6 w=8e-6 ad=3.84e-12 as=3.84e-12 pd=16.96e-6 ps=16.96e-6 nrd=33.75e-3 nrs=33.75e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm24 net081 _net1 net083 net083 pch_5_mac l=1e-6 w=10e-6 ad=5.4e-12 as=9.6e-12 pd=21.08e-6 ps=41.92e-6 nrd=13.5e-3 nrs=13.5e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=2 multi=2
xm31 net0101 _net0 net083 net083 pch_5_mac l=1e-6 w=10e-6 ad=2.7e-12 as=4.8e-12 pd=11.08e-6 ps=21.92e-6 nrd=27e-3 nrs=27e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=2 multi=4
xm39 net083 net083 net083 net083 pch_5_mac l=2e-6 w=10e-6 ad=4.8e-12 as=4.8e-12 pd=20.96e-6 ps=20.96e-6 nrd=27e-3 nrs=27e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm13 net112 vbp1 vdd vdd pch_5_mac l=2e-6 w=8e-6 ad=3.84e-12 as=3.84e-12 pd=16.96e-6 ps=16.96e-6 nrd=33.75e-3 nrs=33.75e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm36 vdd vdd vdd vdd pch_5_mac l=2e-6 w=8e-6 ad=3.84e-12 as=3.84e-12 pd=16.96e-6 ps=16.96e-6 nrd=33.75e-3 nrs=33.75e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm3 vbp1 vbp1 vdd vdd pch_5_mac l=2e-6 w=8e-6 ad=3.84e-12 as=3.84e-12 pd=16.96e-6 ps=16.96e-6 nrd=33.75e-3 nrs=33.75e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm4 vbn1 vbp2 net112 vdd pch_5_mac l=2e-6 w=8e-6 ad=3.84e-12 as=3.84e-12 pd=16.96e-6 ps=16.96e-6 nrd=33.75e-3 nrs=33.75e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm2 vbp2 vbp2 vbp1 vdd pch_5_mac l=2e-6 w=8e-6 ad=3.84e-12 as=3.84e-12 pd=16.96e-6 ps=16.96e-6 nrd=33.75e-3 nrs=33.75e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
.ENDS
