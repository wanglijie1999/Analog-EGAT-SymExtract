** Generated for: hspiceD
** Generated on: Apr 12 22:16:17 2023
** Design library name: Bandgap_YXC
** Design cell name: bandgap_OTA_two1
** Design view name: schematic


** Library name: Bandgap_YXC
** Cell name: OTA_TOP_two
** View name: schematic
.subckt OTA_TOP_two gnd in1 in2 out vdd
xmp_dm2 vdd vdd vdd vdd pch_mac l=2e-6 w=8e-6 ad=3.84e-12 as=3.84e-12 pd=16.96e-6 ps=16.96e-6 nrd=33.75e-3 nrs=33.75e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm11 out net028 vdd vdd pch_mac l=2e-6 w=8e-6 ad=3.84e-12 as=3.84e-12 pd=16.96e-6 ps=16.96e-6 nrd=33.75e-3 nrs=33.75e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xmp_dm1 net017 net017 net017 net017 pch_mac l=2e-6 w=4e-6 ad=1.92e-12 as=1.92e-12 pd=8.96e-6 ps=8.96e-6 nrd=67.5e-3 nrs=67.5e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm9 net07 net028 vdd vdd pch_mac l=2e-6 w=8e-6 ad=3.84e-12 as=3.84e-12 pd=16.96e-6 ps=16.96e-6 nrd=33.75e-3 nrs=33.75e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm10 net028 net028 vdd vdd pch_mac l=2e-6 w=8e-6 ad=3.84e-12 as=3.84e-12 pd=16.96e-6 ps=16.96e-6 nrd=33.75e-3 nrs=33.75e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm2 net12 in1 net017 net017 pch_mac l=2e-6 w=4e-6 ad=1.92e-12 as=1.92e-12 pd=8.96e-6 ps=8.96e-6 nrd=67.5e-3 nrs=67.5e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm3 net035 in2 net017 net017 pch_mac l=2e-6 w=4e-6 ad=1.92e-12 as=1.92e-12 pd=8.96e-6 ps=8.96e-6 nrd=67.5e-3 nrs=67.5e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm4 net017 net028 vdd vdd pch_mac l=2e-6 w=8e-6 ad=3.84e-12 as=3.84e-12 pd=16.96e-6 ps=16.96e-6 nrd=33.75e-3 nrs=33.75e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm23 gnd gnd gnd gnd nch_mac l=6e-6 w=1e-6 ad=480e-15 as=480e-15 pd=2.96e-6 ps=2.96e-6 nrd=270e-3 nrs=270e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=6
xm22 gnd gnd gnd gnd nch_mac l=1e-6 w=1e-6 ad=480e-15 as=480e-15 pd=2.96e-6 ps=2.96e-6 nrd=270e-3 nrs=270e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=8
xm17 out net035 gnd gnd nch_mac l=2e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=4
xm14 net028 net07 net027 gnd nch_mac l=6e-6 w=1e-6 ad=480e-15 as=480e-15 pd=2.96e-6 ps=2.96e-6 nrd=270e-3 nrs=270e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=5
xm21 gnd gnd gnd gnd nch_mac l=2e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm13 net07 net07 gnd gnd nch_mac l=6e-6 w=1e-6 ad=480e-15 as=480e-15 pd=2.96e-6 ps=2.96e-6 nrd=270e-3 nrs=270e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm0 net12 net12 gnd gnd nch_mac l=2e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm1 net035 net12 gnd gnd nch_mac l=2e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xc1 net035 out mimcap_2p0_sin lt=20e-6 wt=20e-6 mf=1 mismatchflag=1
**Series configuration of R1
xr1_1__dmy0  net027 xr1_1__dmy0 vdd  rppolyhri1k_dis lr=20.53e-6 wr=2e-6 mf=1 m=1 mismatchflag=1
xr1_2__dmy0  xr1_1__dmy0 xr1_2__dmy0 vdd  rppolyhri1k_dis lr=20.53e-6 wr=2e-6 mf=1 m=1 mismatchflag=1
xr1_3__dmy0  xr1_2__dmy0 xr1_3__dmy0 vdd  rppolyhri1k_dis lr=20.53e-6 wr=2e-6 mf=1 m=1 mismatchflag=1
xr1_4__dmy0  xr1_3__dmy0 gnd vdd  rppolyhri1k_dis lr=20.53e-6 wr=2e-6 mf=1 m=1 mismatchflag=1
**End of R1

.ends OTA_TOP_two
** End of subcircuit definition.

** Library name: Bandgap_YXC
** Cell name: bandgap_OTA_two1
** View name: schematic
.subckt 22Bandgap_yxc vref vdd gnd in1 in2
xm9 vref net013 vdd vdd pch_mac l=1e-6 w=1e-6 ad=480e-15 as=480e-15 pd=2.96e-6 ps=2.96e-6 nrd=270e-3 nrs=270e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=5
xm7 net011 net013 vdd vdd pch_mac l=1e-6 w=1e-6 ad=480e-15 as=480e-15 pd=2.96e-6 ps=2.96e-6 nrd=270e-3 nrs=270e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm26 net012 net012 net032 vdd pch_mac l=4e-6 w=1e-6 ad=480e-15 as=480e-15 pd=2.96e-6 ps=2.96e-6 nrd=270e-3 nrs=270e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm6 net028 net013 vdd vdd pch_mac l=1e-6 w=1e-6 ad=480e-15 as=480e-15 pd=2.96e-6 ps=2.96e-6 nrd=270e-3 nrs=270e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm25 net032 net032 vdd vdd pch_mac l=4e-6 w=1e-6 ad=480e-15 as=480e-15 pd=2.96e-6 ps=2.96e-6 nrd=270e-3 nrs=270e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xmp_dm3 vdd vdd vdd vdd pch_mac l=1e-6 w=1e-6 ad=480e-15 as=480e-15 pd=2.96e-6 ps=2.96e-6 nrd=270e-3 nrs=270e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xi9 gnd net011 net028 net013 vdd OTA_TOP_two
xm3 net21 in2 net036 gnd nch_mac l=180e-9 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm2 net026 in1 net21 gnd nch_mac l=180e-9 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm0 net012 vref gnd gnd nch_mac l=2e-6 w=1e-6 ad=480e-15 as=480e-15 pd=2.96e-6 ps=2.96e-6 nrd=270e-3 nrs=270e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm1 net013 net012 gnd gnd nch_mac l=2e-6 w=1e-6 ad=480e-15 as=480e-15 pd=2.96e-6 ps=2.96e-6 nrd=270e-3 nrs=270e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xq0 gnd gnd net22 pnp2_rpo_mis mismatchflag=1 multi=7
xq2 gnd gnd net036 pnp2_rpo_mis mismatchflag=1 multi=1
xq1 gnd gnd net011 pnp2_rpo_mis mismatchflag=1 multi=1
xr4  net21 net036 vdd   rppolyhri1k_dis lr=2e-6 wr=2e-6 mf=1 m=1 mismatchflag=1

xr3  net026 net21 vdd   rppolyhri1k_dis lr=2e-6 wr=2e-6 mf=1 m=1 mismatchflag=1

xr6  vdd vdd vdd   rppolyhri1k_dis lr=20e-6 wr=2e-6 mf=1 m=1 mismatchflag=1

xr7  vdd vdd vdd   rppolyhri1k_dis lr=20e-6 wr=2e-6 mf=1 m=1 mismatchflag=1

**Series configuration of R0
xr0_1__dmy0  vref xr0_1__dmy0 vdd  rppolyhri1k_dis lr=20e-6 wr=2e-6 mf=1 m=1 mismatchflag=1
xr0_2__dmy0  xr0_1__dmy0 xr0_2__dmy0 vdd  rppolyhri1k_dis lr=20e-6 wr=2e-6 mf=1 m=1 mismatchflag=1
xr0_3__dmy0  xr0_2__dmy0 xr0_3__dmy0 vdd  rppolyhri1k_dis lr=20e-6 wr=2e-6 mf=1 m=1 mismatchflag=1
xr0_4__dmy0  xr0_3__dmy0 xr0_4__dmy0 vdd  rppolyhri1k_dis lr=20e-6 wr=2e-6 mf=1 m=1 mismatchflag=1
xr0_5__dmy0  xr0_4__dmy0 xr0_5__dmy0 vdd  rppolyhri1k_dis lr=20e-6 wr=2e-6 mf=1 m=1 mismatchflag=1
xr0_6__dmy0  xr0_5__dmy0 xr0_6__dmy0 vdd  rppolyhri1k_dis lr=20e-6 wr=2e-6 mf=1 m=1 mismatchflag=1
xr0_7__dmy0  xr0_6__dmy0 net026 vdd  rppolyhri1k_dis lr=20e-6 wr=2e-6 mf=1 m=1 mismatchflag=1
**End of R0

**Series configuration of R5
xr5_1__dmy0  net038 xr5_1__dmy0 vdd  rppolyhri1k_dis lr=20e-6 wr=2e-6 mf=1 m=1 mismatchflag=1
xr5_2__dmy0  xr5_1__dmy0 net22 vdd  rppolyhri1k_dis lr=20e-6 wr=2e-6 mf=1 m=1 mismatchflag=1
**End of R5

**Series configuration of R2
xr2_1__dmy0  net028 xr2_1__dmy0 vdd  rppolyhri1k_dis lr=20e-6 wr=2e-6 mf=1 m=1 mismatchflag=1
xr2_2__dmy0  xr2_1__dmy0 net038 vdd  rppolyhri1k_dis lr=20e-6 wr=2e-6 mf=1 m=1 mismatchflag=1
**End of R2

.ENDS
