program zad2
    integer:: kapital, procent

    procent = 2
    kapital = 1000

    do i = 1, 30
        kapital = kapital + (kapital * 0.02)
    end do

    print *, kapital

end program zad2