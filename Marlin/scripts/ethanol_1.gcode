G28 A ; calibrate slider
G0 A0
G4 S1 ;wait 1 second
G28 Z
G4 S1
G28 V ;calibrate gantry
G4 S1
G0 V70 ;move gantry
G4 S1
G28 Y X ;calibrate gripper and elbow
G0 X0 
G4 S1 ;wait 1 second

G28 B C ;calibrate stackers
G4 S1; 


G0 A28 ;move slider 
G4 S1
G0 B320 ;lift stacker support 
G4 S2 

M260 A8  ;move front stacker cam via i2c
M260 B48
M260 S1
G4 S2

G0 B230 ;lower stacker support 
G4 S1
M260 A8
M260 B49
M260 S1
G4 S2
G0 B0 ; lower stacker support more
G4 S1

G0 A221 ;move slider
G4 S1 ;wait 1 second
G0 Y12 ;open gripper 
G4 S1 ;wait 1 second
G0 Z105 ;lower z lift 
G4 S1 ;wait 1 second
G0 Y1 ;close gripper
G4 S1 ;wait 1 second
G0 Z0 ;raise z lift 
G4 S1 ;wait 1 second
G0 A10 ;retract slider
G4 S1 ;wait 1 second
G0 X72
 ;rotate arm 90 degrees 
G4 S1 ;wait 1 second

G0 V9
G4 S1 
G0 Z135
G4 S1 

G0 Y12 ;open gripper 
G4 S1 ;wait 1 second

G0 Z50

G4 S1 
G0 V70 ;move gantry 
G4 S5

;ethanol 2

G4 S1
G28 Y
G0 Y12
G4 S1
G0 V9
G4 S1
G0 Z145
G4 S1
G0 Y1
G4 S1

G0 Z70
G4 S1
G0 V100 
G4 S1

G0 X0 
G4 S1
G0 A320
G4 S1
G0 Z105

G4 S1
G0 Y12
G4 S1
G0 Z0
G4 S1
G0 A2
G4 S1
G0 X0 
G4 S1

G0 C320
G4 S1
G0 C0 
G4 S1