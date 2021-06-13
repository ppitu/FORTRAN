module samogloski
    contains

    function read_character() result(str)
        character(len=1000) :: str
        open(unit=2, file="zad5_data.txt")
        read(2,*) str
        close(2)
        print *, len(str)
    end function read_character

    function policz_samogloski(str) result(x)
        character(len=1000), intent(in) :: str
        integer:: x
        x = 0
        do i= 1, len(str)
            select case(str(i:i))
                case ("a")
                x = x + 1
                case ("e")
                x = x + 1
                case ("i")
                x = x + 1
                case ("o")
                x = x + 1
                case ("u")
                x = x + 1
                case ("y")
                x = x + 1
                case ("A")
                x = x + 1
                case ("E")
                    x = x + 1
                case ("I")
                    x = x + 1
                case ("O")
                    x = x + 1
                case ("U")
                    x = x + 1
                case ("Y")
                    x = x + 1
            end select
        end do
    end function policz_samogloski

end module samogloski

program zad5
    use samogloski
    integer:: i
    character(len=1000) :: str
    str = read_character()
    print *, policz_samogloski(str)
end program zad5