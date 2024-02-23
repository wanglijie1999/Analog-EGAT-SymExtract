** Generated for: hspiceD
** Generated on: Dec 14 10:47:09 2022
** Design library name: BUCK_HF_LI_COPY
** Design cell name: CMP_DCM
** Design view name: schematic



** Library name: BUCK_HF_LI_COPY
** Cell name: CMP_DCM
** View name: schematic
.subckt 13CMP_DCM vdd ibias_2ua gnd out _net0 _net1
xm13 out net029 vdd vdd pch_5_mac l=600e-9 w=600e-9 ad=288e-15 as=288e-15 pd=2.16e-6 ps=2.16e-6 nrd=450e-3 nrs=450e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm11 net025 net51 vdd vdd pch_5_mac l=600e-9 w=600e-9 ad=288e-15 as=288e-15 pd=2.16e-6 ps=2.16e-6 nrd=450e-3 nrs=450e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm12 net029 net025 vdd vdd pch_5_mac l=600e-9 w=600e-9 ad=288e-15 as=288e-15 pd=2.16e-6 ps=2.16e-6 nrd=450e-3 nrs=450e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm8 net36 ibias_2ua vdd vdd pch_5_mac l=2e-6 w=16e-6 ad=4.32e-12 as=7.68e-12 pd=17.08e-6 ps=33.92e-6 nrd=16.875e-3 nrs=16.875e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=2 multi=1
xm5 net51 net32 vdd vdd pch_5_mac l=500e-9 w=1e-6 ad=480e-15 as=480e-15 pd=2.96e-6 ps=2.96e-6 nrd=270e-3 nrs=270e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm2 net33 ibias_2ua vdd vdd pch_5_mac l=2e-6 w=16e-6 ad=4.32e-12 as=7.68e-12 pd=17.08e-6 ps=33.92e-6 nrd=16.875e-3 nrs=16.875e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=2 multi=1
xm1 net32 net32 vdd vdd pch_5_mac l=500e-9 w=1e-6 ad=480e-15 as=480e-15 pd=2.96e-6 ps=2.96e-6 nrd=270e-3 nrs=270e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm0 ibias_2ua ibias_2ua vdd vdd pch_5_mac l=2e-6 w=16e-6 ad=3.84e-12 as=3.84e-12 pd=16.96e-6 ps=16.96e-6 nrd=33.75e-3 nrs=33.75e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=2 multi=1
xm14 out net029 gnd gnd nch_5_mac l=600e-9 w=300e-9 ad=206.4e-15 as=206.4e-15 pd=1.88e-6 ps=1.88e-6 nrd=1.03333 nrs=1.03333 sa=520e-9 sb=520e-9 sd=620e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm9 net029 net025 gnd gnd nch_5_mac l=600e-9 w=300e-9 ad=206.4e-15 as=206.4e-15 pd=1.88e-6 ps=1.88e-6 nrd=1.03333 nrs=1.03333 sa=520e-9 sb=520e-9 sd=620e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm10 net025 net51 gnd gnd nch_5_mac l=600e-9 w=300e-9 ad=206.4e-15 as=206.4e-15 pd=1.88e-6 ps=1.88e-6 nrd=1.03333 nrs=1.03333 sa=520e-9 sb=520e-9 sd=620e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm7 net36 net36 _net0 gnd nch_5_mac l=600e-9 w=6e-6 ad=2.88e-12 as=2.88e-12 pd=12.96e-6 ps=12.96e-6 nrd=45e-3 nrs=45e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm6 net51 net36 _net1 gnd nch_5_mac l=600e-9 w=6e-6 ad=2.88e-12 as=2.88e-12 pd=12.96e-6 ps=12.96e-6 nrd=45e-3 nrs=45e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm4 net33 net33 _net1 gnd nch_5_mac l=600e-9 w=6e-6 ad=2.88e-12 as=2.88e-12 pd=12.96e-6 ps=12.96e-6 nrd=45e-3 nrs=45e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm3 net32 net33 _net0 gnd nch_5_mac l=600e-9 w=6e-6 ad=2.88e-12 as=2.88e-12 pd=12.96e-6 ps=12.96e-6 nrd=45e-3 nrs=45e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
.ends
