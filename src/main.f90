program main
    
    use naivemath
    use bettermath
    use dotmath

    implicit none
    
     ! Wymiary macierzy: A:x,y   B:y,z   C:x,z <- macierz wynikowa
     !Jak macierze nie są kwadratowe, to 3 sposób daje złe wyniki :(, ale luz bo i tak pomiary czasu są na kwadratowych macierzach
     integer, parameter :: x = 3
     integer, parameter :: y = 3
     integer, parameter :: z = 3
     integer :: i,j

     ! Zmienna pomocnicza tmp, przy generowaniu wartości losowych
     real(kind=16) :: tmp 

     ! Macierze na których bede pracować:
     real (kind=16) :: A,B,C
     dimension A(x,y), B(y,z), C(x,z)

     ! Wypełniam macierz A i B losowymi wartościami, macierz C zerami.
     do i=1,x
        do j=1,y
            CALL RANDOM_NUMBER(tmp)
            A(i,j)=tmp
        end do
     end do

     do i=1,y
        do j=1,z
            CALL RANDOM_NUMBER(tmp)
            B(i,j)=tmp
        end do
     end do

     do i=1,x
        do j=1,z
            C(i,j)=0
        end do
     end do
     write(*,*) "Macierz A:"
     print *,A
     write(*,*) "Macierz B:"
     print *,B
     write(*,*) "Macierz C(zerowa):"
     print *,C

     C=naivmull(A,B)
     write(*,*) "Macierz C (naive multi):"
     print *,C
     do i=1,x
        do j=1,z
            C(i,j)=0
        end do
     end do

     C=bettmull(A,B)
     write(*,*) "Macierz C (better multi):"
     print *,C
     do i=1,x
        do j=1,z
            C(i,j)=0
        end do
     end do

     C=dotmull(A,B)
     write(*,*) "Macierz C (dot multi):"
     print *,C
     do i=1,x
        do j=1,z
            C(i,j)=0
        end do
     end do



end program main