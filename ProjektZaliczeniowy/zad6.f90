function y(x) result (z)
    real, intent(in):: x
    real :: z

    z = x*x*x + (-3) * (x*x) + (-4) * (x) + 12
end function y


program zad6
    real:: y
    real:: x1, x2, x3
    real(kind=4):: start, prev_value
    real:: temp
    integer:: calc

    calc = 0
    start = -3

    prev_value = y(-3.0)

    do i = 0, 7000
        start = start + 0.001
        temp = y(start)

        if ((prev_value < 0 .AND. temp > 0) .OR. (prev_value > 0 .AND. temp < 0)) then
            if(calc == 0) then
                x1 = start
                calc = cacl + 1
            else if(calc == 1) then
                x2 = start
                calc = calc + 1
            else
                x3 = start
            end if
        end if

        prev_value = temp
    end do

    print *, x1, x2, x3
end program zad6