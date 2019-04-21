module naivemath

    implicit none
    public :: naivmull
    private :: naive_mul_4, naive_mul_8, naive_mul_16

    interface naivmull
    procedure naive_mul_4, naive_mul_8, naive_mul_16
    end interface

    contains

    function naive_mul_4(A,B) result(C)
        real (kind=4), intent(in), dimension(:,:)::A,B
        real (kind=4), dimension(size(A(1,:)),size(B(:,1)))::C
        integer::x,y,z
        integer::i,j,k
        x=size(A(1,:))
        y=size(A(:,1))
        z=size(B(:,1))
        do i=1,x 
            do j=1,y
                do k=1,z
                    C(i,j)=C(i,j)+A(i,k)*B(k,j)
                end do
            end do
        end do
    end function naive_mul_4

    function naive_mul_8(A,B) result(C)
        real (kind=8), intent(in), dimension(:,:)::A,B
        real (kind=8), dimension(size(A(1,:)),size(B(:,1)))::C
        integer::x,y,z
        integer::i,j,k
        x=size(A(1,:))
        y=size(A(:,1))
        z=size(B(:,1))
        do i=1,x 
            do j=1,y
                do k=1,z
                    C(i,j)=C(i,j)+A(i,k)*B(k,j)
                end do
            end do
        end do
    end function naive_mul_8

    function naive_mul_16(A,B) result(C)
        real (kind=16), intent(in), dimension(:,:)::A,B
        real (kind=16), dimension(size(A(1,:)),size(B(:,1)))::C
        integer::x,y,z
        integer::i,j,k
        x=size(A(1,:))
        y=size(A(:,1))
        z=size(B(:,1))
        do i=1,x 
            do j=1,y
                do k=1,z
                    C(i,j)=C(i,j)+A(i,k)*B(k,j)
                end do
            end do
        end do
    end function naive_mul_16

end module naivemath