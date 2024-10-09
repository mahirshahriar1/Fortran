! Newton's method : Solve f(x) = 0
! f(x) = x^3 + x - 3
! f'(x) = 3x^2 + 1

program root_finding_newton 
    implicit none
    real :: x = 1
    real :: error_tolerance = 1e-6
    integer i ! no colon means we cannot assign value to i here
    integer maxit, converg 
    ! maxit is the maximum number of iterations 
    ! converg is a flag to check if the method converges

    i = 0
    maxit = 100
    converg = 0
    do while (converg == 0 .and. i <maxit)
        x = x - f_x(x)/f_prime_x(x)
        if (abs(f_x(x)) < error_tolerance) then
            converg = 1
        end if
        i = i + 1
    end do

    if (converg == 1) then
        print *, 'The root is: ', x
    else
        print *, 'The method did not converge'
    end if

    contains 
        function f_x(x)
            real :: f_x, x
            f_x = x**3 + x - 3
        end function f_x

        function f_prime_x(x)
            real :: f_prime_x, x
            f_prime_x = 3*x**2 + 1
        end function f_prime_x
    
end program root_finding_newton
