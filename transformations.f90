module transformations
!Includes functions to transform variables of one type into another

!        interface
!            module function int2str(i)
!                implicit none
!                integer,intent(in)::i
!                character(:),allocatable::int2str
!                character(range(i)+2)::tmp
!            end function
!        end interface
    implicit none

        interface transform
            module procedure int2str
        end interface


    contains

        function int2str(i)
            implicit none
            integer,intent(in)::i
            character(:),allocatable::int2str
            character(range(i)+2)::tmp
                write(tmp,'(i0)')i
                int2str=tmp
        end function

end module