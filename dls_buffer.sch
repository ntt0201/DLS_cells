v {xschem version=3.4.1 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -320 -240 -320 -220 {
lab=#net1}
N -450 -270 -360 -270 {
lab=Vin}
N -450 -190 -360 -190 {
lab=Vin}
N -450 -270 -450 -190 {
lab=Vin}
N -320 -230 -210 -230 {
lab=#net1}
N -530 -230 -450 -230 {
lab=Vin}
N -660 -310 -660 -260 {
lab=GND}
N -660 -400 -660 -370 {
lab=VDD}
N -660 -130 -660 -80 {
lab=GND}
N -660 -210 -660 -190 {
lab=Vin}
N -170 -450 -170 -430 {
lab=VDD}
N -320 -370 -320 -300 {
lab=#net2}
N -320 -370 -170 -370 {
lab=#net2}
N -320 -270 -240 -270 {
lab=VDD}
N -240 -440 -240 -270 {
lab=VDD}
N -170 -400 -80 -400 {
lab=GND}
N -80 -400 -80 -70 {
lab=GND}
N -170 -120 -120 -120 {
lab=GND}
N -120 -120 -120 -70 {
lab=GND}
N -240 -230 -240 -120 {
lab=#net1}
N -240 -120 -210 -120 {
lab=#net1}
N -220 -400 -220 -230 {
lab=#net1}
N -220 -400 -210 -400 {
lab=#net1}
N -240 -440 -170 -440 {
lab=VDD}
N -320 -190 -270 -190 {
lab=GND}
N -270 -190 -270 -70 {
lab=GND}
N -170 -90 -170 -70 {
lab=GND}
N -320 -160 -170 -160 {
lab=#net3}
N -170 -160 -170 -150 {
lab=#net3}
N 70 -240 70 -220 {
lab=Vout}
N -60 -270 30 -270 {
lab=#net1}
N -60 -190 30 -190 {
lab=#net1}
N -60 -270 -60 -190 {
lab=#net1}
N 70 -230 180 -230 {
lab=Vout}
N -140 -230 -60 -230 {
lab=#net1}
N 70 -370 70 -300 {
lab=#net4}
N 70 -370 220 -370 {
lab=#net4}
N 70 -270 150 -270 {
lab=VDD}
N 150 -440 150 -270 {
lab=VDD}
N 220 -400 310 -400 {
lab=GND}
N 310 -400 310 -70 {
lab=GND}
N 70 -70 310 -70 {
lab=GND}
N 220 -120 270 -120 {
lab=GND}
N 270 -120 270 -70 {
lab=GND}
N 150 -230 150 -120 {
lab=Vout}
N 150 -120 180 -120 {
lab=Vout}
N 170 -400 170 -230 {
lab=Vout}
N 170 -400 180 -400 {
lab=Vout}
N 150 -440 220 -440 {
lab=VDD}
N 70 -190 120 -190 {
lab=GND}
N 120 -190 120 -70 {
lab=GND}
N 220 -90 220 -70 {
lab=GND}
N 70 -160 220 -160 {
lab=#net5}
N 220 -160 220 -150 {
lab=#net5}
N -210 -230 -140 -230 {
lab=#net1}
N -170 -440 150 -440 {
lab=VDD}
N 220 -440 220 -430 {
lab=VDD}
N -80 -70 70 -70 {
lab=GND}
N -260 -70 -80 -70 {
lab=GND}
N -270 -70 -260 -70 {
lab=GND}
N 180 -230 350 -230 {
lab=Vout}
C {sky130_fd_pr/nfet_01v8.sym} -340 -190 0 0 {name=M1
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
C {sky130_fd_pr/pfet_01v8.sym} -340 -270 0 0 {name=M2
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
C {devices/vsource.sym} -660 -340 0 0 {name=V1 value=0.8
}
C {devices/vdd.sym} -170 -450 0 0 {name=l1 lab=VDD}
C {devices/vdd.sym} -660 -400 0 0 {name=l3 lab=VDD}
C {devices/gnd.sym} -660 -260 0 0 {name=l4 lab=GND}
C {sky130_fd_pr/corner.sym} 730 -490 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/vsource.sym} -660 -160 0 0 {name=Vin value="pulse( 0 0.8 0 0 0 5 10)"
}
C {devices/gnd.sym} -660 -80 0 0 {name=l6 lab=GND}
C {devices/code_shown.sym} 720 -250 0 0 {name=SPICE only_toplevel=false value="
.save all
.control
tran 0.1 50
set color0=white
set color1=black
set color2=blue
set color3=red
set xbrushwidth=5
plot Vin+1 Vout+0.2
.endc

"}
C {devices/lab_pin.sym} -530 -230 0 0 {name=p1 sig_type=std_logic lab=Vin}
C {devices/lab_pin.sym} -660 -210 0 0 {name=p3 sig_type=std_logic lab=Vin}
C {sky130_fd_pr/pfet_01v8.sym} -190 -120 0 0 {name=M3
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
C {sky130_fd_pr/nfet_01v8.sym} -190 -400 0 0 {name=M4
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
C {sky130_fd_pr/nfet_01v8.sym} 50 -190 0 0 {name=M5
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
C {sky130_fd_pr/pfet_01v8.sym} 50 -270 0 0 {name=M6
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
C {devices/gnd.sym} 70 -70 0 0 {name=l7 lab=GND}
C {devices/lab_pin.sym} 350 -230 2 0 {name=p5 sig_type=std_logic lab=Vout}
C {sky130_fd_pr/pfet_01v8.sym} 200 -120 0 0 {name=M7
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
C {sky130_fd_pr/nfet_01v8.sym} 200 -400 0 0 {name=M8
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
