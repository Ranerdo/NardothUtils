module nardothCommon
use transformations
!test
implicit none

    interface
        module subroutine void()
        !Dummy subroutine that does nothing
        end subroutine

        module subroutine dummyInteger(i)
            implicit none
            integer::i
        end subroutine


    end interface

    contains

        subroutine void()
        end subroutine

        subroutine dummyInteger(i)
            implicit none
            integer:: i
        end subroutine


end module