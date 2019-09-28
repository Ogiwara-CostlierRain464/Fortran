program Pointer
    implicit none

    integer,target :: a
    integer,pointer :: pa => null()
    print *,associated(pa)
    pa => a
    print *,associated(pa)
end program Pointer