program plot_example
    implicit none
    integer i, n 
    real :: pi, area, radius 
    real, dimension(:), allocatable :: radius_array
    real, dimension(:), allocatable :: area_array 

    pi = 3.1416

    write(*,*) 'Enter the data points:'
    read *, n 
    allocate(radius_array(n))
    allocate(area_array(n))
    
    do i = 1, n
        radius = i 
        area = pi * radius**2
        radius_array(i) = radius
        area_array(i) = area
    end do

    ! writing output to a file 
    open(12, file ='example.dat', status='new')
    ! status='new' means that the file will be created if it does not exist
    ! the "12" is the unit number

    do i = 1, n
        ! the "12" is the unit number
        ! the * is used to write to the screen
        write(12,*) radius_array(i), area_array(i)
    end do
    close(12)

    deallocate(radius_array)
    deallocate(area_array)
end program plot_example