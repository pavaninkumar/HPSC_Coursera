program squareSub
	implicit none
	real(kind = 8), dimension(3) :: y,z
	integer n
	y = (/ 2.,3.,4. /) ! Initialises all elements of y
	n = size(y)
	call fsub(y,n,z)
	print *,"z = ",z
end program squareSub

subroutine fsub(y,n,z)
! Square each element of the array
	implicit none
	integer, intent(in) :: n
	real(kind = 8), dimension(n), intent(in) :: y
	real(kind = 8), dimension(n), intent(out) :: z
	z = y**2
end subroutine fsub
