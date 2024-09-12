G4 S1
G28 Y ; recalibrate gripper

G0 Y12 ;pick up plate from slider
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
G0 A320 ; have slider move to waste location
G4 S1
G0 Z105

G4 S1 ; gripper drops plate onto slider
G0 Y12
G4 S1
G0 Z0
G4 S1
G0 A2
G4 S1
G0 X0 
G4 S1

G0 C320 ; push plate into waste stacker
G4 S1
G0 C0 
G4 S1