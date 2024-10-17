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
N 920 -730 920 -700 {lab=xxx}
N 920 -820 1020 -820 {lab=out}
N 790 -820 810 -820 {lab=in}
N 810 -820 820 -820 {lab=in}
N 820 -820 830 -820 {lab=in}
N 920 -940 1040 -940 {lab=vdd}
N 920 -940 920 -900 {lab=vdd}
N 920 -870 970 -870 {lab=vdd}
N 970 -940 970 -870 {lab=vdd}
N 1020 -820 1040 -820 {lab=out}
N 920 -700 1050 -700 {lab=xxx}
N 920 -760 1000 -760 {lab=xxx}
N 1000 -760 1000 -700 {lab=xxx}
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
C {devices/ipin.sym} 790 -820 0 0 {name=p5 lab=in}
C {devices/iopin.sym} 1040 -940 0 0 {name=p2 lab=vdd}
C {devices/opin.sym} 1040 -820 0 0 {name=p1 lab=out}
C {devices/iopin.sym} 1050 -700 0 0 {name=p3 lab=gnd}
