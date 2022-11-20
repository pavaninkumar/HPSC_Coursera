! Program to illustrate the use of functions, recursive functions and subroutines
program procEg

implicit none 

real :: r
real :: a,b
integer :: n, f

print *, "Enter the radius"
read (*,*) r
a = area_Cir(r)
print *, "Area is ", a

print *, "Enter number whose factorial is required"
read (*,*) n
f = fact(n)
print *, "The factorial is ", f

a = 1.0; b = 2.0

call swap(a,b)

print *, "a = ", a
print *, "b = ", b

contains

	function area_Cir (r)
		implicit none
		
		real, intent(in) :: r
		real :: pi = 4*atan(1.0)
		real  :: area_Cir
	
		area_Cir = pi * r**2
	end function area_Cir
	
	recursive function fact (n) result (factorial)
		implicit none
		
		integer, intent(in) :: n
		integer :: factorial
	
		if(n == 1 .or. n == 0) then
			factorial = 1
		else if(n < 0) then
			factorial = 0
		else
			factorial = n*fact(n-1)
		end if
	end function fact
	
	subroutine swap(x,y)
		implicit none
		
		real, intent (inout) :: x,y
		
		x = x+y
		y = x-y
	end subroutine swap

end program procEg
