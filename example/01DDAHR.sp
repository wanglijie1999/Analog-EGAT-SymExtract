** Generated for: hspiceD
** Generated on: Mar  7 20:45:52 2023
** Design library name: DDA_22Train
** Design cell name: DDA_2021_HR
** Design view name: schematic

** Library name: DDA_22Train
** Cell name: DDA_2021_HR
** View name: schematic
.subckt 01DDAHR vss vo vdd ibias _net0 _net1 _net2 _net3
xm31 vss vss vss vss nch_5_mac l=1e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm30 vss vss vss vss nch_5_mac l=1e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=6
xm25 vb3 vb3 vss vss nch_5_mac l=1e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm24 ibias ibias vb3 vss nch_5_mac l=1e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm23 net16 net16 vss vss nch_5_mac l=1e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=5
xm22 net51 vb3 vss vss nch_5_mac l=1e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm21 vb vb net16 vss nch_5_mac l=1e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=5
xm20 vb2 ibias net51 vss nch_5_mac l=1e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm15 net27 vb3 vss vss nch_5_mac l=1e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=10
xm14 net24 vb3 vss vss nch_5_mac l=1e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=10
xm13 net34 vb net27 vss nch_5_mac l=1e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=5
xm12 vo vb net24 vss nch_5_mac l=1e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=5
xm33 net25 net25 net25 net25 pch_5_mac l=1.5e-6 w=10e-6 ad=4.8e-12 as=4.8e-12 pd=20.96e-6 ps=20.96e-6 nrd=27e-3 nrs=27e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=4
xm32 net21 net21 net21 net21 pch_5_mac l=1.5e-6 w=10e-6 ad=4.8e-12 as=4.8e-12 pd=20.96e-6 ps=20.96e-6 nrd=27e-3 nrs=27e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=4
xm29 vdd vdd vdd vdd pch_5_mac l=1e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=3
xm28 vdd vdd vdd vdd pch_5_mac l=2e-6 w=4e-6 ad=1.92e-12 as=1.92e-12 pd=8.96e-6 ps=8.96e-6 nrd=67.5e-3 nrs=67.5e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm27 vdd vdd vdd vdd pch_5_mac l=1e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=4
xm26 vdd vdd vdd vdd pch_5_mac l=2e-6 w=4e-6 ad=1.92e-12 as=1.92e-12 pd=8.96e-6 ps=8.96e-6 nrd=67.5e-3 nrs=67.5e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm19 vb vb2 net52 vdd pch_5_mac l=1e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm18 vb2 vb2 vb1 vdd pch_5_mac l=1e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm17 net52 vb1 vdd vdd pch_5_mac l=2e-6 w=4e-6 ad=1.92e-12 as=1.92e-12 pd=8.96e-6 ps=8.96e-6 nrd=67.5e-3 nrs=67.5e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm16 vb1 vb1 vdd vdd pch_5_mac l=2e-6 w=4e-6 ad=1.92e-12 as=1.92e-12 pd=8.96e-6 ps=8.96e-6 nrd=67.5e-3 nrs=67.5e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm11 vo net34 net57 vdd pch_5_mac l=1e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm10 net34 net34 net35 vdd pch_5_mac l=1e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm9 net57 net35 vdd vdd pch_5_mac l=1e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=4
xm8 net35 net35 vdd vdd pch_5_mac l=1e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=4
xm7 net27 _net3 net25 net25 pch_5_mac l=1.5e-6 w=50e-6 ad=15.6e-12 as=15.6e-12 pd=63.12e-6 ps=63.12e-6 nrd=5.4e-3 nrs=5.4e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=5 multi=2
xm6 net24 _net2 net25 net25 pch_5_mac l=1.5e-6 w=50e-6 ad=15.6e-12 as=15.6e-12 pd=63.12e-6 ps=63.12e-6 nrd=5.4e-3 nrs=5.4e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=5 multi=2
xm5 net25 vb2 net54 vdd pch_5_mac l=1e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=5
xm4 net54 vb1 vdd vdd pch_5_mac l=2e-6 w=4e-6 ad=1.92e-12 as=1.92e-12 pd=8.96e-6 ps=8.96e-6 nrd=67.5e-3 nrs=67.5e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=5
xm3 net27 _net0 net21 net21 pch_5_mac l=1.5e-6 w=50e-6 ad=15.6e-12 as=15.6e-12 pd=63.12e-6 ps=63.12e-6 nrd=5.4e-3 nrs=5.4e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=5 multi=2
xm2 net24 _net1 net21 net21 pch_5_mac l=1.5e-6 w=50e-6 ad=15.6e-12 as=15.6e-12 pd=63.12e-6 ps=63.12e-6 nrd=5.4e-3 nrs=5.4e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=5 multi=2
xm1 net21 vb2 net53 vdd pch_5_mac l=1e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=5
xm0 net53 vb1 vdd vdd pch_5_mac l=2e-6 w=4e-6 ad=1.92e-12 as=1.92e-12 pd=8.96e-6 ps=8.96e-6 nrd=67.5e-3 nrs=67.5e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=5
.ENDS
