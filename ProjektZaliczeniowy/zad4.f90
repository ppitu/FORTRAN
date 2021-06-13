PROGRAM zad4
    IMPLICIT NONE
    INTEGER, PARAMETER :: rdp=SELECTED_REAL_KIND(15)
    INTEGER, PARAMETER :: idp = SELECTED_INT_KIND(15)
    REAL(KIND=rdp) :: xx, yy, rr, pi_moje, delta
    REAL(KIND=rdp) :: p=3.1415926358979323846
    REAL :: x = 0
    INTEGER(KIND=idp) :: i, wewnatrz
    INTEGER, PARAMETER :: max_do=10000000_idp
    REAL :: SUM = 0

    CALL init_random_seed()

    CALL RANDOM_NUMBER(XX)
    CALL RANDOM_NUMBER(YY)

    DO i=1, max_do
        call RANDOM_NUMBER(XX)
        xx = x + xx * (p - x)
        SUM = SUM + f(xx)
    END DO

    PRINT *, (p - x)*(SUM/max_do)
    STOP

CONTAINS
    SUBROUTINE init_random_seed()
        INTEGER :: i, n, clock
        INTEGER, DIMENSION(:), ALLOCATABLE :: seed

        CALL RANDOM_SEED(SIZE=n)
        PRINT *, "SIZE = ", n
        ALLOCATE(seed(n))

        CALL SYSTEM_CLOCK(COUNT=clock)
        PRINT *, "CLOCK = ", clock

        seed = clock + 37 * (/(i-1, i=1, n)/)
        CALL RANDOM_SEED(PUT = seed)

        DEALLOCATE(seed)
    END SUBROUTINE init_random_seed

    FUNCTION f(x) result(z)
        real(KIND=8), intent(in):: x
        real(KIND=8 ) :: z

        z = sin(x)
    END FUNCTION f

END PROGRAM zad4