program DataTypes

! Program to explain the different data types in Fortran
! and the different ways to declare a variable

implicit none

! The 'kind' specifier sets the size of the variable in bytes

real(kind=8) :: realNo		! Default is 4 bytes
integer(kind=2) :: shortVal
integer(kind=4) :: val		! This is the default size: 4 bytes
integer(kind=16) :: longVal
complex :: compVal
logical :: boolean = .true.
character(len=30) :: name	! Strings are declared as characters with length specified (instead of kind)
real, parameter :: pi = 3.14159	! A constant variable that cannot be modified

compVal = (3,5)			! Stores 3.0+i5.0
				! Can be alternatively written as
				! compVal = cmplx(3,5)
name = 'Pavan Kumar Vaitheeswaran'
!boolean = .true.	! Already set at declaration

! The huge() function returns the largest value that can be held by the specified integer variable

print *,'2 bytes, integer: ',huge(shortVal)
print *,'4 bytes, integer: ',huge(val)
print *,'16 bytes, integer: ',huge(longVal)
print *,'8 bytes, real: ',huge(realNo)
print *,'Sample complex value: ',compVal
print *,'Set Logical value: ',boolean
print *,'Accessing part of string using colon operator: ',name(1:11)
print *,'The fill string is: ',name
print *,'Defined constant: ',pi
print *,'Size of logical variables in bytes: ',kind(boolean)

end program DataTypes


