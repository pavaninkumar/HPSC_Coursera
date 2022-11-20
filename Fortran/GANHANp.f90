program GANHANp

! A sample program to add two real numbers that shows the basic syntax of a Fortran program
! Comments begin with an exclamation mark

implicit none  ! Lets compiler to check that all variables are declared properly               ! To be used in the beginning of all programs

! Type declarations of all variables

real :: p,q,r

! Body of code should be here
! An example body could be:

p = 10
q = 20
r = p+q

print *,'Sum is ',p+q   ! * denotes that print outputs to the screen

print *,'r also has the value ',r

end program GANHANp
