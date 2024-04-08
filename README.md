# PythagoreanTripletsFortran
Calculate Pythagorean Triplets written in Fortran 95

This file calculates the Pythagorean Triplets as whole (integer) numbers that satisfy the A^2 + B^2 = C^2 formula.
This is written in Fortran 95.

The values for A and B are limited to a given upper value, like 20.

This method uses the formulas to calculate the A,B,C values:
m ranges from 1 to maxNumber (20) 
n ranges from 1 to m - 1
1. A = m^2 - n^2
2. B = 2 * m * n
3. C = m^2 + n^2
