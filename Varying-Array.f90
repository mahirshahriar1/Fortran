program dynamic_array_example
    implicit none
    ! dimension(:,:) means that the array is dynamic
    ! dimension(1:rows, 1:cols) means that the array is fixed
    ! dimension(:) means that the array is dynamic and 1D
    ! allocatable means that the array is dynamic
    real, dimension(:,:), allocatable :: dynamic_1
    integer :: i, j, rows, cols
    write(*,*) 'Enter the number of rows and columns: '
    read(*,*) rows, cols

    allocate(dynamic_1(rows, cols)) ! allocate memory for the array
    
    do i = 1, rows, 1
        do j = 1, cols, 1
            dynamic_1(i, j) = i * j
            print *, 'Dynamic_1(', i,',', j, ') = ', dynamic_1(i, j)
        end do
    end do

    ! write(*,*) 'Dynamic Array: '
    ! do i = 1, rows, 1
    !     write(*,*) (dynamic_1(i, j), j = 1, cols, 1)
    !     ! the j = 1, cols is a do loop inside a write statement with step 1
    ! end do

    deallocate(dynamic_1) ! deallocate memory for the array
end program dynamic_array_example