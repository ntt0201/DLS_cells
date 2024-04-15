v {xschem version=3.4.1 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -1060 -610 -1060 -560 {
lab=GND}
N -1060 -700 -1060 -670 {
lab=VDD}
N -1060 -430 -1060 -380 {
lab=GND}
N -1060 -510 -1060 -490 {
lab=Vin1}
N -930 -680 -930 -480 {
lab=Vin2}
N -980 -590 -940 -590 {
lab=Vin1}
N -980 -550 -930 -550 {
lab=Vin2}
N -670 -790 -670 -620 {
lab=Vout}
N -630 -790 -540 -790 {
lab=GND}
N -540 -790 -540 -400 {
lab=GND}
N -610 -400 -580 -400 {
lab=VDD}
N -610 -370 -610 -340 {
lab=GND}
N -630 -850 -630 -820 {
lab=VDD}
N -690 -830 -630 -830 {
lab=VDD}
N -1220 -420 -1220 -370 {
lab=GND}
N -1220 -500 -1220 -480 {
lab=Vin2}
N -630 -760 -630 -750 {
lab=#net1}
N -750 -750 -630 -750 {
lab=#net1}
N -930 -480 -880 -480 {
lab=Vin2}
N -840 -480 -810 -480 {
lab=GND}
N -810 -480 -810 -390 {
lab=GND}
N -840 -450 -840 -430 {
lab=#net2}
N -840 -430 -740 -430 {
lab=#net2}
N -740 -450 -740 -430 {
lab=#net2}
N -740 -480 -720 -480 {
lab=GND}
N -720 -480 -720 -350 {
lab=GND}
N -810 -390 -810 -340 {
lab=GND}
N -810 -340 -750 -340 {
lab=GND}
N -750 -340 -720 -340 {
lab=GND}
N -720 -350 -720 -340 {
lab=GND}
N -720 -340 -610 -340 {
lab=GND}
N -580 -830 -580 -400 {
lab=VDD}
N -630 -830 -580 -830 {
lab=VDD}
N -540 -400 -540 -340 {
lab=GND}
N -620 -340 -540 -340 {
lab=GND}
N -610 -440 -610 -430 {
lab=#net2}
N -740 -440 -610 -440 {
lab=#net2}
N -840 -540 -840 -510 {
lab=Vout}
N -840 -540 -740 -540 {
lab=Vout}
N -740 -540 -740 -510 {
lab=Vout}
N -750 -690 -750 -670 {
lab=#net3}
N -750 -720 -710 -720 {
lab=VDD}
N -710 -830 -710 -720 {
lab=VDD}
N -710 -830 -690 -830 {
lab=VDD}
N -750 -640 -710 -640 {
lab=VDD}
N -710 -720 -710 -640 {
lab=VDD}
N -930 -720 -790 -720 {
lab=Vin2}
N -930 -720 -930 -680 {
lab=Vin2}
N -940 -590 -830 -590 {
lab=Vin1}
N -830 -640 -830 -590 {
lab=Vin1}
N -830 -640 -790 -640 {
lab=Vin1}
N -830 -590 -830 -520 {
lab=Vin1}
N -830 -520 -780 -520 {
lab=Vin1}
N -780 -520 -780 -480 {
lab=Vin1}
N -750 -610 -750 -540 {
lab=Vout}
N -750 -580 -670 -580 {
lab=Vout}
N -670 -580 -650 -580 {
lab=Vout}
N -670 -620 -670 -580 {
lab=Vout}
N -670 -400 -650 -400 {
lab=Vout}
N -670 -580 -670 -400 {
lab=Vout}
C {devices/vsource.sym} -1060 -640 0 0 {name=V1 value=0.8
}
C {devices/gnd.sym} -750 -340 0 0 {name=l2 lab=GND}
C {devices/vdd.sym} -1060 -700 0 0 {name=l3 lab=VDD}
C {devices/gnd.sym} -1060 -560 0 0 {name=l4 lab=GND}
C {sky130_fd_pr/corner.sym} -400 -550 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/vsource.sym} -1060 -460 0 0 {name=Vin value="pulse( 0 0.8 0 0 0 5 10)"
}
C {devices/gnd.sym} -1060 -380 0 0 {name=l6 lab=GND}
C {devices/code_shown.sym} -410 -310 0 0 {name=SPICE only_toplevel=false value="
.save all
.control
tran 0.1 100
meas tran curr_avg avg v1#branch from=0s to=50s
meas tran curr_avg1 avg v1#branch from=0s to=100s
let P1=curr_avg1*0.8
let P=curr_avg*0.8 
print P1
print P
print P>>Power_dls.txt
set color0=white
set colot1=black
set xbrushwidth=5
plot Vin1+2 Vin2+1 Vout+0
.endc

"}
C {devices/lab_pin.sym} -1060 -510 0 0 {name=p3 sig_type=std_logic lab=Vin1}
C {devices/lab_pin.sym} -980 -590 0 0 {name=p4 sig_type=std_logic lab=Vin1}
C {devices/lab_pin.sym} -980 -550 0 0 {name=p5 sig_type=std_logic lab=Vin2}
C {sky130_fd_pr/nfet_01v8.sym} -650 -790 0 0 {name=M8
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
C {sky130_fd_pr/pfet_01v8.sym} -630 -400 0 0 {name=M9
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
C {devices/vdd.sym} -630 -850 0 0 {name=l5 lab=VDD}
C {devices/vsource.sym} -1220 -450 0 0 {name=Vin1 value="pulse( 0.8 0 2.5 0 0 10 100)"
}
C {devices/gnd.sym} -1220 -370 0 0 {name=l7 lab=GND}
C {devices/lab_pin.sym} -1220 -500 0 0 {name=p6 sig_type=std_logic lab=Vin2}
C {devices/lab_pin.sym} -650 -580 2 0 {name=p7 sig_type=std_logic lab=Vout}
C {sky130_fd_pr/nfet_01v8.sym} -860 -480 0 0 {name=M1
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
C {sky130_fd_pr/nfet_01v8.sym} -760 -480 0 0 {name=M2
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
C {sky130_fd_pr/pfet_01v8.sym} -770 -720 0 0 {name=M3
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
C {sky130_fd_pr/pfet_01v8.sym} -770 -640 0 0 {name=M4
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
