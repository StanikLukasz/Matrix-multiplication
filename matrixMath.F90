#define DOT_USE 0
#define CACHE_OPT 0
    
module matrixMath
    implicit none
    
contains
    subroutine mult (A, B, R, status)
        implicit none
        
        ! variables
        real (kind = 8), intent(in) :: A(:,:) 
        real (kind = 8), intent(in) :: B(:,:) 
        real (kind = 8), intent(out) :: R(:,:)
        
        integer (kind = 4), intent(out) :: status
        integer (kind = 4) :: Ar, Ac, Br, Bc, Rr, Rc
        integer (kind = 4) :: i, j, k
        
        
        ! checking dimensions condition
        logical :: dim_condition
        
        Ar = size(A(:,1))
        Ac = size(A(1,:))
        Br = size(B(:,1))
        Bc = size(B(1,:))
        Rr = size(R(:,1))
        Rc = size(R(1,:))
        
        dim_condition = (Ac .EQ. Br) .AND. (Ar .EQ. Rr) .AND. (Bc .EQ. Rc)
        
        ! returning with status = -1 if condition is not true
        if (.NOT. dim_condition) then
            status = -1
            return
        end if
        
        ! multiplying itself
        do i = 1, Ar
            do j = 1, Bc
                R(i,j) = 0.d0
                do k = 1, Ac
                    X(i,j) = X(i,j) + A(i,k) * B(k,j)
                end do
            end do
        end do
        status = 0
        
    end subroutine mult
    
end module matrixMath
        
        