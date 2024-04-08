program PythagoreanTriplets
    ! Calculate a given number of Pythagorean Triplets.
    ! Find whole (integer) numbers that satisfy the a^2 + b^2 = c^2 Pythagorean Triplets.
    ! Paul Saletzki
    ! April 7, 2024
    implicit none

    ! Declare variables
    integer :: m, n, a, b, c, temp, maxNum
    integer :: io

    ! Prepare file to output the Triplets.
    open(newunit=io, file='Pythagorean Triplets.csv', status="old", action="write")
    write(io,*) 'a,', 'b,', 'c'

    ! Calculate the Pythagorean Triplets given a number to go up to for calculating the triplets.
    maxNum = 20
    do m = 1,maxNum
        do n = 1, m-1
            a = m**2 - n**2
            b = 2*m*n
            c = m**2 + n**2
            if (a > b) then
                temp = a
                a = b
                b = temp
            end if
            
            print *, '(', a,',',b,',',c,')'
            write(io,*) a, ',', b,',', c
        end do
    end do
    close(io)

end program PythagoreanTriplets