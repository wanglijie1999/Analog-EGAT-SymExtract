** Generated for: hspiceD
** Generated on: Dec 14 11:01:57 2022
** Design library name: BUCK_HF_LI_COPY
** Design cell name: OTA_Current_Sensor_V2
** Design view name: schematic


** Library name: BUCK_HF_LI_COPY
** Cell name: OTA_Current_Sensor_V2
** View name: schematic

.subckt 16OTA_Current_Sensor_V2 ibias_5u vdd vss _net0 _net1 vo
m47 vb vb net0138 vss nch_5 l=600e-9 w=2e-6 m=1 nf=1 sd=540e-9 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sca=0 scb=0 scc=0
m46 ibias_5u ibias_5u net0153 vss nch_5 l=1e-6 w=1e-6 m=1 nf=1 sd=540e-9 ad=480e-15 as=480e-15 pd=2.96e-6 ps=2.96e-6 nrd=270e-3 nrs=270e-3 sa=480e-9 sb=480e-9 sca=0 scb=0 scc=0
m45 net0140 ibias_5u net0174 vss nch_5 l=1e-6 w=1e-6 m=2 nf=1 sd=540e-9 ad=480e-15 as=480e-15 pd=2.96e-6 ps=2.96e-6 nrd=270e-3 nrs=270e-3 sa=480e-9 sb=480e-9 sca=0 scb=0 scc=0
m44 net0151 vb net0147 vss nch_5 l=1e-6 w=2e-6 m=1 nf=1 sd=540e-9 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sca=0 scb=0 scc=0
m43 vo vb net0144 vss nch_5 l=1e-6 w=2e-6 m=1 nf=1 sd=540e-9 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sca=0 scb=0 scc=0
m41 net0174 net0153 vss vss nch_5 l=1e-6 w=1e-6 m=2 nf=1 sd=540e-9 ad=480e-15 as=480e-15 pd=2.96e-6 ps=2.96e-6 nrd=270e-3 nrs=270e-3 sa=480e-9 sb=480e-9 sca=0 scb=0 scc=0
m40 net0153 net0153 vss vss nch_5 l=1e-6 w=1e-6 m=1 nf=1 sd=540e-9 ad=480e-15 as=480e-15 pd=2.96e-6 ps=2.96e-6 nrd=270e-3 nrs=270e-3 sa=480e-9 sb=480e-9 sca=0 scb=0 scc=0
m39 net0147 net0153 vss vss nch_5 l=1e-6 w=1e-6 m=10 nf=1 sd=540e-9 ad=480e-15 as=480e-15 pd=2.96e-6 ps=2.96e-6 nrd=270e-3 nrs=270e-3 sa=480e-9 sb=480e-9 sca=0 scb=0 scc=0
m38 net0144 net0153 vss vss nch_5 l=1e-6 w=1e-6 m=10 nf=1 sd=540e-9 ad=480e-15 as=480e-15 pd=2.96e-6 ps=2.96e-6 nrd=270e-3 nrs=270e-3 sa=480e-9 sb=480e-9 sca=0 scb=0 scc=0
m36 net0138 net0138 vss vss nch_5 l=600e-9 w=2e-6 m=1 nf=1 sd=540e-9 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sca=0 scb=0 scc=0
m71 net0141 net0141 vdd vdd pch_5 l=2e-6 w=6e-6 m=2 nf=1 sd=540e-9 ad=2.88e-12 as=2.88e-12 pd=12.96e-6 ps=12.96e-6 nrd=45e-3 nrs=45e-3 sa=480e-9 sb=480e-9 sca=0 scb=0 scc=0
m70 net0171 net0141 vdd vdd pch_5 l=2e-6 w=6e-6 m=10 nf=1 sd=540e-9 ad=2.88e-12 as=2.88e-12 pd=12.96e-6 ps=12.96e-6 nrd=45e-3 nrs=45e-3 sa=480e-9 sb=480e-9 sca=0 scb=0 scc=0
m69 net0173 net0141 vdd vdd pch_5 l=2e-6 w=6e-6 m=1 nf=1 sd=540e-9 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sca=0 scb=0 scc=0
m68 net0172 net0152 vdd vdd pch_5 l=500e-9 w=2e-6 m=1 nf=1 sd=540e-9 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sca=0 scb=0 scc=0
m67 net0152 net0152 vdd vdd pch_5 l=500e-9 w=2e-6 m=1 nf=1 sd=540e-9 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sca=0 scb=0 scc=0
m65 net0160 net0140 net0171 vdd pch_5 l=1e-6 w=6e-6 m=10 nf=1 sd=540e-9 ad=2.88e-12 as=2.88e-12 pd=12.96e-6 ps=12.96e-6 nrd=45e-3 nrs=45e-3 sa=480e-9 sb=480e-9 sca=0 scb=0 scc=0
m61 net0140 net0140 net0141 vdd pch_5 l=1e-6 w=6e-6 m=2 nf=1 sd=540e-9 ad=2.88e-12 as=2.88e-12 pd=12.96e-6 ps=12.96e-6 nrd=45e-3 nrs=45e-3 sa=480e-9 sb=480e-9 sca=0 scb=0 scc=0
m60 vb net0140 net0173 vdd pch_5 l=1e-6 w=6e-6 m=1 nf=1 sd=540e-9 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sca=0 scb=0 scc=0
m59 vo net0151 net0172 vdd pch_5 l=500e-9 w=2e-6 m=1 nf=1 sd=540e-9 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sca=0 scb=0 scc=0
m58 net0151 net0151 net0152 vdd pch_5 l=500e-9 w=2e-6 m=1 nf=1 sd=540e-9 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sca=0 scb=0 scc=0
m57 net0144 _net0 net0160 net0160 pch_5 l=1e-6 w=40e-6 m=2 nf=4 sd=540e-9 ad=10.8e-12 as=15e-12 pd=42.16e-6 ps=63e-6 nrd=6.75e-3 nrs=6.75e-3 sa=480e-9 sb=480e-9 sca=0 scb=0 scc=0
m55 net0147 _net1 net0160 net0160 pch_5 l=1e-6 w=40e-6 m=2 nf=4 sd=540e-9 ad=10.8e-12 as=15e-12 pd=42.16e-6 ps=63e-6 nrd=6.75e-3 nrs=6.75e-3 sa=480e-9 sb=480e-9 sca=0 scb=0 scc=0
.ends
