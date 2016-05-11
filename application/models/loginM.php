<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class LoginM extends CI_Model {


   
    function __construct()
    {	
        parent::__construct();
	}
	

	public function checkUser($post_data)
	{	$preSessionData = array('eMail' , 'password');
		$this->session->unset_userdata($preSessionData);
		$query = $this->db->query("SELECT * FROM `accounts_master` WHERE `email_id`='".$post_data['eMail']."' AND `password`= '".$post_data['password']."' AND `del_status`=1  ");
		$loginStatus = $query->result_object();
		if($query->num_rows())
		{
			$userSessionData = array(
					'eMail' => $loginStatus[0] -> email_id,
					'password' => $loginStatus[0] -> password
				);

			$this->session->set_userdata($userSessionData);

			$verificationError='';
			redirect('manageElectronics/index');
		}
		else
		{
		$verificationError='<p style="color:#FF5E5E;">Please Check Username or Password</p>';
		return $verificationError;
		}
	}	

	 public  function checkLogin()
    {
    	echo "checklogin";
	$eMail=$this->session->userdata('eMail');
		
		if($eMail!="")
		{
        return true;
		}
		else
		{
		redirect('login/');
		}
		
    }


  public  function checkSession()
    {
    	echo "checksession";
	$eMail=$this->session->userdata('eMail');
		
		if($eMail!="")
		{
		   redirect('manageElectronics/index');
		}
		else
		{
		return true;
		}
		
    }


	 
	
	 
	
    
	
	
	
	
   
		
	 
	
	
	 

}

?>