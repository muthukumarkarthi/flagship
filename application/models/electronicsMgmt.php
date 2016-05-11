<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class ElectronicsMgmt extends CI_Model {


   
    function __construct()
    {
        parent::__construct();
		}
		

	 function getmaxClientId()
	{
	$this->db->select_max('client_id','clientId');
	$maxQuery = $this->db->get('manage_clients');
	$maxclientId=$maxQuery->result();
	$maxclientId=$maxclientId[0]->clientId;
	$maxclientIdNo= preg_replace ("/[^0-9\.]/",'',$maxclientId);
	$maxclientIdNo=$maxclientIdNo + 1;
	$split= str_split ($maxclientId,3);
	$maxclientId =$split[0].$maxclientIdNo;
	return $maxclientId;
	
	
	} 
	
	 
	
    
	function updateClientDetails($updateData)
	{
	$edDate=date('Y-m-d');
	ini_set('date.timezone', 'Asia/Kolkata');
	$edTime  =date('H:i:s', time());
	$ticketData = array('client_id'=>$updateData['clientId'],
		 'client_name'=>$updateData['clientName'],
		 'description'=>$updateData['description'],
		 'address'=>$updateData['address'],
		 'website'=>$updateData['website'], 
		 'name_1'=>$updateData['name1'],
		 'phone_1'=>$updateData['phone1'],
		 'email_id_1'=>$updateData['emailId1'],
		 'instant_messenger_id_1'=>$updateData['instantMessengerId1'],
		 'name_2'=>$updateData['name2'],
		 'phone_2'=>$updateData['phone2'],
		 'email_id_2'=>$updateData['emailId2'],
		  'instant_messenger_id_2'=>$updateData['instantMessengerId2'],
		 'country'=>$updateData['country'],
		 'state'=>$updateData['state'],
		 'city'=>$updateData['city'],
		 'edited_date'=>$edDate,
		 'edited_time'=>$edTime,
		 'active_status'=>$updateData['activeStatus']
		
	 );
	 
	 $this->db->where('client_id',$updateData['clientId']);
		$updateStatus = $this->db->update('manage_clients', $ticketData); 		
		
		if($updateStatus==1)
		{
	    redirect('manageClientList/index');
		}
		
	}
	
	function deleteClientDetails($deleteData)
	{
	$dlDate=date('Y-m-d');
	ini_set('date.timezone', 'Asia/Kolkata');
	$dlTime  =date('H:i:s', time());
	 $ticketData1 = array(
	 	 'del_status'=>$deleteData['delStatus'],
		 'client_id'=>$deleteData['clientId'],
		 'client_name'=>$deleteData['clientName'],
		 'description'=>$deleteData['description'],
		 'address'=>$deleteData['address'],
		 'website'=>$deleteData['website'], 
		 'name_1'=>$deleteData['name1'],
		 'phone_1'=>$deleteData['phone1'],
		 'email_id_1'=>$deleteData['emailId1'],
		 'instant_messenger_id_1'=>$deleteData['instantMessengerId1'],
		 'name_2'=>$deleteData['name2'],
		 'phone_2'=>$deleteData['phone2'],
		 'email_id_2'=>$deleteData['emailId2'],
		  'instant_messenger_id_2'=>$deleteData['instantMessengerId2'],
		 'country'=>$deleteData['country'],
		 'state'=>$deleteData['state'],
		 'city'=>$deleteData['city'],
		 'deleted_date'=>$dlDate,
		 'deleted_time'=>$dlTime
		
	 );
	 
	 $this->db->where('client_id',$deleteData['clientId']);
		$deleteStatus = $this->db->update('manage_clients', $ticketData1);
		if($deleteStatus==1)
		{
	    redirect('manageClientList/index');
		}
		
	}
	
    function getClientList($act)
    {
        $query = $this->db->get('manage_clients', 10);
		switch($act){
		case "active":
		$query = $this->db->query("SELECT * FROM `manage_clients` WHERE `del_status`='1' and `active_status`='active'"); break;
		case "inactive":
		$query = $this->db->query("SELECT * FROM `manage_clients` WHERE `del_status`='1' and `active_status`='inactive'"); break;
		default:
		$query = $this->db->query("SELECT * FROM `manage_clients` WHERE `del_status`='1'");
		}
		$clientList=$query->result();
        return $clientList;
    }
		
	  function insertClientDetails($clientData)
    { 
	$this->db->select_max('client_id','clientId');
	$maxQuery = $this->db->get('manage_clients');
	$maxclientId=$maxQuery->result();
	$maxclientId=$maxclientId[0]->clientId;
	$maxclientIdNo= preg_replace ("/[^0-9\.]/",'',$maxclientId);
	$maxclientIdNo=$maxclientIdNo + 1;
	$split= str_split ($maxclientId,3);
	$maxclientId =$split[0].$maxclientIdNo;
	$crDate=date('Y-m-d');
	ini_set('date.timezone', 'Asia/Kolkata');
	$crTime  =date('H:i:s', time());
       $postData = array('client_id'=>$maxclientId,
		 'client_name '=>$clientData['clientName'],
		 'description'=>$clientData['description'],
		 'address'=>$clientData['address'],
		 'website'=>$clientData['website'], 
		 'name_1'=>$clientData['name1'],
		 'phone_1'=>$clientData['phone1'],
		 'email_id_1'=>$clientData['emailId1'],
		 'instant_messenger_id_1'=>$clientData['instantMessengerId1'],
		 'name_2'=>$clientData['name2'],
		 'phone_2'=>$clientData['phone2'],
		 'email_id_2'=>$clientData['emailId2'],
		 'instant_messenger_id_2'=>$clientData['instantMessengerId2'],
		 'country'=>$clientData['country'],
		 'state'=>$clientData['state'],
		 'city'=>$clientData['city'],
		 'created_date'=>$crDate,
		 'created_time'=>$crTime,
		 'active_status'=>$clientData['activeStatus']
				);
	
       $insertStatus = $this->db->insert('manage_clients', $postData);
	   if($insertStatus== 1 )
	   {
	   redirect('manageClientList/listClient');
	   }
		
    }
	
	function getClientDetails($clntId)
	{
		$query = $this->db->query("SELECT * FROM `manage_clients` WHERE `client_id`='".$clntId."'");
		$clientList=$query->result();
        return $clientList;	
	
	}
	 

}

?>