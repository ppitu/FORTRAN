program testingChar
implicit none

	character :: a, b, c
	a = 'A'
	b = 'a'
	c = 'B'

	if(lgt(a,b)) then
		print *, 'A is lexically greater than a'
	else
		print *, 'a is lexically greater than A'
	end if

	if(lgt(a,c)) then
		print *, 'A is lexically greater than B'
	else
		print *, 'B is lexically greater than A'
	end if

end program testingChar
