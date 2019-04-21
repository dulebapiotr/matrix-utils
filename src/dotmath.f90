module dotmath

    implicit none
    public :: dotmull
    private :: dot_mul_4, dot_mul_8, dot_mul_16

    interface dotmull
    procedure dot_mul_4, dot_mul_8, dot_mul_16
    end interface

    contains

    function dot_mul_4(A,B) result(C)
        real (kind=4), intent(in), dimension(:,:)::A,B
        real (kind=4), dimension(size(A(1,:)),size(B(:,1)))::C
        real:: vec_A(size(A(:,1)))
        real:: vec_B(size(A(:,1)))
        integer::x,y,z
        integer::i,k
        x=size(A(1,:))
        y=size(A(:,1))
        z=size(B(:,1))
        do k=1,z
            do  i=1,x 
                vec_A= A(i,:)
                vec_B=B(:,k)
                C(i,k)=dot_product(vec_A,vec_B)
            end do
        end do
    
    end function dot_mul_4

    function dot_mul_8(A,B) result(C)
        real (kind=8), intent(in), dimension(:,:)::A,B
        real (kind=8), dimension(size(A(1,:)),size(B(:,1)))::C
        real (kind=8):: vec_A(size(A(:,1)))
        real (kind=8):: vec_B(size(A(:,1)))
        integer::x,y,z
        integer::i,k
        x=size(A(1,:))
        y=size(A(:,1))
        z=size(B(:,1))
        do k=1,z
            do  i=1,x 
                vec_A= A(i,:)
                vec_B=B(:,k)
                C(i,k)=dot_product(vec_A,vec_B)
            end do
        end do
    
    end function dot_mul_8

    function dot_mul_16(A,B) result(C)
        real (kind=16), intent(in), dimension(:,:)::A,B
        real (kind=16), dimension(size(A(1,:)),size(B(:,1)))::C
        real (kind=16):: vec_A(size(A(:,1)))
        real (kind=16):: vec_B(size(A(:,1)))
        integer::x,y,z
        integer::i,k
        x=size(A(1,:))
        y=size(A(:,1))
        z=size(B(:,1))
        do k=1,z
            do  i=1,x 
                vec_A= A(i,:)
                vec_B=B(:,k)
                C(i,k)=dot_product(vec_A,vec_B)
            end do
        end do
    
    end function dot_mul_16

end module dotmath