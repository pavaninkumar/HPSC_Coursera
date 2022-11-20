! Program to use loops
program loop
	implicit none
	integer, parameter :: n = 10000 ! parameter defines a constant
	real (kind = 8), dimension(n) :: x,y ! Creates arrays
	integer :: i
	do i = 1,n ! Loops as i runs from 1 to n
		x(i) = 3.d0 * i
	enddo ! Every do statement requires an enddo
	
	do i = 1,n
		y(i) = 2.d0 * i
	enddo
	
	print *, "Last y computed = ", y(n)
end program loop
