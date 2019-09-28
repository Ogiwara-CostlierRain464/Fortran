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

    
    integer, parameter :: input_unit = 149              !入力に用いる装置番号
    integer, parameter :: output_unit = 697             !出力に用いる装置番号
    real(8), parameter :: AstornomicalUnit = 1.496d11 !天文単位

    type(AstornomicalObject) :: earth
    open(unit = input_unit, file="planet.dat",action="read")
    read(input_unit,*) earth%name,earth%posi%x,earth%mass,earth%velo%y
    earth%posi%y = 0d0
    earth%velo%x = 0d0
    earth%accl = Vector2d(0d0,0d0)
    close(input_unit)

    open(unit=output_unit,file=trim(earth%name)//'.txt',action="write")
    write(output_unit, '(2F10.1)') earth%posi%x/AstornomicalUnit, earth%posi%y/AstornomicalUnit
    close(output_unit)


end program SolarSystem