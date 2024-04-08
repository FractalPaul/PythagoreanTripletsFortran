program PythagoreanTriplets
    ! Calculate a given number of Pythagorean Triplets.
    ! Find whole (integer) numbers that satisfy the a^2 + b^2 = c^2 Pythagorean Triplets.
    ! Paul Saletzki
    ! April 7, 2024
    implicit none

    ! Declare variables
    integer :: m, n, a, b, c, temp, maxNum, i
    integer, dimension(200,3) :: pythTriplets
      
    ! Calculate the Pythagorean Triplets given a number to go up to for calculating the triplets.
    maxNum = 20
    i = 1
    do m = 1,maxNum
        do n = 1, m-1
            a = m**2 - n**2
            b = 2*m*n
            c = m**2 + n**2

            ! Order the A and B values in ascending order.
            if (a > b) then
                temp = a
                a = b
                b = temp
            end if
            pythTriplets(i, 1) = a
            pythTriplets(i, 2) = b
            pythTriplets(i, 3) = c

            !print *, '(', a,',',b,',',c,')', ' diff=>' , a**2 + b**2 - c**2
            print *, pythTriplets(i,1), ",", pythTriplets(i,2), ",", pythTriplets(i,3)
            
            i = i+1
        end do
    end do
    i=i-1 !reset back to actual count.
    print *, 'Total Pythagorean Triplets calculated: ', i
    call write_file(i, pythTriplets)
    
    print *, 'Size Dim 1:', size(pythTriplets, 1)
    print *, "Size Dim 2:", size(pythTriplets, 2)

end program PythagoreanTriplets

! Write the output array to an output file.
subroutine write_file(numOut, outputArr)    
    integer, intent(in) :: numOut
    integer, dimension(200,3), intent(in) :: outputArr
    integer :: io, i
    character(50) :: filename

    filename = 'Pythagorean Triplets.csv'
    ! Prepare file to output the Triplets.
    open(newunit=io, file= filename, action="write")
    write(io,*) 'A,', 'B,', 'C'

    print *, 'File written: ', filename

    ! Write output values to file.
    do i =1, numOut
        write(io,*) outputArr(i,1),  ',', outputArr(i,2),',', outputArr(i,3)
    end do

    close(io)
end subroutine write_file