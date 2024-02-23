** Generated for: hspiceD
** Generated on: Apr 12 21:52:17 2023
** Design library name: Bandgap_LJC
** Design cell name: bandgap_OTAPISB2stage
** Design view name: schematic

** Library name: Bandgap_LJC
** Cell name: trimming
** View name: schematic
.subckt trimming l1 l2_1 l2_2 l3 out vdd vref vss
xr12_2  net024 net16 vdd   rppolyhri1k_dis lr=2.92e-6 wr=8e-6 mf=1 m=2 mismatchflag=1

xrtrdm  vdd vdd vdd   rppolyhri1k_dis lr=2.92e-6 wr=8e-6 mf=1 m=2 mismatchflag=1

xr2_1  vref net019 vdd   rppolyhri1k_dis lr=12.2e-6 wr=1e-6 mf=1 m=1 mismatchflag=1

xr2_2  net019 net018 vdd   rppolyhri1k_dis lr=12.2e-6 wr=1e-6 mf=1 m=1 mismatchflag=1

xr2_3  net018 net017 vdd   rppolyhri1k_dis lr=12.2e-6 wr=1e-6 mf=1 m=1 mismatchflag=1

xr2_4  net017 net016 vdd   rppolyhri1k_dis lr=12.2e-6 wr=1e-6 mf=1 m=1 mismatchflag=1

xr2_5  net016 net015 vdd   rppolyhri1k_dis lr=12.2e-6 wr=1e-6 mf=1 m=1 mismatchflag=1

xr2_6  net015 net014 vdd   rppolyhri1k_dis lr=12.2e-6 wr=1e-6 mf=1 m=1 mismatchflag=1

xr2_7  net014 net013 vdd   rppolyhri1k_dis lr=12.2e-6 wr=1e-6 mf=1 m=1 mismatchflag=1

xr2_9  net012 r2in vdd   rppolyhri1k_dis lr=12.2e-6 wr=1e-6 mf=1 m=1 mismatchflag=1

xr13  net15 out vdd   rppolyhri1k_dis lr=2.92e-6 wr=8e-6 mf=1 m=4 mismatchflag=1

xr12_1  net16 net15 vdd   rppolyhri1k_dis lr=2.92e-6 wr=8e-6 mf=1 m=2 mismatchflag=1

xr11  r2in net024 vdd   rppolyhri1k_dis lr=2.92e-6 wr=8e-6 mf=1 m=1 mismatchflag=1

xr2_8  net013 net012 vdd   rppolyhri1k_dis lr=12.2e-6 wr=1e-6 mf=1 m=1 mismatchflag=1

xm3 net024 l2_2 net16 vss nch_mac l=180e-9 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=10
xm2 net15 l1 out vss nch_mac l=180e-9 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=10
xm1 net16 l2_1 net15 vss nch_mac l=180e-9 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=10
xm0 r2in l3 net024 vss nch_mac l=180e-9 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=10
.ends
** End of subcircuit definition.

** Library name: Bandgap_LJC
** Cell name: OPamp_OTAP2stage
** View name: schematic
.subckt OPamp_OTAP2stage vdd vinn vinp vout vss
xmpdm vdd vdd vdd vdd pch_mac l=1e-6 w=4e-6 ad=1.92e-12 as=1.92e-12 pd=8.96e-6 ps=8.96e-6 nrd=67.5e-3 nrs=67.5e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=2.20061 scb=382.121e-6 scc=2.21047e-6 nf=1 multi=2
xmidm1 net023 net023 net023 net023 pch_mac l=1e-6 w=8e-6 ad=3.84e-12 as=3.84e-12 pd=16.96e-6 ps=16.96e-6 nrd=33.75e-3 nrs=33.75e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm8 net027 net027 vdd vdd pch_mac l=2e-6 w=4e-6 ad=1.92e-12 as=1.92e-12 pd=8.96e-6 ps=8.96e-6 nrd=67.5e-3 nrs=67.5e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=1.80518 scb=370.845e-6 scc=2.20987e-6 nf=1 multi=1
xm7 net025 net027 vdd vdd pch_mac l=2e-6 w=4e-6 ad=1.92e-12 as=1.92e-12 pd=8.96e-6 ps=8.96e-6 nrd=67.5e-3 nrs=67.5e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=1.80518 scb=370.845e-6 scc=2.20987e-6 nf=1 multi=1
xm4 vout net027 vdd vdd pch_mac l=2e-6 w=4e-6 ad=1.92e-12 as=1.92e-12 pd=8.96e-6 ps=8.96e-6 nrd=67.5e-3 nrs=67.5e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm6 net11 vinn net023 net023 pch_mac l=4e-6 w=8e-6 ad=3.84e-12 as=3.84e-12 pd=16.96e-6 ps=16.96e-6 nrd=33.75e-3 nrs=33.75e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm5 net028 vinp net023 net023 pch_mac l=4e-6 w=8e-6 ad=3.84e-12 as=3.84e-12 pd=16.96e-6 ps=16.96e-6 nrd=33.75e-3 nrs=33.75e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm0 net023 net027 vdd vdd pch_mac l=2e-6 w=4e-6 ad=1.92e-12 as=1.92e-12 pd=8.96e-6 ps=8.96e-6 nrd=67.5e-3 nrs=67.5e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xmndm1 vss vss vss vss nch_mac l=1e-6 w=4e-6 ad=1.92e-12 as=1.92e-12 pd=8.96e-6 ps=8.96e-6 nrd=67.5e-3 nrs=67.5e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xmidm vss vss vss vss nch_mac l=2e-6 w=1e-6 ad=480e-15 as=480e-15 pd=2.96e-6 ps=2.96e-6 nrd=270e-3 nrs=270e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm22 net027 net027 net041 vss nch_mac l=800e-9 w=800e-9 ad=384e-15 as=384e-15 pd=2.56e-6 ps=2.56e-6 nrd=337.5e-3 nrs=337.5e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm10 net027 net025 net043 vss nch_mac l=2e-6 w=1e-6 ad=480e-15 as=480e-15 pd=2.96e-6 ps=2.96e-6 nrd=270e-3 nrs=270e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm9 net025 net025 vss vss nch_mac l=2e-6 w=1e-6 ad=480e-15 as=480e-15 pd=2.96e-6 ps=2.96e-6 nrd=270e-3 nrs=270e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm21 net041 net041 net025 vss nch_mac l=800e-9 w=800e-9 ad=384e-15 as=384e-15 pd=2.56e-6 ps=2.56e-6 nrd=337.5e-3 nrs=337.5e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm1 net11 net11 vss vss nch_mac l=10e-6 w=4e-6 ad=1.92e-12 as=1.92e-12 pd=8.96e-6 ps=8.96e-6 nrd=67.5e-3 nrs=67.5e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm2 net028 net11 vss vss nch_mac l=10e-6 w=4e-6 ad=1.92e-12 as=1.92e-12 pd=8.96e-6 ps=8.96e-6 nrd=67.5e-3 nrs=67.5e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm3 vout net028 vss vss nch_mac l=4e-6 w=6e-6 ad=2.88e-12 as=2.88e-12 pd=12.96e-6 ps=12.96e-6 nrd=45e-3 nrs=45e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xrzdm  vdd vdd vdd   rppolyhri1k_dis lr=6.4e-6 wr=1e-6 mf=1 m=2 mismatchflag=1

xr1  vdd vdd vdd   rppolyhri1k_dis lr=6.4e-6 wr=1e-6 mf=1 m=2 mismatchflag=1

**Series configuration of Rs
xrs_1__dmy0  net043 xrs_1__dmy0 vdd  rppolyhri1k_dis lr=6.4e-6 wr=1e-6 mf=1 m=1 mismatchflag=1
xrs_2__dmy0  xrs_1__dmy0 vss vdd  rppolyhri1k_dis lr=6.4e-6 wr=1e-6 mf=1 m=1 mismatchflag=1
**End of Rs

**Series configuration of Rz
xrz_1__dmy0  net036 xrz_1__dmy0 vdd  rppolyhri1k_dis lr=6.4e-6 wr=1e-6 mf=1 m=1 mismatchflag=1
xrz_2__dmy0  xrz_1__dmy0 xrz_2__dmy0 vdd  rppolyhri1k_dis lr=6.4e-6 wr=1e-6 mf=1 m=1 mismatchflag=1
xrz_3__dmy0  xrz_2__dmy0 xrz_3__dmy0 vdd  rppolyhri1k_dis lr=6.4e-6 wr=1e-6 mf=1 m=1 mismatchflag=1
xrz_4__dmy0  xrz_3__dmy0 net028 vdd  rppolyhri1k_dis lr=6.4e-6 wr=1e-6 mf=1 m=1 mismatchflag=1
**End of Rz

xc3 vdd vss mimcap_2p0_sin lt=23.945e-6 wt=23e-6 mf=1 mismatchflag=1
xc2 vdd vss mimcap_2p0_sin lt=16.75e-6 wt=5e-6 mf=1 mismatchflag=1
xcc net036 vout mimcap_2p0_sin lt=22.19e-6 wt=13.5e-6 mf=1 mismatchflag=1
.ends
** End of subcircuit definition.

** Library name: Bandgap_LJC
** Cell name: bandgap_OTAPISB2stage
** View name: schematic
.subckt 20Bandgap_ljc vdd vref vss
xi22 w1 w2_1 w2_2 w3 out vdd vref vss trimming
xmpdmo vdd vdd vdd vdd pch_mac l=1e-6 w=8e-6 ad=3.84e-12 as=3.84e-12 pd=16.96e-6 ps=16.96e-6 nrd=33.75e-3 nrs=33.75e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm8 vref net012 vdd vdd pch_mac l=4e-6 w=8e-6 ad=3.84e-12 as=3.84e-12 pd=16.96e-6 ps=16.96e-6 nrd=33.75e-3 nrs=33.75e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm6 net01 net012 vdd vdd pch_mac l=4e-6 w=8e-6 ad=3.84e-12 as=3.84e-12 pd=16.96e-6 ps=16.96e-6 nrd=33.75e-3 nrs=33.75e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm5 net08 net012 vdd vdd pch_mac l=4e-6 w=8e-6 ad=3.84e-12 as=3.84e-12 pd=16.96e-6 ps=16.96e-6 nrd=33.75e-3 nrs=33.75e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xr1_2  net08 net24 vdd   rppolyhri1k_dis lr=12.2e-6 wr=1e-6 mf=1 m=1 mismatchflag=1

xr3  vdd vdd vdd   rppolyhri1k_dis lr=12.2e-6 wr=1e-6 mf=1 m=7 mismatchflag=1

xr1_1  net24 net022 vdd   rppolyhri1k_dis lr=12.2e-6 wr=1e-6 mf=1 m=1 mismatchflag=1

xr5  vdd vdd vdd   rppolyhri1k_dis lr=4e-6 wr=1e-6 mf=1 m=12 mismatchflag=1

xi20 vdd net01 net08 net012 vss OPamp_OTAP2stage
xq3 vss vss out pnp2_rpo_mis mismatchflag=1 multi=1
xq2 vss vss net01 pnp2_rpo_mis mismatchflag=1 multi=1
xq1 vss vss net022 pnp2_rpo_mis mismatchflag=1 multi=7

.ENDS
