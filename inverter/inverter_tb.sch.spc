** sch_path: /home/hisyam/magang/inverter_tb.sch
.subckt inverter_tb

XM1 out in GND GND sky130_fd_pr__nfet_01v8 L=0.15 W=1 nf=1 m=1
XM2 out in net1 net1 sky130_fd_pr__pfet_01v8 L=0.15 W=1 nf=1 m=1
V1 in GND 0
V2 net1 GND 1.8
**** begin user architecture code

 ** opencircuitdesign pdks install
 .lib /home/hisyam/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt



 .option wnflag=0
 .control
 dc v2 0 1.8 0.01
 plot in out
 op
 .endc


**** end user architecture code
.ends
.GLOBAL GND
.end
