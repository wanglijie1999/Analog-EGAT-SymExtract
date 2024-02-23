** Generated for: hspiceD
** Generated on: Dec 14 10:51:25 2022
** Design library name: BUCK_HF_LI_COPY
** Design cell name: DCM_Comparator_V1
** Design view name: schematic


** Library name: BUCK_HF_LI_COPY
** Cell name: DCM_Comparator_V1
** View name: schematic


.subckt 14Comparator vdd vss vo _net0 _net1 vb3
xm41 vo net0112 vss vss nch_5_mac l=600e-9 w=300e-9 ad=206.4e-15 as=206.4e-15 pd=1.88e-6 ps=1.88e-6 nrd=1.03333 nrs=1.03333 sa=520e-9 sb=520e-9 sd=620e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm31 vb2 vb3 net0121 vss nch_5_mac l=1e-6 w=5e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm52 net035 net060 vss vss nch_5_mac l=600e-9 w=2e-6 ad=540e-15 as=960e-15 pd=3.08e-6 ps=5.92e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=2 multi=2
xm53 net0112 vo1 vss vss nch_5_mac l=600e-9 w=300e-9 ad=206.4e-15 as=206.4e-15 pd=1.88e-6 ps=1.88e-6 nrd=1.03333 nrs=1.03333 sa=520e-9 sb=520e-9 sd=620e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm32 vb3 vb3 vb4 vss nch_5_mac l=1e-6 w=5e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm77 net060 net049 vss vss nch_5_mac l=600e-9 w=3e-6 ad=594e-15 as=1.056e-12 pd=3.28e-6 ps=6.32e-6 nrd=122.727e-3 nrs=122.727e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=2 multi=1
xm59 vb4 vb4 vss vss nch_5_mac l=2e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm58 net0121 vb4 vss vss nch_5_mac l=2e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm55 net060 net060 vss vss nch_5_mac l=600e-9 w=2e-6 ad=540e-15 as=960e-15 pd=3.08e-6 ps=5.92e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=2 multi=1
xm73 net0112 vo1 vdd vdd pch_5_mac l=600e-9 w=600e-9 ad=288e-15 as=288e-15 pd=2.16e-6 ps=2.16e-6 nrd=450e-3 nrs=450e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm72 vo net0112 vdd vdd pch_5_mac l=600e-9 w=600e-9 ad=288e-15 as=288e-15 pd=2.16e-6 ps=2.16e-6 nrd=450e-3 nrs=450e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm71 net0120 vb1 vdd vdd pch_5_mac l=2e-6 w=2e-6 ad=5e-6 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=6
xm70 vb1 vb1 vdd vdd pch_5_mac l=2e-6 w=2e-6 ad=5e-6 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm69 net034 net034 vdd vdd pch_5_mac l=4e-6 w=8e-6 ad=2.16e-12 as=3e-12 pd=10.16e-6 ps=15e-6 nrd=33.75e-3 nrs=33.75e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=4 multi=1
xm80 net035 net035 net034 vdd pch_5_mac l=1e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=4
xm66 net0104 vb2 net0120 vdd pch_5_mac l=1e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=6
xm67 vo1 net049 vss vss nch_5_mac l=600e-9 w=2e-6 ad=648e-15 as=1.152e-12 pd=3.48e-6 ps=6.72e-6 nrd=112.5e-3 nrs=112.5e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=2 multi=2
xm68 net049 net060 vss vss nch_5_mac l=600e-9 w=3e-6 ad=594e-15 as=1.056e-12 pd=3.28e-6 ps=6.32e-6 nrd=122.727e-3 nrs=122.727e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=2 multi=1
xm54 net049 net049 vss vss nch_5_mac l=600e-9 w=2e-6 ad=540e-15 as=960e-15 pd=3.08e-6 ps=5.92e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=2 multi=1
xm64 net049 _net0 net0104 net0104 pch_5_mac l=500e-9 w=12e-6 ad=3.24e-12 as=4.5e-12 pd=14.16e-6 ps=21e-6 nrd=22.5e-3 nrs=22.5e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=4 multi=2
xm63 net060 _net1 net0104 net0104 pch_5_mac l=500e-9 w=12e-6 ad=3.24e-12 as=4.5e-12 pd=14.16e-6 ps=21e-6 nrd=22.5e-3 nrs=22.5e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=4 multi=2
xm74 net057 net034 vdd vdd pch_5_mac l=4e-6 w=8e-6 ad=2.16e-12 as=3e-12 pd=10.16e-6 ps=15e-6 nrd=33.75e-3 nrs=33.75e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=4 multi=1
xm65 vb2 vb2 vb1 vdd pch_5_mac l=1e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm81 vo1 net035 net057 vdd pch_5_mac l=1e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=4
.ends
