v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 160 -90 220 -90 {lab=#net1}
N -230 20 0 20 {lab=GND}
N -230 -40 -230 20 {lab=GND}
N 0 20 230 20 {lab=GND}
N 230 -50 230 20 {lab=GND}
N 160 -50 230 -50 {lab=GND}
N 160 -70 220 -70 {lab=out}
N 220 -130 220 -90 {lab=#net1}
N -230 -130 220 -130 {lab=#net1}
N -230 -130 -230 -100 {lab=#net1}
C {ringosibasic.sym} 10 -70 0 0 {name=x1}
C {devices/lab_pin.sym} 220 -70 0 0 {name=p1 sig_type=std_logic lab=out
}
C {devices/vsource.sym} -230 -70 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/gnd.sym} 0 20 0 0 {name=l1 lab=GND}
C {sky130_fd_pr/corner.sym} 520 -260 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/code_shown.sym} 310 -150 0 0 {name=spice only_toplevel=false value="
.option wnflag=0
.option savecurrents
.control
save all
tran 1ps 10ns
plot out
op
.endc
"}
