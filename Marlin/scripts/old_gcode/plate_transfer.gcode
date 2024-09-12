G28 A ; calibrate slider
G4 S1 ;wait 1 second
G28 X Y Z ;calibrate elbow and z lift 
G4 S1 ;wait 1 second
G28 B C U ;calibrate stacker 

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
G0 A10 ;retrack slider
G4 S1 ;wait 1 second
G0 X75 ;rotate arm 90 degrees 
G4 S1 ;wait 1 second
G0 Y12 ;open gripper 
G4 S1 ;wait 1 second
G0 X0 ; move arm back 
G4 S1 ;wait 1 second
G0 Y0 ; close gripper
