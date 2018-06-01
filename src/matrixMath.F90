#define DOT_USE 0
#define CACHE_OPT 0
    
module matrixMath
    implicit none
    
contains
    subroutine mult (A, B, X, status)
        implicit none
        
        ! variables
        real (kind = 8), intent(in) :: A(:,:) 
        real (kind = 8), intent(in) :: B(:,:) 
        real (kind = 8), intent(out) :: X(:,:)
        
        integer (kind = 4), intent(out) :: status
        integer (kind = 4) :: Ar, Ac, Br, Bc, Xr, Xc
        integer (kind = 4) :: i, j, k
        
        
        ! checking dimensions condition
        logical :: dim_condition
        
        Ar = size(A(:,1))
        Ac = size(A(1,:))
        Br = size(B(:,1))
        Bc = size(B(1,:))
        Xr = size(X(:,1))
        Xc = size(X(1,:))
        
        dim_condition = (Ac .EQ. Br) .AND. (Ar .EQ. Xr) .AND. (Bc .EQ. Xc)
        
        ! returning with status = -1 if condition is not true
        if (.NOT. dim_condition) then
            status = -1
            return
        end if
        
        ! multiplying itself
#if CACHE_OPT == 0        
        do i = 1, Xr
            do j = 1, Xc
#if DOT_USE == 0               
                    X(i,j) = 0.d0
                    do k = 1, Ac
                        X(i,j) = X(i,j) + A(i,k) * B(k,j)
                    end do
#else
                    X(i,j) = dot_product(A(i,:),B(:,j))
#endif                
            end do
        end do
#else
        ichunk = 512 ! 3MB cache
        
        do ii = 1, Xr, ichunk
            do jj = 1, Xc, i chunk
                
                do i = ii, min(ii + ichunk - 1, Xr)
                    do j = jj, min(jj + ichunk - 1, Xc)
#if DOT_USE == 0               
                            X(i,j) = 0.d0
                            do k = 1, Ac
                                X(i,j) = X(i,j) + A(i,k) * B(k,j)
                            end do
#else
                            X(i,j) = dot_product(A(i,:),B(:,j))
#endif                
                    end do
                end do
#endif
        status = 0
        
    end subroutine mult
    
end module matrixMath