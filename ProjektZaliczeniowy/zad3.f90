program zad3
    integer(kind=4):: suma
    print *, suma(1, 3)
end program zad3

recursive function suma(m, n) result(a)
    integer, intent(in) :: m, n
    integer :: a

    if(m == n) then
        a = m
    else
        a = n + suma(m, n - 1)
    end if
end function suma