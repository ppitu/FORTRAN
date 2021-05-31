MODULE nasze_Zmienne
    IMPLICIT NONE
    REAL :: rank, x,y
END MODULE nasze_Zmienne

PROGRAM prog36
    USE nasze_Zmienne

    INTERFACE
        SUBROUTINE root()
            USE nasze_Zmienne

        END SUBROUTINE root
    END INTERFACE

    x= 1048576; rank = 20
    CALL root()
    WRITE(*,*) x, y
    STOP
END PROGRAM prog36

SUBROUTINE root()
    USE nasze_Zmienne
    y=EXP(LOG(x/rank))
    RETURN
END SUBROUTINE root