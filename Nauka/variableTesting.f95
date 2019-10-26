program variableTesting
implicit none

	!declaring variables
	integer :: total
	real :: average
	complex :: cx
	logical :: done
	character(len=80) :: message !a string of 80 characters

	!assigning value
	total = 200000
	average = 1666.67
	done = .true.
	message = "A big Hellow world!!!"
	cx = (3.0, 5.0) !cx = 3.0 + 5.0i

	print *, total
	print *, average
	print *, cx
	print *, done
	print *, message

end program variableTesting
