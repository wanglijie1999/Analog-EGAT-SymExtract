** Generated for: hspiceD
** Generated on: Mar  9 10:11:26 2023
** Design library name: DDA_22Train
** Design cell name: DDA_2021_ZZY
** Design view name: schematic



** Library name: DDA_22Train
** Cell name: DDA_2021_ZZY
** View name: schematic
.subckt 12DDAZZY gnd vout vcc iref _net0 _net1 _net2 _net3
xm10 vout net063 net2 gnd nch_5_mac l=2e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=3
xm9 net2 net039 gnd gnd nch_5_mac l=2e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=10
xm3 net063 net063 net073 gnd nch_5_mac l=2e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=4
xm17 net073 net073 gnd gnd nch_5_mac l=1e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=4
xm12 net059 net039 gnd gnd nch_5_mac l=2e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm11 net026 iref net059 gnd nch_5_mac l=2e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm2 net039 net039 gnd gnd nch_5_mac l=2e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm1 iref iref net039 gnd nch_5_mac l=2e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm7 net10 net063 net20 gnd nch_5_mac l=2e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=3
xm8 net20 net039 gnd gnd nch_5_mac l=2e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=10
xm13 gnd gnd gnd gnd nch_5_mac l=2e-6 w=2e-6 ad=960e-15 as=960e-15 pd=4.96e-6 ps=4.96e-6 nrd=135e-3 nrs=135e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=4
xm42 net1 net1 net1 net1 pch_5_mac l=2e-6 w=7e-6 ad=3.36e-12 as=3.36e-12 pd=14.96e-6 ps=14.96e-6 nrd=38.5714e-3 nrs=38.5714e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=4
xm39 vcc vcc vcc vcc pch_5_mac l=1e-6 w=3e-6 ad=1.44e-12 as=1.44e-12 pd=6.96e-6 ps=6.96e-6 nrd=90e-3 nrs=90e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=12
xm5 net026 net026 net021 vcc pch_5_mac l=1e-6 w=3e-6 ad=1.44e-12 as=1.44e-12 pd=6.96e-6 ps=6.96e-6 nrd=90e-3 nrs=90e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm4 net021 net021 vcc vcc pch_5_mac l=1e-6 w=3e-6 ad=1.44e-12 as=1.44e-12 pd=6.96e-6 ps=6.96e-6 nrd=90e-3 nrs=90e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=2
xm18 net058 net021 vcc vcc pch_5_mac l=1e-6 w=3e-6 ad=1.44e-12 as=1.44e-12 pd=6.96e-6 ps=6.96e-6 nrd=90e-3 nrs=90e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm22 net1 net026 net061 vcc pch_5_mac l=1e-6 w=3e-6 ad=1.44e-12 as=1.44e-12 pd=6.96e-6 ps=6.96e-6 nrd=90e-3 nrs=90e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=5
xm23 net060 net021 vcc vcc pch_5_mac l=1e-6 w=3e-6 ad=1.44e-12 as=1.44e-12 pd=6.96e-6 ps=6.96e-6 nrd=90e-3 nrs=90e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=5
xm20 net063 net026 net058 vcc pch_5_mac l=1e-6 w=3e-6 ad=1.44e-12 as=1.44e-12 pd=6.96e-6 ps=6.96e-6 nrd=90e-3 nrs=90e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=1
xm43 net3 net3 net3 net3 pch_5_mac l=2e-6 w=7e-6 ad=3.36e-12 as=3.36e-12 pd=14.96e-6 ps=14.96e-6 nrd=38.5714e-3 nrs=38.5714e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=4
xm37 vout net10 net062 vcc pch_5_mac l=1e-6 w=3e-6 ad=1.44e-12 as=1.44e-12 pd=6.96e-6 ps=6.96e-6 nrd=90e-3 nrs=90e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=5
xm34 net2 _net1 net3 net3 pch_5_mac l=2e-6 w=28e-6 ad=7.56e-12 as=10.5e-12 pd=30.16e-6 ps=45e-6 nrd=9.64286e-3 nrs=9.64286e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=4 multi=2
xm25 net041 net041 vcc vcc pch_5_mac l=1e-6 w=3e-6 ad=1.44e-12 as=1.44e-12 pd=6.96e-6 ps=6.96e-6 nrd=90e-3 nrs=90e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=5
xm38 net10 net10 net041 vcc pch_5_mac l=1e-6 w=3e-6 ad=1.44e-12 as=1.44e-12 pd=6.96e-6 ps=6.96e-6 nrd=90e-3 nrs=90e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=5
xm36 net20 _net2 net3 net3 pch_5_mac l=2e-6 w=28e-6 ad=7.56e-12 as=10.5e-12 pd=30.16e-6 ps=45e-6 nrd=9.64286e-3 nrs=9.64286e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=4 multi=2
xm24 net3 net026 net060 vcc pch_5_mac l=1e-6 w=3e-6 ad=1.44e-12 as=1.44e-12 pd=6.96e-6 ps=6.96e-6 nrd=90e-3 nrs=90e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=5
xm33 net2 _net0 net1 net1 pch_5_mac l=2e-6 w=28e-6 ad=7.56e-12 as=10.5e-12 pd=30.16e-6 ps=45e-6 nrd=9.64286e-3 nrs=9.64286e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=4 multi=2
xm35 net20 _net3 net1 net1 pch_5_mac l=2e-6 w=28e-6 ad=7.56e-12 as=10.5e-12 pd=30.16e-6 ps=45e-6 nrd=9.64286e-3 nrs=9.64286e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=4 multi=2
xm32 net062 net041 vcc vcc pch_5_mac l=1e-6 w=3e-6 ad=1.44e-12 as=1.44e-12 pd=6.96e-6 ps=6.96e-6 nrd=90e-3 nrs=90e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=5
xm21 net061 net021 vcc vcc pch_5_mac l=1e-6 w=3e-6 ad=1.44e-12 as=1.44e-12 pd=6.96e-6 ps=6.96e-6 nrd=90e-3 nrs=90e-3 sa=480e-9 sb=480e-9 sd=540e-9 sca=0 scb=0 scc=0 nf=1 multi=5
.ENDS
