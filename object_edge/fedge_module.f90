module fedge_module
!
!  Purpose:
!   this module defines an edge object
!
!  Record of revision:
!    Date      Programmer            Description of change
!    ========  ====================  ========================================
!    08/12/15  B. Y. Chen            Original code
!
use parameter_module, only : INTACT, NDIM, DP, ZERO

implicit none

private

type, public :: fedge
  private ! hide components from external operation
  ! list of type components:
  ! - estat     : status of this edge
  ! - phi       : matrix crack angle w.r.t Direction-3
  integer  :: estat = INTACT
  real(DP) :: phi   = ZERO
end type fedge

interface update
  module procedure update_fedge
end interface

interface extract
  module procedure extract_fedge
end interface


public :: update, extract




contains




  pure subroutine update_fedge (this_fedge, estat, phi)
  ! Purpose:
  ! to update the components of this fedge; it is used both before and during
  ! analysis to set the initial component values and update the runtime 
  ! component values, respectively.
  
    type(fedge),        intent(inout) :: this_fedge
    integer,  optional, intent(in)    :: estat
    real(DP), optional, intent(in)    :: phi
    
    if (present(estat)) this_fedge%estat = estat    
    if (present(phi))   this_fedge%phi   = phi           

  end subroutine update_fedge 
  
  

  pure subroutine extract_fedge (this_fedge, estat, phi)
  ! Purpose:
  ! to extract all the components of this fedge
  
    type(fedge),          intent(in)  :: this_fedge
    integer,    optional, intent(out) :: estat
    real(DP),   optional, intent(out) :: phi
    
    if(present(estat)) estat = this_fedge%estat
    if(present(phi))   phi   = this_fedge%phi

  end subroutine extract_fedge


end module fedge_module