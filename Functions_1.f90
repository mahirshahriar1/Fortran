program main
    implicit none
    real:: avg, a,b,c, calc_avg 
    write(*,*) 'Enter the three numbers: '
    read(*,*) a,b,c
    avg = calc_avg(a,b,c)
    write(*,*) 'The average of', a, ',', b, 'and', c, 'is', avg
end program main

real function calc_avg(a,b,c)
    real:: a,b,c
    calc_avg = (a+b+c)/3 
    ! In fortran, the return value is assigned to the function name
    ! We also must have a variable with the same name as the function name
    ! to store the return value
    ! Otherwise, the return value will be lost 
    return ! Obsolete in F90 and F95
end function calc_avg