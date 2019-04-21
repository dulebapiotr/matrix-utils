program main
    
    use naivemath
    use bettermath
    use dotmath

    implicit none
    integer :: i,x,y
    integer :: sizes(8) 
    real (kind =4),allocatable,dimension(:,:) :: A_4,B_4,C_4 
    real (kind =8),allocatable,dimension(:,:) :: A_8,B_8,C_8
    real (kind =16),allocatable,dimension(:,:) :: A_16,B_16,C_16
    real (kind =16) :: rand
    real :: time_start
    real :: time_stop
    real :: time_naive, time_better, time_dot, time_matmul



    open (unit = 2, file = "../res/results")
    !write(2,*)"rozmiar:kind:method:time"
 
    sizes = [10,20,40,80,160,320,640,1280]

    ! pętla gówna dla każdego z rozmiarów
    do i=1,8
        
        allocate(A_4(sizes(i),sizes(i)))
        allocate(B_4(sizes(i),sizes(i)))
        allocate(C_4(sizes(i),sizes(i)))

        allocate(A_8(sizes(i),sizes(i)))
        allocate(B_8(sizes(i),sizes(i)))
        allocate(C_8(sizes(i),sizes(i)))

        allocate(A_16(sizes(i),sizes(i)))
        allocate(B_16(sizes(i),sizes(i)))
        allocate(C_16(sizes(i),sizes(i)))

        
        ! w tej pętli wypełniam macierze wartościami losowymi, rand jest kind=16
        do x=1,sizes(i)
            do y=1,sizes(i)
                CALL RANDOM_NUMBER(rand)
                A_4(x,y)=rand
                A_8(x,y)=rand
                A_16(x,y)=rand
                CALL RANDOM_NUMBER(rand)
                B_4(x,y)=rand
                B_8(x,y)=rand
                B_16(x,y)=rand
                C_4(x,y)=0
                C_8(x,y)=0
                C_16(x,y)=0
            end do
         end do

         call cpu_time(time_start)
         C_4=naivmull(A_4,B_4)
         call cpu_time(time_stop)
         write(2,*) sizes(i),":4:naive:",time_stop-time_start

         call cpu_time(time_start)
         C_8=naivmull(A_8,B_8)
         call cpu_time(time_stop)
         write(2,*) sizes(i),":8:naive:",time_stop-time_start

         call cpu_time(time_start)
         C_16=naivmull(A_16,B_16)
         call cpu_time(time_stop)
         write(2,*) sizes(i),":16:naive:",time_stop-time_start

         do x=1,sizes(i)
            do y=1,sizes(i)
                C_4(x,y)=0
                C_8(x,y)=0
                C_16(x,y)=0
            end do
         end do

         call cpu_time(time_start)
         C_4=bettmull(A_4,B_4)
         call cpu_time(time_stop)
         write(2,*) sizes(i),":4:better:",time_stop-time_start

         call cpu_time(time_start)
         C_8=bettmull(A_8,B_8)
         call cpu_time(time_stop)
         write(2,*) sizes(i),":8:better:",time_stop-time_start

         call cpu_time(time_start)
         C_16=bettmull(A_16,B_16)
         call cpu_time(time_stop)
         write(2,*) sizes(i),":16:better:",time_stop-time_start

         do x=1,sizes(i)
            do y=1,sizes(i)
                C_4(x,y)=0
                C_8(x,y)=0
                C_16(x,y)=0
            end do
         end do

         call cpu_time(time_start)
         C_4=dotmull(A_4,B_4)
         call cpu_time(time_stop)
         write(2,*) sizes(i),":4:dot:",time_stop-time_start

         call cpu_time(time_start)
         C_8=dotmull(A_8,B_8)
         call cpu_time(time_stop)
         write(2,*) sizes(i),":8:dot:",time_stop-time_start

         call cpu_time(time_start)
         C_16=dotmull(A_16,B_16)
         call cpu_time(time_stop)
         write(2,*) sizes(i),":16:dot:",time_stop-time_start

         do x=1,sizes(i)
            do y=1,sizes(i)
                C_4(x,y)=0
                C_8(x,y)=0
                C_16(x,y)=0
            end do
         end do
         
         call cpu_time(time_start)
         C_4=matmul(A_4,B_4)
         call cpu_time(time_stop)
         write(2,*) sizes(i),":4:matmul:",time_stop-time_start

         call cpu_time(time_start)
         C_8=matmul(A_8,B_8)
         call cpu_time(time_stop)
         write(2,*) sizes(i),":8:matmul:",time_stop-time_start

         call cpu_time(time_start)
         C_16=matmul(A_16,B_16)
         call cpu_time(time_stop)
         write(2,*) sizes(i),":16:matmul:",time_stop-time_start

         do x=1,sizes(i)
            do y=1,sizes(i)
                C_4(x,y)=0
                C_8(x,y)=0
                C_16(x,y)=0
            end do
         end do
         
         
         

    
      





        if (allocated(A_4)) deallocate(A_4)
        if (allocated(B_4)) deallocate(B_4)
        if (allocated(C_4)) deallocate(C_4)


        if (allocated(A_8)) deallocate(A_8)
        if (allocated(B_8)) deallocate(B_8)
        if (allocated(C_8)) deallocate(C_8)

        if (allocated(A_16)) deallocate(A_16)
        if (allocated(B_16)) deallocate(B_16)
        if (allocated(C_16)) deallocate(C_16)

    end do

   

     
end program main