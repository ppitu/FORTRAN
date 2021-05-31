MODULE zawiera_procedure_Norm
    IMPLICIT NONE
    PUBLIC:: Norm
    CONTAINS
    SUBROUTINE Norm(v, total, flag)
        REAL, DIMENSION(:), INTENT(IN):: v
        REAL, INTENT(OUT) :: total
        LOGICAL, INTENT(OUT) :: flag

        total = SQR(SUM(v*v))

        flag=(total>=1.0E5)
        RETURN
    END SUBROUTINE Norm
END MODULE zawiera_procedure_Norm

PROGRAM prog38
    USE zawiera_funkcje_Norm
    IMPLICIT NONE
    REAL, DIMENSION(6), PARAMETER :: &
            v = (/10.0,200.0,3000.0,40000.0,500000.0,60000000.0/)
    REAL :: total; LOGICAL :: flag
    WRITE(UNIT=*,FMT=*)v
    WRITE(UNIT=*,FMT=*)v
    WRITE(UNIT=*,FMT=*)v
    WRITE(UNIT=*,FMT=*)v
    CALL Norm(v,total,flag)
END PROGRAM prog38