program zad1
    integer n, liczby_parzyste, liczby_nieparzyste

    liczby_parzyste = 0
    liczby_nieparzyste = 0

    open(unit=1, file="zad1_data.txt")

    do i = 1, 15
        read(1,*) n
        if(modulo(n, 2) == 0) then
            liczby_parzyste = liczby_parzyste + n
        else
            liczby_nieparzyste = liczby_nieparzyste + n
        end if
    end do

    close(1)

    print *, "Liczby parzyste", liczby_parzyste
    print *, "Liczby nieparzyste", liczby_nieparzyste

end program zad1