; Configuration file for Duet WiFi (firmware version 1.20 or newer)
; executed by the firmware on start-up
;
; generated by RepRapFirmware Configuration Tool on Mon Apr 16 2018 20:44:39 GMT+0200 (CEST)

; General preferences
G90                                       ; Send absolute coordinates...
M83                                       ; ...but relative extruder moves

M667 S1                                   ; Select CoreXY mode

; Network
M550 PzHEVO                               ; Set machine name
M552 S1                                   ; Enable network
M586 P0 S1                                ; Enable HTTP
M586 P1 S1                                ; Enable FTP
M586 P2 S0                                ; Disable Telnet

; Drives
M569 P0 S0                                ; Drive 0 goes backwards
M569 P1 S0                                ; Drive 1 goes backwards
M569 P2 S1                                ; Drive 2 goes forwards
M569 P3 S1                                ; Drive 3 goes forwards
M350 X16 Y16 Z16 E16 I1                   ; Configure microstepping with interpolation
M92 X80 Y80 Z400 E403                     ; Set steps per mm
M566 X800 Y800 Z12 E800                   ; Set maximum instantaneous speed changes (mm/min)
M203 X12000 Y12000 Z400 E9000               ; Set maximum speeds (mm/min)
M201 X800 Y800 Z250 E800                   ; Set accelerations (mm/s^2)
M906 X1000 Y1000 Z1000 E1200 I30           ; Set motor currents (mA) and motor idle factor in per cent
M84 S30                                   ; Set idle timeout

; Axis Limits
M208 X-21 Y-87 Z0 S1                        ; Set axis minima
M208 X250 Y210 Z300 S0                    ; Set axis maxima

; Endstops
M574 X1 Y1 S1                             ; Set active high endstops
M574 Z1 S0

; Z-Probe
M558 P0
;M558 P0 H5 F120 T7200                     ; Disable Z probe but set dive height, probe speed and travel speed
;M557 X15:285 Y50:285 S20                  ; Define mesh grid

; Heaters
M301 H0 S1.00 P10 I0.1 D200 T0.4 W180 B30 ; Use PID on bed heater (may require further tuning)
M305 P0 T100000 B3950 C0 R4700             ; Set thermistor + ADC parameters for heater 0
M143 H0 S120                              ; Set temperature limit for heater 0 to 120C
M305 P1 T100000 B3950 C0 R4700             ; Set thermistor + ADC parameters for heater 1
M143 H1 S280                              ; Set temperature limit for heater 1 to 230C

M307 H0 A80.0 C233.2 D15.9 S1 B0	; PID autotuning BED
M307 H1 A694.4 C155.0 D 4.6S1		; PID autotuning Tool 1

; Fans
M106 P0 S0 I0 F500 H-1                 ; Set fan 0 value, PWM signal inversion and frequency. Thermostatic control is turned off
M106 P1 S1 I0 F500 H1 T50                   ; Set fan 1 value, PWM signal inversion and frequency. Thermostatic control is turned on
;M106 P2 S1 I0 F500 H-1                    ; Set fan 2 value, PWM signal inversion and frequency. Thermostatic control is turned off

; Tools
M563 P0 D0 H1 F0                            ; Define tool 0: extruder 0, heater 1 fan 0
G10 P0 X0 Y0 Z0                           ; Set tool 0 axis offsets
G10 P0 R0 S0                              ; Set initial tool 0 active and standby temperatures to 0C
M572 D0 S0.1				  ; Enable pressure advance (linear)

; Automatic saving after power loss is not enabled

; Custom settings are not configured

; Miscellaneous
T0                                        ; Select first tool