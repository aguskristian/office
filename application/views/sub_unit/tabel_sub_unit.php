		<?php $this->load->view('user/cssjs')?>
				
		<div class="grid_12">		
		<a href="<?php echo base_url()?>index.php/sub_unit/add_sub_unit">Form Sub Unit</a> &rsaquo; Tabel Sub Unit</span></h2></div>		
		<table align="center"   style="font-size:12px" class="table ">
		
    		<table align="center" border="1" cellpadding="0" cellspacing="0" style="font-size:12px" class="table table-bordered">

                <tr align="center" bgcolor="#CCCCCC">
				
                    <td> <strong>Sub Unit Code</strong></td>
                    <td> <strong>Sub Unit Name</strong></td>
					<td> <strong>Unit Code</strong></td>
                    <td> <strong>Sub Unit Level </strong></td>
 					<td colspan="2" > Pilihan </td>
								
                </tr> 
		
<!------------------------------------------------------------------------------------------------------>

                <?php foreach ($records as $key ): ?>                    
                
				<tr>    	
                        <td> <?php echo $key->vsu_code; ?> </td>
                        <td> <?php echo $key->vsu_name; ?> </td>
                        <td> <?php echo $key->vsu_vu_code; ?> </td>
						<td> <?php echo $key->vsu_level; ?> </td>
							
					<td>
						<!-- Icons -->
						<a title="edit" href="<?php echo base_url().'index.php/sub_unit/edit/' . $key->vsu_code ?>"><img src="<?php echo base_url()?>asset/images/icons/pencil.png" alt="Edit" /></a>
						<a title="delete" href="<?php echo base_url().'index.php/sub_unit/delete/' . $key->vsu_code ?>"><img src="<?php echo base_url()?>asset/images/icons/cross.png" alt="Delete" /></a> 
					</td>
						
						</td>
                    
					</tr>
         
          
                <?php endforeach; ?>
 
            </table>
		</div>