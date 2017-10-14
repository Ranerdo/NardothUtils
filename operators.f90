submodule (nardothCommon) operators
!Include operations such as binary operations
    implicit none

    interface operator (.not.)
        module procedure BinaryNot
    end interface

    interface operator (.and.)
        module procedure BinaryAnd
    end interface

    interface operator (.or.)
        module procedure BinaryOr
    end interface

    interface operator (.xor.)
        module procedure BinaryXOr
    end interface

    interface operator (.eqv.)
        module procedure BinaryEqv
    end interface

    contains


        function BinaryNot(i)
            implicit none
            integer::BinaryNot
            integer,intent(in)::i

            BinaryNot=NOT(i)
        end function

        function BinaryAnd(i,j)
            implicit none
            integer::BinaryAnd
            integer,intent(in)::i,j

            BinaryAnd=IAND(i,j)
        end function

        function BinaryOr(i,j)
            implicit none
            integer::BinaryOr
            integer,intent(in)::i,j

            BinaryOr=IOR(i,j)
        end function

        function BinaryXOr(i,j)
            implicit none
            integer::BinaryXOr
            integer,intent(in)::i,j

            BinaryXOr=IEOR(i,j)
        end function

        function BinaryEqv(i,j)
            implicit none
            integer::BinaryEqv
            integer,intent(in)::i,j

            BinaryEqv=NOT(IEOR(i,j))
        end function


end submodule