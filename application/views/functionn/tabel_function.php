		<?php $this->load->view('user/cssjs')?>
				
		<div class="grid_12">
		<a href="<?php echo base_url()?>index.php/functionn/add_function">Form Function</a> &rsaquo; Tabel Function</span></h2>
		</div>

    		<table align="center" border="1" cellpadding="0" cellspacing="0" style="font-size:12px" class="table table-bordered">

                <tr align="center" bgcolor="#CCCCCC">
				
                    <td> <strong>Function Code</strong></td>
                    <td> <strong>Function Name</strong></td>
                    <td> <strong>Function Level </strong></td>
 					<td colspan="2" > Pilihan </td>
								
                </tr> 
		
<!------------------------------------------------------------------------------------------------------>

                <?php foreach ($records as $key ): ?>                    
                
				<tr>    	
                        <td> <?php echo $key->vf_code; ?> </td>
                        <td> <?php echo $key->vf_name; ?> </td>
                        <td> <?php echo $key->vf_level; ?> </td>
							
					<td>
						<!-- Icons -->
						<a title="edit" href="<?php echo base_url().'index.php/functionn/edit/' . $key->vf_code ?>"><img src="<?php echo base_url()?>asset/images/icons/pencil.png" alt="Edit" /></a>
						<a title="delete" href="<?php echo base_url().'index.php/functionn/delete/' . $key->vf_code ?>"><img src="<?php echo base_url()?>asset/images/icons/cross.png" alt="Delete" /></a> 
					</td>
                    
				</tr>
         
          
                <?php endforeach; ?>
 
            </table>
		</div>