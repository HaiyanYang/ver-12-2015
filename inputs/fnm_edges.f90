subroutine set_fnm_edges()            
use edge_list_module, only: edge_list 
                                      
  integer :: nedge=0                  
                                      
  nedge=96              
  allocate(edge_list(nedge))          

end subroutine set_fnm_edges
