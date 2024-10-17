v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -750 -230 -750 -170 {lab=GND}
N -750 -290 -370 -290 {lab=#net1}
N -750 -190 -370 -190 {lab=GND}
N -390 -260 -370 -260 {lab=#net1}
N -370 -290 -370 -260 {lab=#net1}
N -390 -220 -370 -220 {lab=GND}
N -370 -220 -370 -190 {lab=GND}
N -390 -240 -350 -240 {lab=out}
C {/home/hisyam/magang/inverter/ringosic.sym} -540 -240 0 0 {name=x1}
C {devices/vsource.sym} -750 -260 0 0 {name=V1 value=3 savecurrent=false}
C {devices/gnd.sym} -750 -170 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -350 -240 0 0 {name=p1 sig_type=std_logic lab=out}
C {devices/code_shown.sym} -570 -140 0 0 {name=spice only_toplevel=false value="
 .option wnflag=0
 .option savecurrents
 .control
 save all
 tran 1ps 10ns
 plot out
 op
 .endc
 "}
C {sky130_fd_pr/corner.sym} -240 -300 0 0 { name=TT_MODELS
 only_toplevel=true
 format="tcleval( @value )"
 value="
 ** opencircuitdesign pdks install
 .lib $::SKYWATER_MODELS/sky130.lib.spice tt
 "
 spice_ignore=false}
