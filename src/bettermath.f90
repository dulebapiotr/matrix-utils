module bettermath

    implicit none
    public :: bettmull
    private :: better_mul_4, better_mul_8, better_mul_16

    interface bettmull
    procedure better_mul_4, better_mul_8, better_mul_16
    end interface

    contains

    function better_mul_4(A,B) result(C)
        real (kind=4), intent(in), dimension(:,:)::A,B
        real (kind=4), dimension(size(A(1,:)),size(B(:,1)))::C
        integer::x,y,z
        integer::i,j,k
        x=size(A(1,:))
        y=size(A(:,1))
        z=size(B(:,1))
        do j=1,y 
            do k=1,z
                do i=1,x
                    C(i,j)=C(i,j)+A(i,k)*B(k,j)
                end do
            end do
         end do
    
    end function better_mul_4

    function better_mul_8(A,B) result(C)
        real (kind=8), intent(in), dimension(:,:)::A,B
        real (kind=8), dimension(size(A(1,:)),size(B(:,1)))::C
        integer::x,y,z
        integer::i,j,k
        x=size(A(1,:))
        y=size(A(:,1))
        z=size(B(:,1))
        do j=1,y 
            do k=1,z
                do i=1,x
                    C(i,j)=C(i,j)+A(i,k)*B(k,j)
                end do
            end do
         end do
    
    end function better_mul_8

    function better_mul_16(A,B) result(C)
        real (kind=16), intent(in), dimension(:,:)::A,B
        real (kind=16), dimension(size(A(1,:)),size(B(:,1)))::C
        integer::x,y,z
        integer::i,j,k
        x=size(A(1,:))
        y=size(A(:,1))
        z=size(B(:,1))
        do j=1,y 
            do k=1,z
                do i=1,x
                    C(i,j)=C(i,j)+A(i,k)*B(k,j)
                end do
            end do
         end do
    
    end function better_mul_16

end module bettermath