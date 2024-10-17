v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 920 -840 920 -790 {lab=out}
N 830 -870 880 -870 {lab=in}
N 830 -870 830 -760 {lab=in}
N 830 -760 880 -760 {lab=in}
N 520 -940 520 -810 {lab=#net1}
N 520 -940 920 -940 {lab=#net1}
N 920 -940 920 -900 {lab=#net1}
N 600 -830 600 -810 {lab=in}
N 600 -830 830 -830 {lab=in}
N 920 -730 920 -700 {lab=GND}
N 520 -700 920 -700 {lab=GND}
N 520 -750 520 -700 {lab=GND}
N 600 -750 600 -700 {lab=GND}
N 710 -700 710 -670 {lab=GND}
N 920 -760 1030 -760 {lab=GND}
N 1030 -760 1030 -700 {lab=GND}
N 920 -700 1030 -700 {lab=GND}
N 920 -870 1020 -870 {lab=#net1}
N 1020 -940 1020 -870 {lab=#net1}
N 920 -940 1020 -940 {lab=#net1}
N 920 -820 1020 -820 {lab=out}
C {sky130_fd_pr/nfet_01v8.sym} 900 -760 0 0 {name=M1
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 900 -870 0 0 {name=M2
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/vsource.sym} 600 -780 0 0 {name=V1 value=0 savecurrent=false}
C {devices/vsource.sym} 520 -780 0 0 {name=V2 value=1.8 savecurrent=false}
C {devices/gnd.sym} 710 -670 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 1020 -820 0 0 {name=p1 sig_type=std_logic lab=out}
C {devices/lab_pin.sym} 700 -830 0 0 {name=p2 sig_type=std_logic lab=in}
C {sky130_fd_pr/corner.sym} 1080 -930 0 0 { name=TT_MODELS
 only_toplevel=true
 format="tcleval( @value )"
 value="
 ** opencircuitdesign pdks install
 .lib $::SKYWATER_MODELS/sky130.lib.spice tt
 "
 spice_ignore=false}
C {devices/code_shown.sym} 1090 -770 0 0 {name=spice only_toplevel=false value="
 .option wnflag=0
 .option savecurrents
 .control
 save all
 dc v2 0 1.8 0.01
 plot in out
 op
 .endc
 "}
C {/home/hisyam/magang/inverter_tb.sch} 810 -940 0 0 {}
