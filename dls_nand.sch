v {xschem version=3.4.1 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -280 50 -280 100 {
lab=GND}
N -280 -40 -280 -10 {
lab=VDD}
N -280 230 -280 280 {
lab=GND}
N -280 150 -280 170 {
lab=Vin1}
N -90 10 -90 40 {
lab=Vout}
N -90 40 120 40 {
lab=Vout}
N 30 10 30 40 {
lab=Vout}
N -90 -90 -90 -50 {
lab=VDD}
N -90 -90 30 -90 {
lab=VDD}
N 30 -90 30 -50 {
lab=VDD}
N -30 -130 -30 -90 {
lab=VDD}
N -30 -130 90 -130 {
lab=VDD}
N -90 -20 -40 -20 {
lab=VDD}
N -40 -90 -40 -20 {
lab=VDD}
N 30 -20 70 -20 {
lab=VDD}
N 70 -130 70 -20 {
lab=VDD}
N 30 130 30 150 {
lab=#net1}
N 30 100 50 100 {
lab=GND}
N 50 100 50 180 {
lab=GND}
N 30 180 50 180 {
lab=GND}
N 30 180 50 180 {
lab=GND}
N 50 180 50 220 {
lab=GND}
N 30 40 30 70 {
lab=Vout}
N -50 100 -10 100 {
lab=Vin1}
N -50 180 -10 180 {
lab=Vin2}
N -20 -20 -10 -20 {
lab=Vin1}
N -20 -20 -20 70 {
lab=Vin1}
N -160 70 -20 70 {
lab=Vin1}
N -50 70 -50 100 {
lab=Vin1}
N -150 -20 -130 -20 {
lab=Vin2}
N -150 -20 -150 180 {
lab=Vin2}
N -150 180 -50 180 {
lab=Vin2}
N -200 70 -160 70 {
lab=Vin1}
N -200 110 -150 110 {
lab=Vin2}
N 30 260 150 260 {
lab=GND}
N 110 -130 110 40 {
lab=Vout}
N 110 40 110 200 {
lab=Vout}
N 150 -130 240 -130 {
lab=GND}
N 240 -130 240 260 {
lab=GND}
N 150 260 240 260 {
lab=GND}
N 150 200 180 200 {
lab=GND}
N 180 200 180 260 {
lab=GND}
N 150 230 150 260 {
lab=GND}
N 150 -190 150 -160 {
lab=VDD}
N 90 -170 90 -130 {
lab=VDD}
N 90 -170 150 -170 {
lab=VDD}
N 30 210 90 210 {
lab=#net2}
N 90 150 90 210 {
lab=#net2}
N 90 150 150 150 {
lab=#net2}
N 150 150 150 170 {
lab=#net2}
N -440 240 -440 290 {
lab=GND}
N -440 160 -440 180 {
lab=Vin2}
N 150 -100 150 -90 {
lab=VDD}
N 30 -90 150 -90 {
lab=VDD}
N 50 220 50 260 {
lab=GND}
N 30 260 30 270 {
lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} 10 100 0 0 {name=M1
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
C {devices/vsource.sym} -280 20 0 0 {name=V1 value=0.8
}
C {devices/gnd.sym} 30 270 0 0 {name=l2 lab=GND}
C {devices/vdd.sym} -280 -40 0 0 {name=l3 lab=VDD}
C {devices/gnd.sym} -280 100 0 0 {name=l4 lab=GND}
C {sky130_fd_pr/corner.sym} 380 110 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/vsource.sym} -280 200 0 0 {name=Vin value="pulse( 0 0.8 0 0 0 5 10)"
}
C {devices/gnd.sym} -280 280 0 0 {name=l6 lab=GND}
C {devices/code_shown.sym} 370 350 0 0 {name=SPICE only_toplevel=false value="
.save all
.control
tran 0.1 50
meas tran curr_avg avg v1#branch from=0s to=50s
let P=curr_avg*0.8 
print P>>Power_dls.txt
set color0=white
set colot1=black
set color2=purple
set xbrushwidth=5
plot Vin1+2 Vin2+1 Vout+0
.endc

"}
C {devices/lab_pin.sym} -280 150 0 0 {name=p3 sig_type=std_logic lab=Vin1}
C {sky130_fd_pr/nfet_01v8.sym} 10 180 0 0 {name=M5
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
C {sky130_fd_pr/pfet_01v8.sym} 10 -20 0 0 {name=M6
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
C {sky130_fd_pr/pfet_01v8.sym} -110 -20 0 0 {name=M7
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
C {devices/lab_pin.sym} -200 70 0 0 {name=p4 sig_type=std_logic lab=Vin1}
C {devices/lab_pin.sym} -200 110 0 0 {name=p5 sig_type=std_logic lab=Vin2}
C {sky130_fd_pr/nfet_01v8.sym} 130 -130 0 0 {name=M8
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
C {sky130_fd_pr/pfet_01v8.sym} 130 200 0 0 {name=M9
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
C {devices/vdd.sym} 150 -190 0 0 {name=l5 lab=VDD}
C {devices/vsource.sym} -440 210 0 0 {name=Vin1 value="pulse( 0.8 0 2.5 0 0 5 10)"
}
C {devices/gnd.sym} -440 290 0 0 {name=l7 lab=GND}
C {devices/lab_pin.sym} -440 160 0 0 {name=p6 sig_type=std_logic lab=Vin2}
C {devices/lab_pin.sym} 120 40 2 0 {name=p7 sig_type=std_logic lab=Vout}
