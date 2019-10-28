program deriveDataType

	!type declaration
	type Books
		character(len=50) :: title
		character(len=50) :: author
		character(len=150) :: subject
		integer :: book_id
	end type Books
	
	!declaring type varuables
	type(Books) :: book1
	type(Books) :: book2

	!accessing the components of the structure
	book1%title = "C Programing"
	book1%author = "nuha Ali"
	book1%subject = "C Programing Tutorial"
	book1%book_id = 6453378

	book2%title = "Telecom Biling"
	book2%author = "Zara Ali"
	book2%subject = "Telecom Billing Tutorial"
	book2%book_id = 6458930

	!display book info
	print*, book1%title
	print*, book1%author
	print*, book1%subject
	print*, book1%book_id

	print*, book2%title
	print*, book2%author
	print*, book2%subject
	print*, book2%book_id

end program deriveDataType
