program Array_Operations

implicit none

integer, dimension(10) :: numArr	! 1D array with 10 elements
integer, dimension(2,4) :: numMat	! 2D integer array

real, dimension(2:3,3:4) :: realMat	! 2D real array with bounded indices

integer :: i
integer, dimension(2,2) :: resMat
integer, dimension(3,2) :: resMat2


do i = 1,size(numArr)
	numArr(i) = i**2
enddo

numMat = reshape((/ 1, 2, 3, 4, 5, 6, 7, 8 /),(/ 2, 4 /))

print *,'2nd through 7th elements of numArr: ',numArr(2:7)
print *,'Magnitude of numArr: ',sqrt(real(dot_product(numArr,numArr)))

resMat = matmul(numMat,transpose(numMat))

print *,'Matrix product of numMat and its transpose: '
do i = 1,2
	print *,resMat(i,:)
enddo

print *,'Maximum and minimum value of the resultant matrix: ', maxval(resMat),' ',minval(resMat)

print *,'Reshaping result by expanding into (3,2) matrix: '

resMat2 = reshape(resMat,(/ 3, 2 /),(/ 2, 3, 4 /),(/ 2, 1 /))	! Rows are filled sequentially

do i = 1,3
	print *,resMat2(i,:)
enddo

end program Array_Operations
