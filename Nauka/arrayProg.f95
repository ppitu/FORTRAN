program arrayProg

	real :: numbers(5) 
	integer :: matrix(3, 3), i, j

	do i = 1, 5
		numbers(i) = i * 2.0
	end do

	do i = 1, 5
		print*, numbers(i)
	end do

	do i = 1, 3
		do j = 1, 3
			matrix(i, j) = i + j
		end do
	end do
	
	do i = 1, 3
		do j = 1, 3
			print*, matrix(i, j)
		end do
	end do

	!short hand assigment
	numbers = (/1.5, 3.2, 4.5, 0.9, 7.2 /)

	do i = 1, 5
		print*, numbers(i)
	end do

end program arrayProg
