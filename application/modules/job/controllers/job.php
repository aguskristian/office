<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Job extends CI_Controller {

	public function index()
	{
		$this->load->view('job');
	}
	public function task()
	{
		$this->load->view('task');
	}
}