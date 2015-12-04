MODULE PARAMETER_MODULE ! USEFUL CONSTANTS FOR ALL SUBROUTINES & ALL ELEMENTS

IMPLICIT NONE

! COMMON PARAMETERS ************************************************************


! DEFINE THE SUPPORTED DIMENSION OF ANALYSIS, NO. OF STRESSES FOR STANDARD AND
! COHESIVE MATERIALS, RESPECTIVELY.
! **** NOTE: THESE PARAMETERS SHOULD NEVER BE MODIFIED ****
INTEGER, PARAMETER :: NDIM = 3
INTEGER, PARAMETER :: NST_STANDARD = 6
INTEGER, PARAMETER :: NST_COHESIVE = 3
! ---------------------------------------------------------


!DEFINE REAL NUMBER PRECISION TO BE EQUIVALENT TO F77 DOUBLE PRECISION
INTEGER, PARAMETER :: DP = SELECTED_REAL_KIND(14)


! I/O UNIT NO. FOR MESSAGE FILE
INTEGER, PARAMETER :: MSG_FILE = 6


! PARAMETERS FOR ERROR MESSAGE LENGTH AND ERROR STATUS VALUES
INTEGER, PARAMETER :: MSGLENGTH    = 256  ! LENGTH FOR ERROR MASSAGE
INTEGER, PARAMETER :: STAT_SUCCESS = 0    ! SUCCESSFUL STATUS VALUE
INTEGER, PARAMETER :: STAT_FAILURE = 1    ! FAILURE    STATUS VALUE


! VARIOUS CHARACTER LENGTH PARAMETERS
INTEGER, PARAMETER :: MATNAMELENGTH = 30  ! CHAR LEN OF A USER MATERIAL NAME
INTEGER, PARAMETER :: MATTYPELENGTH = 30  ! CHAR LEN OF A SYST MAT TYPE NAME
INTEGER, PARAMETER :: ELNAMELENGTH  = 30  ! CHAR LEN OF A USER ELEMENT NAME
INTEGER, PARAMETER :: ELTYPELENGTH  = 30  ! CHAR LEN OF A SYST ELEM TYPE NAME
INTEGER, PARAMETER :: SETNAMELENGTH = 30  ! CHAR LEN OF A SET NAME
INTEGER, PARAMETER :: DIRLENGTH     = 256 ! CHAR LEN OF A DIRECTORY NAME


! SOME COMMON REAL NUMBERS
REAL(KIND=DP), PARAMETER :: ZERO  = 0._DP,  ONE  = 1._DP,  TWO  = 2._DP,      &
                          & THREE = 3._DP,  FOUR = 4._DP,  FIVE = 5._DP,      &
                          & SIX   = 6._DP,  SEVEN= 7._DP,  EIGHT= 8._DP,      &
                          & NINE  = 9._DP,  TEN  = 10._DP, NINETY= 90._DP

REAL(KIND=DP), PARAMETER :: HALF = 0.5_DP,  QUARTER = 0.25_DP

REAL(KIND=DP), PARAMETER :: ONE_THIRD  = ONE/THREE,  TWO_THIRD  = TWO/THREE,  &
                          & ONE_SIXTH  = ONE/SIX,    ONE_EIGHTH = ONE/EIGHT,  &
                          & ONE_ROOT3  = ONE/SQRT(THREE),                     &
                          & ROOT_THREE_FIFTH = SQRT(THREE/FIVE),              &
                          & FIVE_54 = FIVE/54._DP, EIGHT_54 = EIGHT/54._DP

REAL(KIND=DP), PARAMETER :: HALFCIRC = 180._DP, PI =3.14159265359_DP


! SOME TOLERANCE PARAMETERS FOR COMPARING TWO REALS
REAL(KIND=DP), PARAMETER :: SMALLNUM  = EPSILON(ONE)


! RESIDUAL MODULUS AFTER FAILURE
! SET TO ONE MPA (OR OTHER UNIT) TO PREVENT NODES RUN WILD
REAL(KIND=DP), PARAMETER :: RESIDUAL_MODULUS = ONE

! PENALTY STIFFNESS FOR IMPOSING CONSTRAINTS
! SET TO 1.E6 MPA
REAL(KIND=DP), PARAMETER :: PENALTY_STIFFNESS = 1000000._DP

! GENERIC PARAMETER FOR INTACT STATE (ELEM, EDGE, MATERIAL, ETC.)
INTEGER, PARAMETER :: INTACT = 0

! DERIVED DATA TYPE SDV_ARRAY, JUST TO GROUP 3 TYPES OF ARRAYS TOGETHER
TYPE :: SDV_ARRAY
    REAL(KIND=DP),  ALLOCATABLE :: R(:)
    INTEGER,        ALLOCATABLE :: I(:)
    LOGICAL,        ALLOCATABLE :: L(:)
END TYPE

TYPE :: INT_ALLOC_ARRAY
    INTEGER,    ALLOCATABLE :: ARRAY(:)
END TYPE

TYPE :: REAL_ALLOC_ARRAY
    REAL(DP),   ALLOCATABLE :: ARRAY(:)
END TYPE

TYPE :: REAL_ALLOC_MATRIX
    REAL(DP),   ALLOCATABLE :: MATRIX(:)
END TYPE

! ******************************************************************************





! LAMINA MATERIAL MODULE PARAMETERS --------------------------------------------
INTEGER, PARAMETER :: MATRIX_ONSET = 5, FIBRE_ONSET  = 15, FIBRE_FAILED  = 20
!-------------------------------------------------------------------------------



! INTERFACE MATERIAL MODULE PARAMETERS -----------------------------------------
INTEGER, PARAMETER :: COH_MAT_ONSET = 5,  COH_MAT_FAILED = 10
!-------------------------------------------------------------------------------



! EDGE STATUS VARIABLE VALUES --------------------------------------------------
INTEGER, PARAMETER :: TRANSITION_EDGE = 1, REFINEMENT_EDGE   = 2,             &
                    & CRACK_TIP_EDGE  = 3, WEAK_CRACK_EDGE   = 3,             &
                    & COH_CRACK_EDGE  = 4, STRONG_CRACK_EDGE = 5
INTEGER, PARAMETER :: UNBREAKABLE_EDGE = -1
!-------------------------------------------------------------------------------



! XBRICK ELEMENT STATUS VARIABLE VALUES ----------------------------------------
INTEGER, PARAMETER :: TRANSITION_ELEM   = 1, REFINEMENT_ELEM  = 2,        &
                    & CRACK_TIP_ELEM    = 3, CRACK_WAKE_ELEM  = 4,        &
                    & MATRIX_CRACK_ELEM = 5, FIBRE_FAIL_ELEM  = 15
!-------------------------------------------------------------------------------



! FCOH ELEM STATUS VARIABLES ---------------------------------------------------
INTEGER, PARAMETER :: PARTITIONED_FCOHSUB = 5
!-------------------------------------------------------------------------------



! EDGE_CRACK_CROSS SUBROUTINE CROSS_STATUS VARIABLE ----------------------------
INTEGER, PARAMETER :: CROSS_ON_EDGE_ON_CRACK = 2,  CROSS_ON_EDGE_OFF_CRACK = 1,&
                  & CROSS_OFF_EDGE_ON_CRACK = -1, CROSS_OFF_EDGE_OFF_CRACK =-2,&
                  & EDGE_CRACK_PARALLEL = 0
REAL(DP),PARAMETER :: ENDNODE_CLEARANCE_RATIO = 0.1_DP
!-------------------------------------------------------------------------------


! CRACK_ELEM_CENTROID2D SUBROUTINE VARIABLE ------------------------------------
! NTESTCRACKPOINT : NO. OF TEST CRACK POINTS ON AN EDGE, USED WHEN LINE INTERSECT
! ALGORITHM CANNOT FIND THE CRACK POINTS.
INTEGER, PARAMETER :: NTESTCRACKPOINT = 10


CONTAINS






SUBROUTINE EXIT_FUNCTION
    !~STOP"**EXIT FUNCTION REACHED**"
    WRITE(MSG_FILE,*) "**EXIT FUNCTION REACHED**"
    CALL XIT    ! ABAQUS EXIT FUNCTION
END SUBROUTINE






END MODULE PARAMETER_MODULE
