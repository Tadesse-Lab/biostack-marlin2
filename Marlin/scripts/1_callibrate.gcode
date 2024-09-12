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