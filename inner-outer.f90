program sqrt_calculation
    implicit none 
    real :: desired_no, divisor_no, x
    write(*,*) 'Find the square root of a number/divisor'
    print *
    write(*,*) 'Enter the divisor and target number: '
    read *, divisor_no, desired_no
    ! Outer means the outer if statement
    ! Inner means the inner if statement
    outer: if (divisor_no /= 0) then 
        inner: if (desired_no < 0) then 
            write(*,*) 'Invalid input'
        else inner             
            x = sqrt(desired_no) / divisor_no
            write(*,*) 'Divisor number is: ', divisor_no
            write(*,*) 'Desired number is: ', desired_no
            write(*,*) 'The square root of the desired number divided by the divisor number is: ', x
        end if inner
        
    else outer
        write(*,*) 'Invalid input'
    end if outer

end program sqrt_calculation


! if (divisor_no /= 0) then
!     if (desired_no < 0) then
!         write(*,*) 'Invalid input'
!     else
!         x = sqrt(desired_no) / divisor_no
!         write(*,*) 'Divisor number is: ', divisor_no
!         write(*,*) 'Desired number is: ', desired_no
!         write(*,*) 'The square root of the desired number divided by the divisor number is: ', x
!     end if
! else
!     write(*,*) 'Invalid input'
! end if
