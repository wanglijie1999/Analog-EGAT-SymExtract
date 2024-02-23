** Generated for: hspiceD
** Generated on: Mar  9 09:46:36 2023
** Design library name: DDA_22Train
** Design cell name: DDA_2021_LJY_1
** Design view name: schematic


** Library name: DDA_22Train
** Cell name: DDA_2021_LJY_1
** View name: schematic
.subckt 04DDALJY gnd vout vdd ibias_5u _net0 _net1 _net2 _net3
xm21 net040 vb1 vdd vdd pch_5_mac l=4e-6 w=10e-6 ad=1.92e-12 as=1.92e-12 pd=8.96e-6 ps=8.96e-6 nrd=67.5e-3 nrs=67.5e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm20 vb1 vb1 vdd vdd pch_5_mac l=4e-6 w=10e-6 ad=1.92e-12 as=1.92e-12 pd=8.96e-6 ps=8.96e-6 nrd=67.5e-3 nrs=67.5e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm19 vb3 vb2 net040 vdd pch_5_mac l=4e-6 w=4e-6 ad=1.92e-12 as=1.92e-12 pd=8.96e-6 ps=8.96e-6 nrd=67.5e-3 nrs=67.5e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm18 vb2 vb2 vb1 vdd pch_5_mac l=4e-6 w=4e-6 ad=1.92e-12 as=1.92e-12 pd=8.96e-6 ps=8.96e-6 nrd=67.5e-3 nrs=67.5e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm3bb net075 vb1 vdd vdd pch_5_mac l=4e-6 w=10e-6 ad=4.8e-12 as=4.8e-12 pd=20.96e-6 ps=20.96e-6 nrd=27e-3 nrs=27e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm3aa net16 vb1 vdd vdd pch_5_mac l=4e-6 w=10e-6 ad=4.8e-12 as=4.8e-12 pd=20.96e-6 ps=20.96e-6 nrd=27e-3 nrs=27e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm11 net01 net016 vdd vdd pch_5_mac l=4e-6 w=20e-6 ad=9.6e-12 as=9.6e-12 pd=40.96e-6 ps=40.96e-6 nrd=13.5e-3 nrs=13.5e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm10 net016 net016 vdd vdd pch_5_mac l=4e-6 w=20e-6 ad=9.6e-12 as=9.6e-12 pd=40.96e-6 ps=40.96e-6 nrd=13.5e-3 nrs=13.5e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm9 vout net018 net01 vdd pch_5_mac l=4e-6 w=20e-6 ad=9.6e-12 as=9.6e-12 pd=40.96e-6 ps=40.96e-6 nrd=13.5e-3 nrs=13.5e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm8 net018 net018 net016 vdd pch_5_mac l=4e-6 w=20e-6 ad=9.6e-12 as=9.6e-12 pd=40.96e-6 ps=40.96e-6 nrd=13.5e-3 nrs=13.5e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm3b net1 vb2 net075 vdd pch_5_mac l=4e-6 w=4e-6 ad=4.8e-12 as=4.8e-12 pd=20.96e-6 ps=20.96e-6 nrd=27e-3 nrs=27e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm2b net011 _net2 net1 net1 pch_5_mac l=4e-6 w=6e-6 ad=2.88e-12 as=2.88e-12 pd=12.96e-6 ps=12.96e-6 nrd=45e-3 nrs=45e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm1b net049 _net3 net1 net1 pch_5_mac l=4e-6 w=6e-6 ad=2.88e-12 as=2.88e-12 pd=12.96e-6 ps=12.96e-6 nrd=45e-3 nrs=45e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm1a net049 _net0 net13 net13 pch_5_mac l=4e-6 w=6e-6 ad=2.88e-12 as=2.88e-12 pd=12.96e-6 ps=12.96e-6 nrd=45e-3 nrs=45e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm3a net13 vb2 net16 vdd pch_5_mac l=4e-6 w=4e-6 ad=4.8e-12 as=4.8e-12 pd=20.96e-6 ps=20.96e-6 nrd=27e-3 nrs=27e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm2a net011 _net1 net13 net13 pch_5_mac l=4e-6 w=6e-6 ad=2.88e-12 as=2.88e-12 pd=12.96e-6 ps=12.96e-6 nrd=45e-3 nrs=45e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm17 vb3 vb3 net015 gnd nch_5_mac l=4e-6 w=4e-6 ad=1.92e-12 as=1.92e-12 pd=8.96e-6 ps=8.96e-6 nrd=67.5e-3 nrs=67.5e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm16 vb2 ibias_5u net069 gnd nch_5_mac l=4e-6 w=4e-6 ad=1.92e-12 as=1.92e-12 pd=8.96e-6 ps=8.96e-6 nrd=67.5e-3 nrs=67.5e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm15 ibias_5u ibias_5u vb4 gnd nch_5_mac l=4e-6 w=4e-6 ad=1.92e-12 as=1.92e-12 pd=8.96e-6 ps=8.96e-6 nrd=67.5e-3 nrs=67.5e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm14 net015 net015 gnd gnd nch_5_mac l=4e-6 w=4e-6 ad=1.92e-12 as=1.92e-12 pd=8.96e-6 ps=8.96e-6 nrd=67.5e-3 nrs=67.5e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm13 net069 vb4 gnd gnd nch_5_mac l=4e-6 w=4e-6 ad=1.92e-12 as=1.92e-12 pd=8.96e-6 ps=8.96e-6 nrd=67.5e-3 nrs=67.5e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm12 vb4 vb4 gnd gnd nch_5_mac l=4e-6 w=4e-6 ad=1.92e-12 as=1.92e-12 pd=8.96e-6 ps=8.96e-6 nrd=67.5e-3 nrs=67.5e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm7 vout vb3 net049 gnd nch_5_mac l=4e-6 w=4e-6 ad=1.92e-12 as=1.92e-12 pd=8.96e-6 ps=8.96e-6 nrd=67.5e-3 nrs=67.5e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=6
xm6 net018 vb3 net011 gnd nch_5_mac l=4e-6 w=4e-6 ad=1.92e-12 as=1.92e-12 pd=8.96e-6 ps=8.96e-6 nrd=67.5e-3 nrs=67.5e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=6
xm5 net049 vb4 gnd gnd nch_5_mac l=4e-6 w=4e-6 ad=1.92e-12 as=1.92e-12 pd=8.96e-6 ps=8.96e-6 nrd=67.5e-3 nrs=67.5e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=11
xm4 net011 vb4 gnd gnd nch_5_mac l=4e-6 w=4e-6 ad=1.92e-12 as=1.92e-12 pd=8.96e-6 ps=8.96e-6 nrd=67.5e-3 nrs=67.5e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=11
.ENDS
