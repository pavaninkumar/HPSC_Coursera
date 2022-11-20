program GANHANp
	implicit none ! Means that every variable must be declared.
	! If not present then variable types are obtained from certain rules.
	! In such a case, the variables need not be declared.
	real(kind = 8) :: x,y,z
	! real by default is float with 4 bytes of memory
	! kind = 8 sets 8 bytes of memory, similar to a double variable
	x = 3.d0 ! Sets x = 3.E0, with double precision(3.000....)
	y = 1.d-1 ! Sets y = 1.E-1, with double precision(0.100...)
	! We can use 1.E-1, but it is single precision
	z = x + y
	print *, "z = ", z ! * - means that there is no specific format and that
	! all available digits of z will be printed
end program GANHANp
