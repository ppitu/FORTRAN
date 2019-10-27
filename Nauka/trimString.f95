program trimString
implicit none
	
	character(len=*), parameter :: fname = "Piotr", sname = "Nowak"
	character(len = 20) :: fullname

	fullname = fname//" "//sname !laczenie stringow

	print*, fullname, ", the beautiful dancer from the east!"
	print*, trim(fullname), ", the beautiful dancer from the east!"

end program trimString
