<?php

class manageElectronics extends CI_Controller {

		public function index($page = 'electronicsHomePage.php')
		{
			if(! file_exists(APPPATH.'/views/electronicsHomePage.php'))
			{
			echo APPPATH.'/views/electronicsHomePage.php';
			show_404();
			}
			
			$data['title']=ucfirst("POST-FREE-ADS");
			$data['activeMgmt']= "electronicsMgmt";
			$this->load->model("electronicsMgmt");
		$this->load->view('electronicsHomePage.php', $data);
		}
						
	
	
	
	 
	
						
}

?>