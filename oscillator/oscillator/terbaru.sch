v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 1810 -1390 1950 -1390 {lab=in}
N 1810 -1260 1990 -1260 {lab=gnd}
N 1990 -1270 1990 -1260 {lab=gnd}
N 1990 -1300 2080 -1300 {lab=gnd}
N 2080 -1300 2080 -1260 {lab=gnd}
N 1990 -1260 2080 -1260 {lab=gnd}
N 1900 -1300 1950 -1300 {lab=in}
N 1900 -1390 1900 -1300 {lab=in}
N 1810 -1430 1990 -1430 {lab=vdd}
N 1990 -1430 1990 -1420 {lab=vdd}
N 1990 -1390 2060 -1390 {lab=vdd}
N 2060 -1390 2080 -1390 {lab=vdd}
N 2080 -1430 2080 -1390 {lab=vdd}
N 1990 -1430 2080 -1430 {lab=vdd}
N 1990 -1360 1990 -1330 {lab=out}
N 1990 -1340 2040 -1340 {lab=out}
C {sky130_fd_pr/nfet_01v8.sym} 1970 -1300 0 0 {name=M1
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
C {sky130_fd_pr/pfet_01v8.sym} 1970 -1390 0 0 {name=M2
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
C {devices/ipin.sym} 1810 -1390 0 0 {name=p1 lab=in}
C {devices/ipin.sym} 1810 -1260 0 0 {name=p2 lab=gnd
}
C {devices/ipin.sym} 1810 -1430 0 0 {name=p3 lab=vdd}
C {devices/opin.sym} 2040 -1340 0 0 {name=p4 lab=out}
