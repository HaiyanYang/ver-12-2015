subroutine set_fnm_nodes()            
use parameter_module, only: DP, ZERO  
use node_list_module, only: node_list 
use fnode_module,     only: update    
                                      
  integer :: nnode=0                  
                                      
  nnode=88              
  allocate(node_list(nnode))          
  call update(node_list(1),        x=[0.0_DP,0.0_DP,0.0_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(2),        x=[1.0_DP,0.0_DP,0.0_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(3),        x=[2.0_DP,0.0_DP,0.0_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(4),        x=[3.0_DP,0.0_DP,0.0_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(5),        x=[4.0_DP,0.0_DP,0.0_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(6),        x=[5.0_DP,0.0_DP,0.0_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(7),        x=[0.0_DP,1.0_DP,0.0_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(8),        x=[1.0_DP,1.0_DP,0.0_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(9),        x=[2.0_DP,1.0_DP,0.0_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(10),        x=[3.0_DP,1.0_DP,0.0_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(11),        x=[4.0_DP,1.0_DP,0.0_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(12),        x=[5.0_DP,1.0_DP,0.0_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(13),        x=[0.0_DP,0.0_DP,0.1_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(14),        x=[1.0_DP,0.0_DP,0.1_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(15),        x=[2.0_DP,0.0_DP,0.1_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(16),        x=[3.0_DP,0.0_DP,0.1_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(17),        x=[4.0_DP,0.0_DP,0.1_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(18),        x=[5.0_DP,0.0_DP,0.1_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(19),        x=[0.0_DP,1.0_DP,0.1_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(20),        x=[1.0_DP,1.0_DP,0.1_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(21),        x=[2.0_DP,1.0_DP,0.1_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(22),        x=[3.0_DP,1.0_DP,0.1_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(23),        x=[4.0_DP,1.0_DP,0.1_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(24),        x=[5.0_DP,1.0_DP,0.1_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(25),        x=[0.0_DP,0.0_DP,0.0_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(26),        x=[0.0_DP,0.0_DP,0.0_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(27),        x=[0.0_DP,0.0_DP,0.0_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(28),        x=[0.0_DP,0.0_DP,0.0_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(29),        x=[0.0_DP,0.0_DP,0.0_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(30),        x=[0.0_DP,0.0_DP,0.0_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(31),        x=[0.0_DP,0.0_DP,0.0_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(32),        x=[0.0_DP,0.0_DP,0.0_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(33),        x=[0.0_DP,0.0_DP,0.0_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(34),        x=[0.0_DP,0.0_DP,0.0_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(35),        x=[0.0_DP,0.0_DP,0.0_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(36),        x=[0.0_DP,0.0_DP,0.0_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(37),        x=[0.0_DP,0.0_DP,0.0_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(38),        x=[0.0_DP,0.0_DP,0.0_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(39),        x=[0.0_DP,0.0_DP,0.0_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(40),        x=[0.0_DP,0.0_DP,0.0_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(41),        x=[0.0_DP,0.0_DP,0.0_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(42),        x=[0.0_DP,0.0_DP,0.0_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(43),        x=[0.0_DP,0.0_DP,0.0_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(44),        x=[0.0_DP,0.0_DP,0.0_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(45),        x=[0.0_DP,0.0_DP,0.0_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(46),        x=[0.0_DP,0.0_DP,0.0_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(47),        x=[0.0_DP,0.0_DP,0.0_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(48),        x=[0.0_DP,0.0_DP,0.0_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(49),        x=[0.0_DP,0.0_DP,0.0_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(50),        x=[0.0_DP,0.0_DP,0.0_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(51),        x=[0.0_DP,0.0_DP,0.0_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(52),        x=[0.0_DP,0.0_DP,0.0_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(53),        x=[0.0_DP,0.0_DP,0.0_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(54),        x=[0.0_DP,0.0_DP,0.0_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(55),        x=[0.0_DP,0.0_DP,0.0_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(56),        x=[0.0_DP,0.0_DP,0.0_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(57),        x=[0.0_DP,0.0_DP,0.0_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(58),        x=[0.0_DP,0.0_DP,0.0_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(59),        x=[0.0_DP,0.0_DP,0.0_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(60),        x=[0.0_DP,0.0_DP,0.0_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(61),        x=[0.0_DP,0.0_DP,0.0_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(62),        x=[0.0_DP,0.0_DP,0.0_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(63),        x=[0.0_DP,0.0_DP,0.0_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(64),        x=[0.0_DP,0.0_DP,0.0_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(65),        x=[0.0_DP,0.0_DP,0.0_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(66),        x=[0.0_DP,0.0_DP,0.0_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(67),        x=[0.0_DP,0.0_DP,0.0_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(68),        x=[0.0_DP,0.0_DP,0.0_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(69),        x=[0.0_DP,0.0_DP,0.0_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(70),        x=[0.0_DP,0.0_DP,0.0_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(71),        x=[0.0_DP,0.0_DP,0.0_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(72),        x=[0.0_DP,0.0_DP,0.0_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(73),        x=[0.0_DP,0.0_DP,0.0_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(74),        x=[0.0_DP,0.0_DP,0.0_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(75),        x=[0.0_DP,0.0_DP,0.0_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(76),        x=[0.0_DP,0.0_DP,0.0_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(77),        x=[0.0_DP,0.0_DP,0.0_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(78),        x=[0.0_DP,0.0_DP,0.0_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(79),        x=[0.0_DP,0.0_DP,0.0_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(80),        x=[0.0_DP,0.0_DP,0.0_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(81),        x=[0.0_DP,0.0_DP,0.0_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(82),        x=[0.0_DP,0.0_DP,0.0_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(83),        x=[0.0_DP,0.0_DP,0.0_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(84),        x=[0.0_DP,0.0_DP,0.0_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(85),        x=[0.0_DP,0.0_DP,0.0_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(86),        x=[0.0_DP,0.0_DP,0.0_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(87),        x=[0.0_DP,0.0_DP,0.0_DP],        u=[ZERO,ZERO,ZERO])
  call update(node_list(88),        x=[0.0_DP,0.0_DP,0.0_DP],        u=[ZERO,ZERO,ZERO])

end subroutine set_fnm_nodes
