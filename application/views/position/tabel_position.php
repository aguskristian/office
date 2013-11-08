
		<?php $this->load->view('user/cssjs')?>
		
		<div align="left">
			<ul>	
				<a href="<?php echo base_url ()?>index.php/station/add_station"</a>Station |
				<a href="<?php echo base_url ()?>index.php/unit/add_unit"</a>Unit |
				<a href="<?php echo base_url ()?>index.php/sub_unit/add_sub_unit"</a>Sub Unit |
				<a href="<?php echo base_url ()?>index.php/team/add_team"</a>Team |
				<a href="<?php echo base_url ()?>index.php/functionn/add_function"</a>Function |
			</ul>
		</div>		
		<div class="grid_12">
	
		<a href="<?php echo base_url()?>index.php/position/add_position">Form Position</a> &rsaquo; Tabel Position</span></h2></div>
				
    		<table align="center" border="1" cellpadding="0" cellspacing="0" style="font-size:12px" class="table table-bordered">

                <tr align="center" bgcolor="#CCCCCC">
				
                    <td> <strong>Position Code</strong></td>
                    <td> <strong>Position Name</strong></td>
					<td> <strong>Team Code</strong></td>
					<td> <strong>Function Code</strong></td>
                    <td> <strong>Position Level </strong></td>
 					<td colspan="2" > Pilihan </td>
								
                </tr> 
		
<!------------------------------------------------------------------------------------------------------>

                <?php foreach ($records as $key ): ?>                    
                
				<tr>    	
                        <td> <?php echo $key->vp_code; ?> </td>
                        <td> <?php echo $key->vp_name; ?> </td>
						<td> <?php echo $key->vp_vt_code; ?> </td>
						<td> <?php echo $key->vp_vf_code; ?> </td>
                        <td> <?php echo $key->vp_level; ?> </td>
							
					<td>
						<!-- Icons -->
						<a title="edit" href="<?php echo base_url().'index.php/position/edit/' . $key->vp_code ?>"><img src="<?php echo base_url()?>asset/images/icons/pencil.png" alt="Edit" /></a>
						<a title="delete" href="<?php echo base_url().'index.php/position/delete/' . $key->vp_code ?>"><img src="<?php echo base_url()?>asset/images/icons/cross.png" alt="Delete" /></a> 
					</td>
                    
					</tr>
         
          
                <?php endforeach; ?>
 
            </table>
		<?php #$this->load->view ('template_admin/admin_footer')?>
		</div>
