program pointerExample
implicit none

	integer, pointer :: p1
	allocate(p1)

	p1 = 1
	print*, p1

	p1 = p1 + 4
	print*, p1

end program pointerExample
