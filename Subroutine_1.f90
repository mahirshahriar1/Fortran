program swap_number_main
    implicit none
    real:: num1, num2
    print *, 'Enter the two numbers: '
    read(*,*) num1, num2
    print *, 'The numbers before swapping are: ', num1, num2
    call swap_number(num1, num2)
    print *, 'The numbers after swapping are: ', num1, num2
    contains 
        subroutine swap_number(a,b)
            real:: a,b,temp
            temp = a
            a = b
            b = temp
        end subroutine swap_number
end program swap_number_main
    