PROGRAM p6
        IMPLICIT NONE

        TYPE person
                CHARACTER(LEN=12) :: first_name
                CHARACTER(LEN=1) :: middle_initial
                CHARACTER(LEN=12) :: last_name
                INTEGER :: age
                CHARACTER(LEN=1) :: sex
                CHARACTER(LEN=11) :: social_security
        END TYPE person

        TYPE(person) :: jack, jill

        jack=person("Jack", "R", "HAGEn", 47, "M", "123-32-2345")
        jill=person("Jill", "M", "Smith", 45, "F", "342-34-3245")

        PRINT *, jill%last_name

        PRINT *, jack%age

        IF(jack%sex=="F") PRINT *, jack%first_name, " jest kobieta"
        IF(jill%sex=="F") PRINT *, jill%first_name, " jest kobieta"

        STOP
END PROGRAM p6
