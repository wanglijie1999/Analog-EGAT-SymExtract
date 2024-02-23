** Generated for: hspiceD
** Generated on: Mar  9 10:07:28 2023
** Design library name: DDA_22Train
** Design cell name: DDA_2021_YN
** Design view name: schematic



** Library name: DDA_22Train
** Cell name: DDA_2021_YN
** View name: schematic
.subckt 11DDAYN vss vout vdd ibias _net0 _net1 _net2 _net3
xm29 vss vss vss vss nch_5_mac l=1.5e-6 w=3e-6 ad=1.44e-12 as=1.44e-12 pd=6.96e-6 ps=6.96e-6 nrd=90e-3 nrs=90e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=4
xm2 vb3 vb3 vb4 vss nch_5_mac l=1.5e-6 w=3e-6 ad=1.44e-12 as=1.44e-12 pd=6.96e-6 ps=6.96e-6 nrd=90e-3 nrs=90e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=3
xm8 vout vb3 net179 vss nch_5_mac l=1.5e-6 w=3e-6 ad=1.44e-12 as=1.44e-12 pd=6.96e-6 ps=6.96e-6 nrd=90e-3 nrs=90e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=3
xm6 net185 vb3 net181 vss nch_5_mac l=1.5e-6 w=3e-6 ad=1.44e-12 as=1.44e-12 pd=6.96e-6 ps=6.96e-6 nrd=90e-3 nrs=90e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=3
xm9 net179 vb4 vss vss nch_5_mac l=1.5e-6 w=3e-6 ad=1.44e-12 as=1.44e-12 pd=6.96e-6 ps=6.96e-6 nrd=90e-3 nrs=90e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=6
xm7 net181 vb4 vss vss nch_5_mac l=1.5e-6 w=3e-6 ad=1.44e-12 as=1.44e-12 pd=6.96e-6 ps=6.96e-6 nrd=90e-3 nrs=90e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=6
xm3 vb4 vb4 vss vss nch_5_mac l=1.5e-6 w=3e-6 ad=1.44e-12 as=1.44e-12 pd=6.96e-6 ps=6.96e-6 nrd=90e-3 nrs=90e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm24 net186 net186 vdd vdd pch_5_mac l=1e-6 w=5e-6 ad=2.4e-12 as=2.4e-12 pd=10.96e-6 ps=10.96e-6 nrd=54e-3 nrs=54e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=3
xm23 net198 net186 vdd vdd pch_5_mac l=1e-6 w=5e-6 ad=2.4e-12 as=2.4e-12 pd=10.96e-6 ps=10.96e-6 nrd=54e-3 nrs=54e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=3
xm25 net185 net185 net186 vdd pch_5_mac l=1e-6 w=5e-6 ad=2.4e-12 as=2.4e-12 pd=10.96e-6 ps=10.96e-6 nrd=54e-3 nrs=54e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=3
xm22 vout net185 net198 vdd pch_5_mac l=1e-6 w=5e-6 ad=2.4e-12 as=2.4e-12 pd=10.96e-6 ps=10.96e-6 nrd=54e-3 nrs=54e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=3
xm28 vdd vdd vdd vdd pch_5_mac l=1e-6 w=5e-6 ad=2.4e-12 as=2.4e-12 pd=10.96e-6 ps=10.96e-6 nrd=54e-3 nrs=54e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=4
xm27 vd2 vd2 vd2 vd2 pch_5_mac l=1e-6 w=9e-6 ad=4.32e-12 as=4.32e-12 pd=18.96e-6 ps=18.96e-6 nrd=30e-3 nrs=30e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=4
xm26 vd1 vd1 vd1 vd1 pch_5_mac l=1e-6 w=9e-6 ad=4.32e-12 as=4.32e-12 pd=18.96e-6 ps=18.96e-6 nrd=30e-3 nrs=30e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=4
xm21 net051 vb1 vdd vdd pch_5_mac l=1e-6 w=5e-6 ad=2.4e-12 as=2.4e-12 pd=10.96e-6 ps=10.96e-6 nrd=54e-3 nrs=54e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=3
xm17 net052 vb1 vdd vdd pch_5_mac l=1e-6 w=5e-6 ad=2.4e-12 as=2.4e-12 pd=10.96e-6 ps=10.96e-6 nrd=54e-3 nrs=54e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=3
xm12 vb1 vb1 vdd vdd pch_5_mac l=1e-6 w=5e-6 ad=2.4e-12 as=2.4e-12 pd=10.96e-6 ps=10.96e-6 nrd=54e-3 nrs=54e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm11 net201 vb1 vdd vdd pch_5_mac l=1e-6 w=5e-6 ad=2.4e-12 as=2.4e-12 pd=10.96e-6 ps=10.96e-6 nrd=54e-3 nrs=54e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm20 vd2 ibias net051 vdd pch_5_mac l=1e-6 w=5e-6 ad=2.4e-12 as=2.4e-12 pd=10.96e-6 ps=10.96e-6 nrd=54e-3 nrs=54e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=3
xm16 vd1 ibias net052 vdd pch_5_mac l=1e-6 w=5e-6 ad=2.4e-12 as=2.4e-12 pd=10.96e-6 ps=10.96e-6 nrd=54e-3 nrs=54e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=3
xm13 ibias ibias vb1 vdd pch_5_mac l=1e-6 w=5e-6 ad=2.4e-12 as=2.4e-12 pd=10.96e-6 ps=10.96e-6 nrd=54e-3 nrs=54e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm10 vb3 ibias net201 vdd pch_5_mac l=1e-6 w=5e-6 ad=2.4e-12 as=2.4e-12 pd=10.96e-6 ps=10.96e-6 nrd=54e-3 nrs=54e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm19 net179 _net1 vd2 vd2 pch_5_mac l=1e-6 w=18e-6 ad=4.86e-12 as=8.64e-12 pd=19.08e-6 ps=37.92e-6 nrd=15e-3 nrs=15e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=2 multi=2
xm18 net181 _net3 vd2 vd2 pch_5_mac l=1e-6 w=18e-6 ad=4.86e-12 as=8.64e-12 pd=19.08e-6 ps=37.92e-6 nrd=15e-3 nrs=15e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=2 multi=2
xm15 net179 _net0 vd1 vd1 pch_5_mac l=1e-6 w=18e-6 ad=4.86e-12 as=8.64e-12 pd=19.08e-6 ps=37.92e-6 nrd=15e-3 nrs=15e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=2 multi=2
xm14 net181 _net2 vd1 vd1 pch_5_mac l=1e-6 w=18e-6 ad=4.86e-12 as=8.64e-12 pd=19.08e-6 ps=37.92e-6 nrd=15e-3 nrs=15e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=2 multi=2
.ENDS
