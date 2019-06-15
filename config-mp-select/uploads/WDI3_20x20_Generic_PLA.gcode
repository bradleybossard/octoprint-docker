;FLAVOR:Marlin
;TIME:0
;Filament used: 0m
;Layer height: 0.1
;MINX:2.14748e+006
;MINY:2.14748e+006
;MINZ:2.14748e+006
;MAXX:-2.14748e+006
;MAXY:-2.14748e+006
;MAXZ:-2.14748e+006
;Generated with Cura_SteamEngine 4.1.0
M140 S60
M105
M190 S60
M104 S200
M105
M109 S200
M82 ;absolute extrusion mode
G21 ;metric values
 G90 ;absolute positioning
 M82 ;set extruder to absolute mode
 M107 ;start with the fan off
 G28 X0 Y0 ;move X/Y to min endstops
 G28 Z0 ;move Z to min endstops
 G1 Z15.0 F120 ;move the platform down 15mm
 G92 E0 ;zero the extruded length
 G1 F200 E6 ;extrude 6 mm of feed stock
 G92 E0 ;zero the extruded length again
 G1 F120 
 ;Put printing message on LCD screen
 M117 Printing...
G92 E0
G92 E0
G1 F1500 E-6.5
;LAYER_COUNT:0
M140 S0
M107
M104 S0 ;extruder heater off 
 G91 ;relative positioning
 G1 E-1 F300  ;retract the filament a bit before lifting the nozzle, to release some of the pressure
 G1 Z+0.5 E-5 X-20 Y-20 F120 ;move Z up a bit and retract filament even more
 G28 X0 Y0 ;move X/Y to min endstops, so the head is out of the way
 M84 ;steppers off
 G90 ;absolute positioning
M82 ;absolute extrusion mode
M104 S0
;End of Gcode
