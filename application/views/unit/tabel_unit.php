<?php $this->load->view('user/cssjs')?>
				
		<div class="grid_12">		
		<a href="<?php echo base_url()?>index.php/unit/add_unit">Form Unit</a> &rsaquo; Tabel Unit</span></h2>
		</div>		

    		<table align="center" border="1" cellpadding="0" cellspacing="0" style="font-size:12px" class="table table-bordered">

                <tr align="center" bgcolor="#CCCCCC">
				
                    <td> <strong>Unit Code</strong></td>
                    <td> <strong>Unit Name</strong></td>
                    <td> <strong>station Code</strong></td>
					<td> <strong>Unit Level</strong></td>
 					<td colspan="2" > Pilihan </td>
								
                </tr> 
		
<!------------------------------------------------------------------------------------------------------>
                <?php foreach ($records as $key ): ?>                    
                
				<tr>    	
                        <td> <?php echo $key->vu_code; ?> </td>
                        <td> <?php echo $key->vu_name; ?> </td>
                        <td> <?php echo $key->vu_vs_code; ?> </td>
						<td> <?php echo $key->vu_level; ?> </td>	
					<td>
						<!-- Icons -->
						<a title="edit" href="<?php echo base_url().'index.php/unit/edit/' . $key->vu_code ?>"><img src="<?php echo base_url()?>asset/images/icons/pencil.png" alt="Edit" /></a>
						<a title="delete" href="<?php echo base_url().'index.php/unit/delete/' . $key->vu_code ?>"><img src="<?php echo base_url()?>asset/images/icons/cross.png" alt="Delete" /></a> 
					</td>
                    
				</tr>
         
          
                <?php endforeach; ?>
 
            </table>
		</div>