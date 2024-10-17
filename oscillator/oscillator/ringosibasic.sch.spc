** sch_path: /home/b_hidayat/oscillator/ringosibasic.sch
.subckt ringosibasic vdd out gnd
*.PININFO vdd:B gnd:B out:O
x1 vdd out net2 gnd terbaru
x2 vdd net2 net1 gnd terbaru
x3 vdd net1 out gnd terbaru
.ends

* expanding   symbol:  terbaru.sym # of pins=4
** sym_path: /home/b_hidayat/oscillator/terbaru.sym
** sch_path: /home/b_hidayat/oscillator/terbaru.sch
.subckt terbaru vdd in out gnd
*.PININFO in:I gnd:I vdd:I out:O
XM1 out in gnd gnd sky130_fd_pr__nfet_01v8 L=0.15 W=1 nf=1 m=1
XM2 out in vdd vdd sky130_fd_pr__pfet_01v8 L=0.15 W=1 nf=1 m=1
.ends

.end
