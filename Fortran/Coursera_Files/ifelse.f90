! Program to use if-else statements
program ifelse
	implicit none
	real (kind = 8) :: x
	integer :: i
	
	i = 3
	
	if(i <= 2) then ! if should be followed by then
		print *, "i is less than equal to 2"
	else if (i /= 5) then ! /= is "not equal to"
		print *, "i is greater than 2 but not equal to 5"
	else
		print *, "i is equal to 5"
	endif ! Every if-else should end in an endif
end program ifelse
