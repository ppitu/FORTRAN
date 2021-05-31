MODULE funckja_korzytsa_z_procedur
    IMPLICIT NONE
    PUBLIC:: module_function, module_subroutine
    TYPE, PUBLIC:: new
        INTEGER :: j,k
    END TYPE new

    TYPE(new), PUBLIC :: z = new(1234,5678)

    CONTAINS
    FUNCTION module_function() RESULT (module_function_r)
        TYPE(new) :: module_function_r
        CALL internal_subroutine(module_function_r)
        RETURN
        CONTAINS
        SUBROUTINE internal_subroutine(u)
            TYPE(new),INTENT(OUT):: u
            u = new(22,11)
            CALL module_subroutine(u%j,u%k)
            RETURN
        END SUBROUTINE internal_subroutine
    END FUNCTION module_function

    SUBROUTINE internal_subroutine(i1,i2)
        INTEGER, INTENT (IN) :: i1, i2
        INTEGER :: x
        x = i1
        i1 = i2
        i2 = x
        RETURN
    END SUBROUTINE internal_subroutine
END MODULE funckja_korzytsa_z_procedur

PROGRAM prog41
    USE funckja_korzytsa_z_procedur
    IMPLICIT NONE
    INTEGER, PARAMETER:: value = 789
    TYPE(new):: exter
    INTEGER:: inter
    exter = module_function()
    PRINT *, exter
    inter = internal_function()
    PRINT *, inter

    CONTAINS
    FUNCTION internal_function() RESULT(internal_function_r)
        INTEGER :: internal_function_r
        internal_function_r = value
    END FUNCTION internal_function
END PROGRAM prog41