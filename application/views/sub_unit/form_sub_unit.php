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
		
		<div class="container_12">	
		<a href="<?php echo base_url()?>index.php/sub_unit/tabel_sub_unit">Tabel Sub Unit</a> &rsaquo; Form Sub Unit</span></h2>
		</div>

<div class="form">
    <form method="post">
		<div style="margin:0;padding:0;display:inline">

				<div>
					<td><label>Sub Unit Code</label></td>
                    <td><input class="text-box" name="vsu_code" size="30" type="text" /></td>
				</div>
				<div class="field">
					<td><label>Sub Unit Name</label></td>
                    <td><input class="text-box" name="vsu_name" size="10" type="text" /></td>
				</div>
				
				<div class="field">
					<label>Unit Code</label>
                    <input class="text-box" name="vsu_vu_code" size="30" type="text" />
				</div>
				
				<div class="field">
					<label>Sub Unit Level</label>
                    <input class="text-box" name="vsu_level" size="10" type="text" />
				</div>
				
				<br></br>
				<div class="field">
                    <button type="submit" class="button orange" value="Submit" name="submit" />Submit</button> 
				</div>
				
	</form>		
		</div>
</div>
	<?php #$this->load->view('template_admin/admin_footer')?>
</body>

<!-- Mirrored from www.portnine.com/contact by HTTrack Website Copier/3.x [XR&CO'2013], Wed, 03 Jul 2013 09:27:00 GMT -->
</html>


