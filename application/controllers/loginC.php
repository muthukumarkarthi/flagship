<?php

class loginC extends CI_Controller {


		function __construct()
		{
			parent:: __construct();
			$this->load->library('session');
			$this->clear_cache();
			
			
		}
		function clear_cache()
		{
			$this->output->set_header('Last-Modified:'.gmdate('D, d M Y H:i:s').'GMT');
			$this->output->set_header('Cache-Control: no-store, no-cache, must-revalidate');
			$this->output->set_header('Cache-Control: post-check=0, pre-check=0',false);
			$this->output->set_header('Pragma: no-cache');
		}


		public function login($page = 'loginV')
		{
			if(! file_exists(APPPATH.'/views/loginV.php'))
			{
				echo APPPATH.'/views/loginV.php';
				show_404();
			}

			$data['title'] = ucfirst("ADS WAGON");
			$data['activemanagement']="loginM";
			$this->load->model("loginM");
				if(!empty ($_POST['eMail']) && !empty ($_POST['password']))
				{
					$data['verificationError'] = $this->loginM->checkUser($_POST);
				}
			$this->load->view('loginV.php', $data);
			
		}

		 public  function checkLogin()
	 {
	 $this->load->model("loginM");
	 $this->loginM->checkLogin();
	 
	 }						
}

?>