; bed.g
; called to perform automatic bed compensation via G32
;
; generated by RepRapFirmware Configuration Tool on Mon Apr 16 2018 20:44:39 GMT+0200 (CEST)
M561 ; clear any bed transform
G28  ; home all axes
; Probe the bed at 4 points
G30 P0 X15 Y15 H0 Z-99999
G30 P1 X15 Y195 H0 Z-99999
G30 P2 X235 Y195 H0 Z-99999
G30 P3 X235 Y15 H0 Z-99999 S