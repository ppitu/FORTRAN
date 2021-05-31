MODULE moje_procedure_i_funkcje
    IMPLICIT NONE
    PUBLIC:: Input, Temp_C, Output
    CONTAINS
    SUBROUTINE Input(f_temp)
        REAL, INTENT(OUT):: f_temp
        WRITE(UNIT=*,FMT=*)
        READ(UNIT=*,FMT=*)
        RETURN
    END SUBROUTINE Input

    FUNCTION Temp_C(f_temp) RESULT (temp_c_r)
        REAL, INTENT(IN):: f_temp; REAL :: temp_c_r
        REAL, PARAMETER :: t_scale = 1.8, offset = 32.0
        temp_c_r = (f_temp - offset)/t_scale
        RETURN
    END FUNCTION Temp_C

    SUBROUTINE Output (f_temp, temp_c_r)
        REAL, INTENT(IN):: f_temp, temp_c_r
        WRITE(UNIT=*,FMT=*)f_temp, temp_c_r
        WRITE(UNIT=*,FMT=*)INT(f_temp),INT(temp_c_r)
        WRITE(UNIT=*,FMT=*)NINT(f_temp),NINT(temp_c_r)
        RETURN
    END SUBROUTINE Output
END MODULE moje_procedure_i_funkcje

PROGRAM prog40
    USE moje_procedure_i_funkcje
    IMPLICIT NONE
    REAL:: fahr
    CALL Input(fahr)
    CALL Output(fahr)
END PROGRAM prog40