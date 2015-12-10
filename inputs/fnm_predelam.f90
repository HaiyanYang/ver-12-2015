subroutine set_fnm_predelam()         
use predelam_list_module, only: predelam_elems, predelam_interf 
                                      
  integer :: npdelem                  
                                      
  npdelem=3              

  allocate(predelam_elems(npdelem))     
  allocate(predelam_interf)             

  predelam_elems(1)=1
  predelam_elems(2)=2
  predelam_elems(3)=3

  predelam_interf=1

end subroutine set_fnm_predelam
