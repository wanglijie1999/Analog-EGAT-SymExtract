** Generated for: hspiceD
** Generated on: Mar  9 09:59:39 2023
** Design library name: DDA_22Train
** Design cell name: DDA_2021_SMH
** Design view name: schematic



** Library name: DDA_22Train
** Cell name: DDA_2021_SMH
** View name: schematic
.subckt 07DDASMH vss vo vdd ibia _net0 _net1 _net2 _net3
xm42 vss vss vss vss nch_5_mac l=1e-6 w=1e-6 ad=480e-15 as=480e-15 pd=2.96e-6 ps=2.96e-6 nrd=270e-3 nrs=270e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm41 vss vss vss vss nch_5_mac l=1e-6 w=1e-6 ad=480e-15 as=480e-15 pd=2.96e-6 ps=2.96e-6 nrd=270e-3 nrs=270e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm13 net027 net33 vss vss nch_5_mac l=1e-6 w=1e-6 ad=480e-15 as=480e-15 pd=2.96e-6 ps=2.96e-6 nrd=270e-3 nrs=270e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=14
xm12 vo net16 net027 vss nch_5_mac l=1e-6 w=1e-6 ad=480e-15 as=480e-15 pd=2.96e-6 ps=2.96e-6 nrd=270e-3 nrs=270e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=8
xm26 net030 net33 vss vss nch_5_mac l=1e-6 w=1e-6 ad=480e-15 as=480e-15 pd=2.96e-6 ps=2.96e-6 nrd=270e-3 nrs=270e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=14
xm10 net31 net16 net030 vss nch_5_mac l=1e-6 w=1e-6 ad=480e-15 as=480e-15 pd=2.96e-6 ps=2.96e-6 nrd=270e-3 nrs=270e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=8
xm5 net60 net60 vss vss nch_5_mac l=1e-6 w=1e-6 ad=480e-15 as=480e-15 pd=2.96e-6 ps=2.96e-6 nrd=270e-3 nrs=270e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm4 net16 net16 net60 vss nch_5_mac l=1e-6 w=1e-6 ad=480e-15 as=480e-15 pd=2.96e-6 ps=2.96e-6 nrd=270e-3 nrs=270e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm3 net55 net33 vss vss nch_5_mac l=1e-6 w=1e-6 ad=480e-15 as=480e-15 pd=2.96e-6 ps=2.96e-6 nrd=270e-3 nrs=270e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm2 net18 ibia net55 vss nch_5_mac l=1e-6 w=1e-6 ad=480e-15 as=480e-15 pd=2.96e-6 ps=2.96e-6 nrd=270e-3 nrs=270e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm1 ibia ibia net33 vss nch_5_mac l=1e-6 w=1e-6 ad=480e-15 as=480e-15 pd=2.96e-6 ps=2.96e-6 nrd=270e-3 nrs=270e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm0 net33 net33 vss vss nch_5_mac l=1e-6 w=1e-6 ad=480e-15 as=480e-15 pd=2.96e-6 ps=2.96e-6 nrd=270e-3 nrs=270e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm51 vdd vdd vdd vdd pch_5_mac l=1e-6 w=8e-6 ad=2.88e-12 as=2.88e-12 pd=12.96e-6 ps=12.96e-6 nrd=45e-3 nrs=45e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm50 vdd vdd vdd vdd pch_5_mac l=1e-6 w=8e-6 ad=2.88e-12 as=2.88e-12 pd=12.96e-6 ps=12.96e-6 nrd=45e-3 nrs=45e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm49 net23 net23 net23 net23 pch_5_mac l=1e-6 w=5e-6 ad=2.4e-12 as=2.4e-12 pd=10.96e-6 ps=10.96e-6 nrd=54e-3 nrs=54e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=4
xm48 net25 net25 net25 net25 pch_5_mac l=1e-6 w=5e-6 ad=1.92e-12 as=1.92e-12 pd=8.96e-6 ps=8.96e-6 nrd=67.5e-3 nrs=67.5e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=4
xm25 net19 net19 vdd vdd pch_5_mac l=1e-6 w=8e-6 ad=2.88e-12 as=2.88e-12 pd=12.96e-6 ps=12.96e-6 nrd=45e-3 nrs=45e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm24 net18 net18 net19 vdd pch_5_mac l=1e-6 w=8e-6 ad=2.88e-12 as=2.88e-12 pd=12.96e-6 ps=12.96e-6 nrd=45e-3 nrs=45e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm23 net16 net18 net54 vdd pch_5_mac l=1e-6 w=8e-6 ad=2.88e-12 as=2.88e-12 pd=12.96e-6 ps=12.96e-6 nrd=45e-3 nrs=45e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm22 net54 net19 vdd vdd pch_5_mac l=1e-6 w=8e-6 ad=2.88e-12 as=2.88e-12 pd=12.96e-6 ps=12.96e-6 nrd=45e-3 nrs=45e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm21 net25 net18 net53 vdd pch_5_mac l=1e-6 w=8e-6 ad=2.88e-12 as=2.88e-12 pd=12.96e-6 ps=12.96e-6 nrd=45e-3 nrs=45e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=8
xm20 net53 net19 vdd vdd pch_5_mac l=1e-6 w=8e-6 ad=2.88e-12 as=2.88e-12 pd=12.96e-6 ps=12.96e-6 nrd=45e-3 nrs=45e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=8
xm19 net23 net18 net52 vdd pch_5_mac l=1e-6 w=8e-6 ad=2.88e-12 as=2.88e-12 pd=12.96e-6 ps=12.96e-6 nrd=45e-3 nrs=45e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=8
xm18 net52 net19 vdd vdd pch_5_mac l=1e-6 w=8e-6 ad=2.88e-12 as=2.88e-12 pd=12.96e-6 ps=12.96e-6 nrd=45e-3 nrs=45e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=8
xm17 net31 net31 net32 vdd pch_5_mac l=1e-6 w=8e-6 ad=2.88e-12 as=2.88e-12 pd=12.96e-6 ps=12.96e-6 nrd=45e-3 nrs=45e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm16 net32 net32 vdd vdd pch_5_mac l=1e-6 w=8e-6 ad=2.88e-12 as=2.88e-12 pd=12.96e-6 ps=12.96e-6 nrd=45e-3 nrs=45e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm15 net51 net32 vdd vdd pch_5_mac l=1e-6 w=8e-6 ad=2.88e-12 as=2.88e-12 pd=12.96e-6 ps=12.96e-6 nrd=45e-3 nrs=45e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm14 vo net31 net51 vdd pch_5_mac l=1e-6 w=8e-6 ad=2.88e-12 as=2.88e-12 pd=12.96e-6 ps=12.96e-6 nrd=45e-3 nrs=45e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm9 net030 _net3 net23 net23 pch_5_mac l=1e-6 w=5e-6 ad=1.92e-12 as=1.92e-12 pd=8.96e-6 ps=8.96e-6 nrd=67.5e-3 nrs=67.5e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=8
xm8 net027 _net1 net23 net23 pch_5_mac l=1e-6 w=5e-6 ad=2.4e-12 as=2.4e-12 pd=10.96e-6 ps=10.96e-6 nrd=54e-3 nrs=54e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=8
xm7 net027 _net2 net25 net25 pch_5_mac l=1e-6 w=5e-6 ad=2.4e-12 as=2.4e-12 pd=10.96e-6 ps=10.96e-6 nrd=54e-3 nrs=54e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=8
xm6 net030 _net0 net25 net25 pch_5_mac l=1e-6 w=5e-6 ad=2.4e-12 as=2.4e-12 pd=10.96e-6 ps=10.96e-6 nrd=54e-3 nrs=54e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=8
.ENDS
