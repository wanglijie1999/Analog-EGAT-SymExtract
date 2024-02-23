** Generated for: hspiceD
** Generated on: Apr 12 21:58:52 2023
** Design library name: Bandgap_WBY
** Design cell name: bandgap
** Design view name: schematic

** Library name: Bandgap_WBY
** Cell name: RES
** View name: schematic
.subckt RES a0 a1 a2 gnd in out vdd
xr63  a00 a01 vdd   rppolyhri1k_dis lr=3.76e-6 wr=20e-6 mf=1 m=1 mismatchflag=1

xr62  net076 a12 vdd   rppolyhri1k_dis lr=3.76e-6 wr=20e-6 mf=1 m=1 mismatchflag=1

xr61  a01 net076 vdd   rppolyhri1k_dis lr=3.76e-6 wr=20e-6 mf=1 m=1 mismatchflag=1

xr60  net084 out vdd   rppolyhri1k_dis lr=3.76e-6 wr=20e-6 mf=1 m=1 mismatchflag=1

xr59  net085 net084 vdd   rppolyhri1k_dis lr=3.76e-6 wr=20e-6 mf=1 m=1 mismatchflag=1

xr58  net090 net085 vdd   rppolyhri1k_dis lr=3.76e-6 wr=20e-6 mf=1 m=1 mismatchflag=1

xr101  vdd vdd vdd   rppolyhri1k_dis lr=3.76e-6 wr=20e-6 mf=1 m=17 mismatchflag=1

**Series configuration of R103
xr103_1__dmy0  in xr103_1__dmy0 vdd  rppolyhri1k_dis lr=12.835e-6 wr=2e-6 mf=1 m=1 mismatchflag=1
xr103_2__dmy0  xr103_1__dmy0 xr103_2__dmy0 vdd  rppolyhri1k_dis lr=12.835e-6 wr=2e-6 mf=1 m=1 mismatchflag=1
xr103_3__dmy0  xr103_2__dmy0 xr103_3__dmy0 vdd  rppolyhri1k_dis lr=12.835e-6 wr=2e-6 mf=1 m=1 mismatchflag=1
xr103_4__dmy0  xr103_3__dmy0 xr103_4__dmy0 vdd  rppolyhri1k_dis lr=12.835e-6 wr=2e-6 mf=1 m=1 mismatchflag=1
xr103_5__dmy0  xr103_4__dmy0 xr103_5__dmy0 vdd  rppolyhri1k_dis lr=12.835e-6 wr=2e-6 mf=1 m=1 mismatchflag=1
xr103_6__dmy0  xr103_5__dmy0 xr103_6__dmy0 vdd  rppolyhri1k_dis lr=12.835e-6 wr=2e-6 mf=1 m=1 mismatchflag=1
xr103_7__dmy0  xr103_6__dmy0 xr103_7__dmy0 vdd  rppolyhri1k_dis lr=12.835e-6 wr=2e-6 mf=1 m=1 mismatchflag=1
xr103_8__dmy0  xr103_7__dmy0 xr103_8__dmy0 vdd  rppolyhri1k_dis lr=12.835e-6 wr=2e-6 mf=1 m=1 mismatchflag=1
xr103_9__dmy0  xr103_8__dmy0 xr103_9__dmy0 vdd  rppolyhri1k_dis lr=12.835e-6 wr=2e-6 mf=1 m=1 mismatchflag=1
xr103_10__dmy0  xr103_9__dmy0 xr103_10__dmy0 vdd  rppolyhri1k_dis lr=12.835e-6 wr=2e-6 mf=1 m=1 mismatchflag=1
xr103_11__dmy0  xr103_10__dmy0 xr103_11__dmy0 vdd  rppolyhri1k_dis lr=12.835e-6 wr=2e-6 mf=1 m=1 mismatchflag=1
xr103_12__dmy0  xr103_11__dmy0 xr103_12__dmy0 vdd  rppolyhri1k_dis lr=12.835e-6 wr=2e-6 mf=1 m=1 mismatchflag=1
xr103_13__dmy0  xr103_12__dmy0 xr103_13__dmy0 vdd  rppolyhri1k_dis lr=12.835e-6 wr=2e-6 mf=1 m=1 mismatchflag=1
xr103_14__dmy0  xr103_13__dmy0 xr103_14__dmy0 vdd  rppolyhri1k_dis lr=12.835e-6 wr=2e-6 mf=1 m=1 mismatchflag=1
xr103_15__dmy0  xr103_14__dmy0 xr103_15__dmy0 vdd  rppolyhri1k_dis lr=12.835e-6 wr=2e-6 mf=1 m=1 mismatchflag=1
xr103_16__dmy0  xr103_15__dmy0 xr103_16__dmy0 vdd  rppolyhri1k_dis lr=12.835e-6 wr=2e-6 mf=1 m=1 mismatchflag=1
xr103_17__dmy0  xr103_16__dmy0 xr103_17__dmy0 vdd  rppolyhri1k_dis lr=12.835e-6 wr=2e-6 mf=1 m=1 mismatchflag=1
xr103_18__dmy0  xr103_17__dmy0 a00 vdd  rppolyhri1k_dis lr=12.835e-6 wr=2e-6 mf=1 m=1 mismatchflag=1
**End of R103

xr104  vdd vdd vdd   rppolyhri1k_dis lr=12.835e-6 wr=2e-6 mf=1 m=2 mismatchflag=1

xr57  a12 net090 vdd   rppolyhri1k_dis lr=3.76e-6 wr=20e-6 mf=1 m=1 mismatchflag=1

xm5 a12 a2 out gnd nch_mac l=180e-9 w=4e-6 ad=1.92e-12 as=1.92e-12 pd=8.96e-6 ps=8.96e-6 nrd=67.5e-3 nrs=67.5e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=5
xm1 a01 a1 a12 gnd nch_mac l=180e-9 w=4e-6 ad=1.92e-12 as=1.92e-12 pd=8.96e-6 ps=8.96e-6 nrd=67.5e-3 nrs=67.5e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=5
xm0 a00 a0 a01 gnd nch_mac l=180e-9 w=4e-6 ad=1.92e-12 as=1.92e-12 pd=8.96e-6 ps=8.96e-6 nrd=67.5e-3 nrs=67.5e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=5
.ends
** End of subcircuit definition.

** Library name: Bandgap_WBY
** Cell name: buffer
** View name: schematic
.subckt buffer gnd vdd vinn vinp vout
xm35 vout net021 vdd vdd pch_mac l=1e-6 w=4e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm2 net021 net021 vdd vdd pch_mac l=1e-6 w=4e-6 ad=1.92e-12 as=1.92e-12 pd=8.96e-6 ps=8.96e-6 nrd=67.5e-3 nrs=67.5e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm36 net027 net027 net027 net027 pch_mac l=1e-6 w=4e-6 ad=1.92e-12 as=1.92e-12 pd=8.96e-6 ps=8.96e-6 nrd=67.5e-3 nrs=67.5e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm4 net07 net021 net027 net027 pch_mac l=1e-6 w=4e-6 ad=1.92e-12 as=1.92e-12 pd=8.96e-6 ps=8.96e-6 nrd=67.5e-3 nrs=67.5e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=6
xm37 net030 net030 net030 net030 pch_mac l=2e-6 w=5e-6 ad=2.4e-12 as=2.4e-12 pd=10.96e-6 ps=10.96e-6 nrd=54e-3 nrs=54e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm16 net041 vinn net030 net030 pch_mac l=2e-6 w=5e-6 ad=2.4e-12 as=2.4e-12 pd=10.96e-6 ps=10.96e-6 nrd=54e-3 nrs=54e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm15 net018 vinp net030 net030 pch_mac l=2e-6 w=5e-6 ad=2.4e-12 as=2.4e-12 pd=10.96e-6 ps=10.96e-6 nrd=54e-3 nrs=54e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm14 net030 net021 vdd vdd pch_mac l=1e-6 w=4e-6 ad=1.92e-12 as=1.92e-12 pd=8.96e-6 ps=8.96e-6 nrd=67.5e-3 nrs=67.5e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm32 gnd gnd gnd gnd nch_mac l=8e-6 w=1e-6 ad=480e-15 as=480e-15 pd=2.96e-6 ps=2.96e-6 nrd=270e-3 nrs=270e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm1 net07 net07 gnd gnd nch_mac l=2e-6 w=1e-6 ad=480e-15 as=480e-15 pd=2.96e-6 ps=2.96e-6 nrd=270e-3 nrs=270e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm0 net021 net07 gnd gnd nch_mac l=2e-6 w=1e-6 ad=480e-15 as=480e-15 pd=2.96e-6 ps=2.96e-6 nrd=270e-3 nrs=270e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm31 gnd gnd gnd gnd nch_mac l=2e-6 w=1e-6 ad=480e-15 as=480e-15 pd=2.96e-6 ps=2.96e-6 nrd=270e-3 nrs=270e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm23 vout net018 gnd gnd nch_mac l=4e-6 w=1e-6 ad=480e-15 as=480e-15 pd=2.96e-6 ps=2.96e-6 nrd=270e-3 nrs=270e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm18 net018 net041 gnd gnd nch_mac l=8e-6 w=1e-6 ad=480e-15 as=480e-15 pd=2.96e-6 ps=2.96e-6 nrd=270e-3 nrs=270e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm17 net041 net041 gnd gnd nch_mac l=8e-6 w=1e-6 ad=480e-15 as=480e-15 pd=2.96e-6 ps=2.96e-6 nrd=270e-3 nrs=270e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xc0 vout net018 mimcap_2p0_sin lt=24.91e-6 wt=10e-6 mf=1 mismatchflag=1
xc2 vout net018 mimcap_2p0_sin lt=24.91e-6 wt=10e-6 mf=1 mismatchflag=1
xr1  vdd vdd vdd   rnpo1rpo_dis lr=10.395e-6 wr=1e-6 mf=1 m=2 mismatchflag=1

**Series configuration of R0
xr0_1__dmy0  vdd xr0_1__dmy0 vdd  rnpo1rpo_dis lr=10.395e-6 wr=1e-6 mf=1 m=1 mismatchflag=1
xr0_2__dmy0  xr0_1__dmy0 xr0_2__dmy0 vdd  rnpo1rpo_dis lr=10.395e-6 wr=1e-6 mf=1 m=1 mismatchflag=1
xr0_3__dmy0  xr0_2__dmy0 xr0_3__dmy0 vdd  rnpo1rpo_dis lr=10.395e-6 wr=1e-6 mf=1 m=1 mismatchflag=1
xr0_4__dmy0  xr0_3__dmy0 xr0_4__dmy0 vdd  rnpo1rpo_dis lr=10.395e-6 wr=1e-6 mf=1 m=1 mismatchflag=1
xr0_5__dmy0  xr0_4__dmy0 xr0_5__dmy0 vdd  rnpo1rpo_dis lr=10.395e-6 wr=1e-6 mf=1 m=1 mismatchflag=1
xr0_6__dmy0  xr0_5__dmy0 net027 vdd  rnpo1rpo_dis lr=10.395e-6 wr=1e-6 mf=1 m=1 mismatchflag=1
**End of R0

.ends
** End of subcircuit definition.

** Library name: Bandgap_WBY
** Cell name: bandgap
** View name: schematic
.subckt 21Bandgap_wby vdd gnd vref
xq2 gnd gnd net6 pnp2_rpo_mis mismatchflag=1 multi=7
xq3 gnd gnd net3 pnp2_rpo_mis mismatchflag=1 multi=1
xq1 gnd gnd net036 pnp2_rpo_mis mismatchflag=1 multi=1
xi15 a0 a1 a2 gnd vref net3 vdd RES
xm16 vdd vdd vdd vdd pch_mac l=2e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm4 net036 net06 vdd vdd pch_mac l=2e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm6 vref net06 vdd vdd pch_mac l=2e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm1 net42 net06 vdd vdd pch_mac l=2e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xi14 gnd vdd net036 net42 net06 buffer
**Series configuration of R2
xr2_1__dmy0  net42 xr2_1__dmy0 vdd  rppolyhri1k_dis lr=12.835e-6 wr=2e-6 mf=1 m=1 mismatchflag=1
xr2_2__dmy0  xr2_1__dmy0 net6 vdd  rppolyhri1k_dis lr=12.835e-6 wr=2e-6 mf=1 m=1 mismatchflag=1
**End of R2

.ENDS
