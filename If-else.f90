program lettergrade
    implicit none
    real :: score
    print *, 'Enter the score: '
    read *, score

    if (score >= 90) then
        print *, 'The grade is A'
    else if (score >= 80) then
        print *, 'The grade is B'
    else if (score >= 70) then
        print *, 'The grade is C'
    else if (score >= 60) then
        print *, 'The grade is D'
    else
        print *, 'The grade is F'
    end if
end program lettergrade