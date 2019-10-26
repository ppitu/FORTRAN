program hello
implicit none

	character(len=15) :: surename, firstname
	character(len=6) :: title
	character(len = 25) :: greetings

	title = 'Mr. '
	firstname = 'Piotr '
	surename = 'Nowak '
	greetings = 'A big hello form Mr. Bead'

	print *, 'Here is', title, firstname, surename
	print *, greetings

end program hello
