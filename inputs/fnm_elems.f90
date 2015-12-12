subroutine set_fnm_elems()                                 
use parameter_module,      only: DP                        
use elem_list_module,      only: layup, elem_list,&        
                      & elem_node_connec, elem_edge_connec 
use fBrickLam_elem_module, only: plyblock_layup, set       
                                                           
  integer :: nelem   = 0                                   
  integer :: elnnode = 0                                   
  integer :: elnedge = 0                                   
  integer :: nplyblk = 0                                   
  integer, allocatable :: nodecnc(:), edgecnc(:)           
                                                           
  nelem   =5                                
  elnnode =24                              
  elnedge =8                              
  nplyblk =1                                
  allocate(elem_list(nelem))                               
  allocate(elem_node_connec(elnnode,nelem))                
  allocate(elem_edge_connec(elnedge,nelem))                
  allocate(nodecnc(elnnode))                               
  allocate(edgecnc(elnedge))                               
  allocate(layup(nplyblk))                                 
  nodecnc = 0                                              
  edgecnc = 0                                              
                                                           
 layup(1)=plyblock_layup(angle=0._DP,nplies=1) 
                                                           

  nodecnc=[ &
& 1,2,8,7,13,14,20,19,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40 &
& ]
  edgecnc=[ &
& 1,2,3,4,5,6,7,8 &
& ]
  call set(elem_list(1), NPLYBLKS=1)
  elem_node_connec(:,1)=nodecnc(:)
  elem_edge_connec(:,1)=edgecnc(:)


  nodecnc=[ &
& 2,3,9,8,14,15,21,20,41,42,43,44,45,46,28,27,47,48,49,50,51,52,36,35 &
& ]
  edgecnc=[ &
& 9,10,11,2,12,13,14,6 &
& ]
  call set(elem_list(2), NPLYBLKS=1)
  elem_node_connec(:,2)=nodecnc(:)
  elem_edge_connec(:,2)=edgecnc(:)


  nodecnc=[ &
& 3,4,10,9,15,16,22,21,53,54,55,56,57,58,44,43,59,60,61,62,63,64,50,49 &
& ]
  edgecnc=[ &
& 15,16,17,10,18,19,20,13 &
& ]
  call set(elem_list(3), NPLYBLKS=1)
  elem_node_connec(:,3)=nodecnc(:)
  elem_edge_connec(:,3)=edgecnc(:)


  nodecnc=[ &
& 4,5,11,10,16,17,23,22,65,66,67,68,69,70,56,55,71,72,73,74,75,76,62,61 &
& ]
  edgecnc=[ &
& 21,22,23,16,24,25,26,19 &
& ]
  call set(elem_list(4), NPLYBLKS=1)
  elem_node_connec(:,4)=nodecnc(:)
  elem_edge_connec(:,4)=edgecnc(:)


  nodecnc=[ &
& 5,6,12,11,17,18,24,23,77,78,79,80,81,82,68,67,83,84,85,86,87,88,74,73 &
& ]
  edgecnc=[ &
& 27,28,29,22,30,31,32,25 &
& ]
  call set(elem_list(5), NPLYBLKS=1)
  elem_node_connec(:,5)=nodecnc(:)
  elem_edge_connec(:,5)=edgecnc(:)

end subroutine set_fnm_elems
