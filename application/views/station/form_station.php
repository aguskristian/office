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
		<a href="<?php echo base_url()?>index.php/station/tabel_station">Tabel station</a> &rsaquo; Form station</span></h2>
		</div>

		<div class="grid_4">
			
            <form accept-charset="UTF-8" class="new_message" id="new_message" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="4/e/8HmCN84QvWqbOVWyVzVjaeK9ql3IzLWgVc6HSSQ=" /></div>
				
				
				<div class="field">
					<label>Station Code </label>
                    <input class="text-box" id="message_name" name="vs_code" size="30" type="text" />
				</div>
				
				<div class="field">
					<label>Station Name</label>
                    <input class="text-box" id="message_name" name="vs_name" size="4" type="text" />
				</div>
				
				<div class="field">
					<label>Station Level</label>
                    <input class="text-box" id="message_name" name="vs_level" size="30" type="text" />
				</div>
				<br></br>
				<div class="field">
                    <button type="submit" class="button orange" value="Submit" name="submit" />Submit</button> 
				</div>
			</form>	
			
		</div>
	</div>
</body>



