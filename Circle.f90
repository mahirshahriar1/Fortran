program main 
    implicit none
    real:: a, b, total, pi, area, radius
    pi = 3.14159
    a = 9
    b = 7
    total = a + b
    print *, 'The total is: ', total
    write(*,*) 'The total is: ', total
    ! the difference between write and print is that write is used to write to a file
    ! and print is used to write to the screen
    ! * is used to write to the screen
    ! here write(*,*) is used to write to the screen without any file

    ! to calculate the area of a circle
    radius = 4
    area = pi * radius**2
    print *  ! to print a blank line
    print *, 'The area of the circle is: ', area
    write(*,*) 'Radius was: ', radius

end program main