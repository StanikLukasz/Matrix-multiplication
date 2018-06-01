program main
    use matrixMath
    implicit none
    
    ! variables
    integer (kind = 4) :: status, i, j, N
    real (kind = 8), dimension(:,:), allocatable :: A, B, X
    real (kind = 16) :: before, after
    character (len=16) :: arg
    
    ! getting argument - size of matrices
    call GET_COMMAND_ARGUMENT(1, arg)
    read(arg, *) N
    
    ! preparing matrices
    allocate(A(N,N))
    allocate(B(N,N))
    allocate(X(N,N))
    
    do i = 1,N
        do j = 1,N
            A(N,N)=1.d0
            B(N,N)=1.d0
        end do
    end do
    
    ! getting computing time

#if !defined(DEFAULT_MAT_MUL)
    call CPU_TIME(before)
    call mult(A, B, X, status)
    call CPU_TIME(after)
#else
    call CPU_TIME(before)
    X = MATMUL(A,B)
    call CPU_TIME(after)
#endif
    
    
    ! output
#if !defined(TOFILE) 
    write(*,*) status
    write(*,*) after-before
#else
    write(*,*) after-before, N
#endif
    
end program main