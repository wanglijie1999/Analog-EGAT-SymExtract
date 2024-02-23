** Generated for: hspiceD
** Generated on: Apr 12 21:41:07 2023
** Design library name: Bandgap_DSY
** Design cell name: bandgap_final_layout
** Design view name: schematic


** Library name: Bandgap_DSY
** Cell name: folding_cascode_re
** View name: schematic

.subckt folding_cascode_re gnd vcc vn vout vp
xm47 net029 net029 net029 net029 pch_mac l=180e-9 w=300e-9 ad=206.4e-15 as=206.4e-15 pd=1.88e-6 ps=1.88e-6 nrd=1.03333 nrs=1.03333 sa=520e-9 sb=520e-9 sd=620e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xmdum_piss vcc vcc vcc vcc pch_mac l=2e-6 w=5e-6 ad=2.4e-12 as=2.4e-12 pd=10.96e-6 ps=10.96e-6 nrd=54e-3 nrs=54e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=5
xmdum_pin net036 net036 net036 net036 pch_mac l=2e-6 w=5e-6 ad=2.4e-12 as=2.4e-12 pd=10.96e-6 ps=10.96e-6 nrd=54e-3 nrs=54e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=4
xmdum_p1 vcc vcc vcc vcc pch_mac l=2e-6 w=5e-6 ad=2.4e-12 as=2.4e-12 pd=10.96e-6 ps=10.96e-6 nrd=54e-3 nrs=54e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=4
xmdum_p2 net032 net032 net032 net032 pch_mac l=180e-9 w=300e-9 ad=206.4e-15 as=206.4e-15 pd=1.88e-6 ps=1.88e-6 nrd=1.03333 nrs=1.03333 sa=520e-9 sb=520e-9 sd=620e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm42 vbias2 vbias2 net051 vcc pch_mac l=180e-9 w=360e-9 ad=212.4e-15 as=212.4e-15 pd=1.88e-6 ps=1.88e-6 nrd=861.111e-3 nrs=861.111e-3 sa=520e-9 sb=520e-9 sd=620e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm40 net018 vp net036 net036 pch_mac l=2e-6 w=5e-6 ad=2.4e-12 as=2.4e-12 pd=10.96e-6 ps=10.96e-6 nrd=54e-3 nrs=54e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=12
xm8 net037 net037 vcc vcc pch_mac l=2e-6 w=5e-6 ad=2.4e-12 as=2.4e-12 pd=10.96e-6 ps=10.96e-6 nrd=54e-3 nrs=54e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm35 vbias1 net037 vcc vcc pch_mac l=2e-6 w=5e-6 ad=2.4e-12 as=2.4e-12 pd=10.96e-6 ps=10.96e-6 nrd=54e-3 nrs=54e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm17 net032 net029 vcc vcc pch_mac l=5e-6 w=5e-6 ad=2.4e-12 as=2.4e-12 pd=10.96e-6 ps=10.96e-6 nrd=54e-3 nrs=54e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=10
xm3 net05 net037 vcc vcc pch_mac l=2e-6 w=5e-6 ad=2.4e-12 as=2.4e-12 pd=10.96e-6 ps=10.96e-6 nrd=54e-3 nrs=54e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm39 net034 vn net036 net036 pch_mac l=2e-6 w=5e-6 ad=2.4e-12 as=2.4e-12 pd=10.96e-6 ps=10.96e-6 nrd=54e-3 nrs=54e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=12
xm18 net028 net028 net029 net029 pch_mac l=180e-9 w=300e-9 ad=206.4e-15 as=206.4e-15 pd=1.88e-6 ps=1.88e-6 nrd=1.03333 nrs=1.03333 sa=520e-9 sb=520e-9 sd=620e-9 sca=0 scb=0 scc=0 nf=1 multi=10
xm38 net036 net037 vcc vcc pch_mac l=2e-6 w=5e-6 ad=2.4e-12 as=2.4e-12 pd=10.96e-6 ps=10.96e-6 nrd=54e-3 nrs=54e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=16
xm19 vout net028 net032 net032 pch_mac l=180e-9 w=300e-9 ad=206.4e-15 as=206.4e-15 pd=1.88e-6 ps=1.88e-6 nrd=1.03333 nrs=1.03333 sa=520e-9 sb=520e-9 sd=620e-9 sca=0 scb=0 scc=0 nf=1 multi=10
xm36 net051 vbias2 vcc vcc pch_mac l=700e-9 w=220e-9 ad=198.4e-15 as=198.4e-15 pd=1.88e-6 ps=1.88e-6 nrd=1.40909 nrs=1.40909 sa=520e-9 sb=520e-9 sd=620e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm16 net029 net029 vcc vcc pch_mac l=5e-6 w=5e-6 ad=2.4e-12 as=2.4e-12 pd=10.96e-6 ps=10.96e-6 nrd=54e-3 nrs=54e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=10
xr3  vcc vcc vcc   rppolyhri1k_dis lr=8.275e-6 wr=2e-6 mf=1 m=1 mismatchflag=1
xr2  vcc vcc vcc   rppolyhri1k_dis lr=8.275e-6 wr=2e-6 mf=1 m=1 mismatchflag=1

xr0_1__dmy0  net025 gnd vcc  rppolyhri1k_dis lr=8.275e-6 wr=2e-6 mf=1 m=1 mismatchflag=1

xmdum_niss1 gnd gnd gnd gnd nch_mac l=500e-9 w=1.5e-6 ad=720e-15 as=720e-15 pd=3.96e-6 ps=3.96e-6 nrd=180e-3 nrs=180e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xmdum_niss2 gnd gnd gnd gnd nch_mac l=1e-6 w=1e-6 ad=480e-15 as=480e-15 pd=2.96e-6 ps=2.96e-6 nrd=270e-3 nrs=270e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xmdum_n2 gnd gnd gnd gnd nch_mac l=2e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm37 vbias2 vbias1 gnd gnd nch_mac l=1e-6 w=1e-6 ad=480e-15 as=480e-15 pd=2.96e-6 ps=2.96e-6 nrd=270e-3 nrs=270e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm14 net05 net05 gnd gnd nch_mac l=1e-6 w=1.5e-6 ad=720e-15 as=720e-15 pd=3.96e-6 ps=3.96e-6 nrd=180e-3 nrs=180e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm13 net037 net037 net024 gnd nch_mac l=300e-9 w=300e-9 ad=206.4e-15 as=206.4e-15 pd=1.88e-6 ps=1.88e-6 nrd=1.03333 nrs=1.03333 sa=520e-9 sb=520e-9 sd=620e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm21 vout vbias2 net034 gnd nch_mac l=2e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=6
xm28 net018 vbias1 gnd gnd nch_mac l=1e-6 w=1e-6 ad=9.6e-12 as=9.6e-12 pd=40.96e-6 ps=40.96e-6 nrd=13.5e-3 nrs=13.5e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=6
xm5 net024 net024 net05 gnd nch_mac l=300e-9 w=300e-9 ad=206.4e-15 as=206.4e-15 pd=1.88e-6 ps=1.88e-6 nrd=1.03333 nrs=1.03333 sa=520e-9 sb=520e-9 sd=620e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xmdum_n1 gnd gnd gnd gnd nch_mac l=2e-6 w=20e-6 ad=9.6e-12 as=9.6e-12 pd=40.96e-6 ps=40.96e-6 nrd=13.5e-3 nrs=13.5e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=4
xm27 net034 vbias1 gnd gnd nch_mac l=1e-6 w=1e-6 ad=9.6e-12 as=9.6e-12 pd=40.96e-6 ps=40.96e-6 nrd=13.5e-3 nrs=13.5e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=6
xm20 net028 vbias2 net018 gnd nch_mac l=2e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=6
xm2 net037 net05 net025 gnd nch_mac l=1e-6 w=1.5e-6 ad=720e-15 as=720e-15 pd=3.96e-6 ps=3.96e-6 nrd=180e-3 nrs=180e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm33 vbias1 vbias1 gnd gnd nch_mac l=1e-6 w=1e-6 ad=480e-15 as=480e-15 pd=2.96e-6 ps=2.96e-6 nrd=270e-3 nrs=270e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
.ends

** Library name: Bandgap_DSY
** Cell name: bandgap_final_layout
** View name: schematic

.subckt 19Bandgap_DSY  gnd vcc t0 t1 t2 vref
xmdum_bg_ud2 vcc vcc vcc vcc pch_mac l=180e-9 w=500e-9 ad=240e-15 as=240e-15 pd=1.96e-6 ps=1.96e-6 nrd=540e-3 nrs=540e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=4
xmdum_bg_ud1 vcc vcc vcc vcc pch_mac l=5e-6 w=500e-9 ad=240e-15 as=240e-15 pd=1.96e-6 ps=1.96e-6 nrd=540e-3 nrs=540e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=12
xmdum_bg_lr vcc vcc vcc vcc pch_mac l=180e-9 w=4e-6 ad=1.92e-12 as=1.92e-12 pd=8.96e-6 ps=8.96e-6 nrd=67.5e-3 nrs=67.5e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm7 vref vout vcc vcc pch_mac l=5e-6 w=4e-6 ad=1.92e-12 as=1.92e-12 pd=8.96e-6 ps=8.96e-6 nrd=67.5e-3 nrs=67.5e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=4
xm4 _net0 _net0 net013 vcc pch_mac l=660e-9 w=220e-9 ad=198.4e-15 as=198.4e-15 pd=1.88e-6 ps=1.88e-6 nrd=1.40909 nrs=1.40909 sa=520e-9 sb=520e-9 sd=620e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm3 net013 net013 net014 vcc pch_mac l=660e-9 w=220e-9 ad=198.4e-15 as=198.4e-15 pd=1.88e-6 ps=1.88e-6 nrd=1.40909 nrs=1.40909 sa=520e-9 sb=520e-9 sd=620e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm2 net014 net014 vcc vcc pch_mac l=660e-9 w=220e-9 ad=198.4e-15 as=198.4e-15 pd=1.88e-6 ps=1.88e-6 nrd=1.40909 nrs=1.40909 sa=520e-9 sb=520e-9 sd=620e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm1 _net0 vout vcc vcc pch_mac l=5e-6 w=4e-6 ad=1.92e-12 as=1.92e-12 pd=8.96e-6 ps=8.96e-6 nrd=67.5e-3 nrs=67.5e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm0 _net1 vout vcc vcc pch_mac l=5e-6 w=4e-6 ad=1.92e-12 as=1.92e-12 pd=8.96e-6 ps=8.96e-6 nrd=67.5e-3 nrs=67.5e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xr14  vcc vcc vcc   rppolyhri1k_dis lr=2e-6 wr=2.8e-6 mf=1 m=1 mismatchflag=1
xr13  vcc vcc vcc   rppolyhri1k_dis lr=2e-6 wr=2.8e-6 mf=1 m=1 mismatchflag=1
xr12  vcc vcc vcc   rppolyhri1k_dis lr=7.15e-6 wr=2e-6 mf=1 m=1 mismatchflag=1
xr11  vcc vcc vcc   rppolyhri1k_dis lr=7.25e-6 wr=2e-6 mf=1 m=1 mismatchflag=1
xr6  net023 net028 vcc   rppolyhri1k_dis lr=2e-6 wr=2.8e-6 mf=4 m=1 mismatchflag=1
**Series configuration of R2
xr2_1__dmy0  net030 xr2_1__dmy0 vcc  rppolyhri1k_dis lr=7.15e-6 wr=2e-6 mf=1 m=1 mismatchflag=1
xr2_2__dmy0  xr2_1__dmy0 xr2_2__dmy0 vcc  rppolyhri1k_dis lr=7.15e-6 wr=2e-6 mf=1 m=1 mismatchflag=1
xr2_3__dmy0  xr2_2__dmy0 xr2_3__dmy0 vcc  rppolyhri1k_dis lr=7.15e-6 wr=2e-6 mf=1 m=1 mismatchflag=1
xr2_4__dmy0  xr2_3__dmy0 xr2_4__dmy0 vcc  rppolyhri1k_dis lr=7.15e-6 wr=2e-6 mf=1 m=1 mismatchflag=1
xr2_5__dmy0  xr2_4__dmy0 xr2_5__dmy0 vcc  rppolyhri1k_dis lr=7.15e-6 wr=2e-6 mf=1 m=1 mismatchflag=1
xr2_6__dmy0  xr2_5__dmy0 xr2_6__dmy0 vcc  rppolyhri1k_dis lr=7.15e-6 wr=2e-6 mf=1 m=1 mismatchflag=1
xr2_7__dmy0  xr2_6__dmy0 vref vcc  rppolyhri1k_dis lr=7.15e-6 wr=2e-6 mf=1 m=1 mismatchflag=1
**End of R2
xr10  net038 net030 vcc   rppolyhri1k_dis lr=2e-6 wr=2.8e-6 mf=1 m=1 mismatchflag=1
xr9  net028 net038 vcc   rppolyhri1k_dis lr=2e-6 wr=2.8e-6 mf=2 m=1 mismatchflag=1
**Series configuration of R0
xr0_1__dmy0  net25 xr0_1__dmy0 vcc  rppolyhri1k_dis lr=7.25e-6 wr=2e-6 mf=1 m=1 mismatchflag=1
xr0_2__dmy0  xr0_1__dmy0 _net1 vcc  rppolyhri1k_dis lr=7.25e-6 wr=2e-6 mf=1 m=1 mismatchflag=1
**End of R0
xq_dum gnd gnd gnd pnp2_rpo_mis mismatchflag=1 multi=4
xq2 gnd gnd net023 pnp2_rpo_mis mismatchflag=1 multi=1
xq1 gnd gnd _net0 pnp2_rpo_mis mismatchflag=1 multi=1
xq0 gnd gnd net25 pnp2_rpo_mis mismatchflag=1 multi=3
xm9 net030 t2 net038 gnd nch_mac l=180e-9 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=10
xm11 net028 t0 net023 gnd nch_mac l=180e-9 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=10
xm10 net038 t1 net028 gnd nch_mac l=180e-9 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=10
xc0 vcc gnd mimcap_2p0_sin lt=20e-6 wt=17e-6 mf=3 mismatchflag=1
xi8 gnd vcc _net0 vout _net1 folding_cascode_re
.ends

