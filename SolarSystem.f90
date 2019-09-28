program SolarSystem
    implicit none

    ! 2次元ベクトルの派生型
    type :: Vector2d
        real(8) :: x,y
    end type Vector2d

    ! 惑星の情報
    type :: AstornomicalObject
        ! 位置、速度、加速度
        type(Vector2d) :: posi,velo,accl 
        real(8) :: mass
        character(256) :: name
    end type AstornomicalObject

    type(AstornomicalObject) :: earth

    earth%posi = Vector2d(1.496d11, 0d0)
    earth%velo = Vector2d(0d0,29.78d3)
    earth%accl = Vector2d(0d0,0d0)
    earth%mass = 5.97d24
    earth%name = "Earth"
    
    print '(A,F20.1,A,F20.1,A)',"position of Earth=(", earth%posi%x, ",", earth%posi%y, ")"

end program SolarSystem