PROGRAM p15
        IMPLICIT NONE
        REAL, DIMENSION(2:20,-30:30,0:10):: t, y, tplus
        t = 2.0
        y = 3.0
        tplus = t + y
        PRINT *, tplus
        STOP
END PROGRAM p15

