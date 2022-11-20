program squareFunction

implicit none
real(kind = 8) :: y,z
real(kind = 8), external :: f
y = 2.
z = f(y)
print *,"z = ",z
end program squareFunction

real(kind = 8) function f(x)
	implicit none
	real(kind = 8),intent(in) :: x ! Tells that x is an input double
	f = x**2
end function f
