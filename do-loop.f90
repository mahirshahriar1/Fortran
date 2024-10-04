program factorial


    implicit none 
    integer :: i, n, fact, mx
    print *, 'Enter the number: '
    read *, n 
    fact = 1
    do i = 1, n, 1
        if (i > 4) exit ! calculate factorial upt 4 only
        fact = fact * i
    end do
    if (n > 4) then
        mx = 4
    else
        mx = n
    end if
    print *, 'The factorial of ', mx, ' is: ', fact
end program factorial