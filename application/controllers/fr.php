<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Fr extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -  
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in 
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see http://codeigniter.com/user_guide/general/urls.html
	 */
	 

	function menu()
	{
		$menu = '';
		$this->db->order_by('priority');
		$this->db->where('parent_page', 0);
		$this->db->where('active', 'TRUE');
		$pages=$this->db->get('afric_aventure_pages');

		foreach($pages->result() as $page)
		{
			if($page->draws_from != '')
			{
		
				$menu .= "<li class = 'dropdown";
				if($this->uri->segment(1) ==  $page->url)
					$menu .= " active ";

				$menu .="'><a data-toggle='dropdown' class='dropdown-toggle' href = '" . current_url() . "'>"  . $page->title .  "<b class='caret'></b></a><ul class='dropdown-menu'>";
			
				$this->db->where('parent', 0);
				$categories = $this->db->get($page->draws_from);
		

				foreach($categories->result() as $category)
				{

					$this->db->where('parent',$category->id);
					$cats = $this->db->get($page->draws_from);

					if($cats->num_rows() == 0)
						$menu .= "<li><a href = '" . $page->url . '/' . $category->url . "'>"  . $category->title .  "</a></li>";

					else {
						$menu .= "<li class = 'dropdown-submenu'><a href = '" . current_url() . "'>"  . $category->title .  "</a><ul class='dropdown-menu'>";
						
						foreach($cats->result() as $cat)
						{
							$menu .= "<li><a href = '" . $page->url . '/' . $category->url .'/' . $cat->url . "'>"  . $cat->title .  "</a></li>";
						}

						$menu .= '</ul></li>';
					}
					
				  }

				$menu .= '</ul></li><li class="divider-vertical"></li>';

			}
			else
			{
				$this->db->where('parent_page', $page->id);
				$kids = $this->db->get('afric_aventure_pages');
				if($kids->num_rows() == 0) 
				{

					$menu .= "<li";
					if($this->uri->segment(1) == $page->url)
						$menu .= " class = 'active' ";
					$menu .="><a href = '" . $page->url . "'>"  . $page->title .  "</a></li><li class='divider-vertical'></li>";
				}
				else
				{
					$menu .= "<li class = 'dropdown";
					if($this->uri->segment(1) == $page->url)
						$menu .= " active ";
					$menu .="'><a data-toggle='dropdown' class='dropdown-toggle' href = '" . current_url() . "'>"  . $page->title .  "<b class='caret'></b></a><ul class='dropdown-menu'>";		
					foreach($kids->result() as $kid)
					{
						$menu .= "<li ><a href = '" . $page->url . '/' . $kid->url . "'>"  . $kid->title .  "</a></li>";
					}
					$menu .= '</ul></li><li class="divider-vertical"></li>';		
				}

			}

		}
			return $menu;

	 }
	 
	
	 
	public function index()

	{    

		$menu['menu'] = $this->menu();
		$data['slider'] = $this->db->get('afric_aventure_slider');
		$this->db->where('url', 'home');
		$result=$this->db->get('afric_aventure_pages');
        $header['title']=$result->row()->title;
        $header['en']='';
		$this->load->view('header',$header);  
	    $this->load->view('menu',$menu);
		$this->load->view('home',$data);
		$this->load->view('footer');
	}
	
	public function home()
	{
		$this->index();
	
	
	}
	
	public function vacances_plage($url)
	{   
		$this->load->helper('text');
		$header['color']='#091626';
		$header['color_nav']='#c6d9f1';
		$this->db->where('url', $url);
		$result=$this->db->get('afric_aventure_beach_vacation_categories');

		$header['en']='beach_vacations/' . $result->row()->en_url;

		$id=$result->row()->id;
		$data['toptitle']=$result->row()->title;
		$header['title']=$result->row()->title;
		$data['show']=$result->row()->url;
		$data['page']='plage';

		$this->db->where('category', $id);
		$data['query']=$this->db->get('afric_aventure_beach_vacations');
		$menu['menu'] = $this->menu();
		$this->load->view('header',$header);
		$this->load->view('menu',$menu);
		$this->load->view('summary',$data);
		$this->load->view('footer');
	}
	public function plage($url)
	{   
		$header['color']='#091626';
		$header['color_nav']='#c6d9f1';
		$this->db->where('url', $url);
		$query = $this->db->get('afric_aventure_beach_vacations');
		$data['title'] = $query->row()->title;
		$header['title']=$query->row()->title;
		$data['text'] = $query->row()->text;
		$header['en']='beach/' . $query->row()->en_url;
		$menu['menu'] = $this->menu();
		$this->load->view('header',$header);
		$this->load->view('menu',$menu);
		$this->load->view('simple_summary_page',$data);
		$this->load->view('footer');
	}
	
	public function safaris($url)
	{   
		$this->load->helper('text');
		$this->db->where('url', $url);
		$result=$this->db->get('afric_aventure_safaris_categories');
		$id=$result->row()->id;

		$header['en']='safaris/' . $result->row()->en_url;

		$data['toptitle']=$result->row()->title;
		$header['title']=$result->row()->title;
		$data['show']=$result->row()->url;
		$data['page']='safari';
		$this->db->where('category', $id);
		$data['query']=$this->db->get('afric_aventure_safaris');
		$menu['menu'] = $this->menu();
		$this->load->view('header',$header);
		$this->load->view('menu',$menu);
		$this->load->view('summary',$data);
		$this->load->view('footer');
	}

	public function safari($url)
	{
		$this->db->where('url', $url);
		$query = $this->db->get('afric_aventure_safaris');
		$data['title'] = $query->row()->title;
		$header['title']=$query->row()->title;
		$data['text'] = $query->row()->text;
		$header['en']='safari/' . $query->row()->en_url;

		if($query->row()->accomodation_park != 0)
		{
			$this->db->where('id',$query->row()->accomodation_park);
			$accomodation=$this->db->get('afric_aventure_accomodations_categories');
			$data['accomodations'] = "<a href = '" . base_url() . 'hebergement/de-la-parc/' . $accomodation->row()->url . "' style='margin-left: 15px'>" .  $query->row()->title  . " Hebergements</a>";
		}


		$menu['menu'] = $this->menu();
		$this->load->view('header',$header);
		$this->load->view('menu',$menu);
		$this->load->view('simple_summary_page',$data);
		$this->load->view('footer');
	}
	public function hebergement($url,$accomodation_url)
	{

		$accomodations_array =array();
		$slider_check =array();
		$this->db->where('url', $accomodation_url);
		$accomodation_category=$this->db->get('afric_aventure_accomodations_categories');
		$accomodation_category_id=$accomodation_category->row()->id;

		$this->db->where('url', $url);
		$par=$this->db->get('afric_aventure_accomodations_categories');


		//$header['fr']='hebergement/' . $par->row()->url . '/' . $accomodation_category->row()->url;
		$header['en']='accommodations/' . $par->row()->en_url . '/'  . $accomodation_category->row()->en_url;

		$this->db->where('category', $accomodation_category_id);
		$accomodations=$this->db->get('afric_aventure_accomodations');

		$header['title']=$accomodation_category->row()->title . " Accomodations";
		$header['toptitle']=$accomodation_category->row()->title . " Accomodations";
		if($accomodations->num_rows() > 0){
			foreach($accomodations->result() as $accomodation)
			{
				$accomodations_array[] = $accomodation->id;
			}


			$data['accomodations']=$accomodations;	
			$this->db->where_in('accomodation_id', $accomodations_array);
			$data['sliders']=$this->db->get('afric_aventure_accomodations_sliders');

			foreach($data['sliders']->result() as $slider)
				$slider_check[$slider->accomodation_id] = $slider->accomodation_id;

			$data['slider_check']=$slider_check;
		}
		$menu['menu'] = $this->menu();
		$this->load->view('header',$header);
		$this->load->view('menu',$menu);
		if(isset($data))
			$this->load->view('accomodation_summary_page',$data);
		else
			$this->load->view('accomodation_summary_page');
		$this->load->view('footer');
	}

	
	public function qui_sommes_nous()
	{		
		$this->db->where('en_url','about-us');
		$query= $this->db->get('afric_aventure_pages');


		$header['en']=$query->row()->en_url;
		$data['title'] = $query->row()->title;
		$header['title']=$query->row()->title;
		$data['content'] = $query->row()->text;
		$menu['menu'] = $this->menu();
		$this->load->view('header',$header);
		$this->load->view('menu',$menu);
		$this->load->view('simple_summary_page',$data);
		$this->load->view('footer');

	}
	
	
	public function nous_contacter($url = '')
	{
	
		$word = strtoupper($this->randomAlphaNum(7));
		
		
		$this->load->helper('captcha');
		$vals = array(
		'word' => $word,
		'img_path'	 => './captcha/',
		'img_url'	 => 'captcha/',
		'font_path'	 => './captcha/fonts/arial.ttf',
		'img_width'	 => '200',
		'img_height' => 50,
		);
		
		$data['cap'] = create_captcha($vals);
	
		$cap_data = array(
		'captcha_time'	=> $data['cap']['time'],
		'ip_address'	=> $this->input->ip_address(),
		'word'	 => $data['cap']['word']
		);
		
		$query = $this->db->insert_string('afric_aventure_captcha', $cap_data);	
		$this->db->query($query);
		
		if($url != '')
		{
			$data['subject'] = '';
			$subject = explode('-',$url);
			foreach($subject as $sub)
				$data['subject'] .= $sub . ' ';
		}
		$this->db->where('category',1);
		$data['parks']=$this->db->get('afric_aventure_safaris');
		$this->db->where('category',1);
		$data['beaches']=$this->db->get('afric_aventure_beach_vacations');
		$this->db->where('category',2);
		$data['beaches_afric_aventure_beach_vacations']=$this->db->get('afric_aventure_beach_vacations');
		$this->db->where('category',2);
		$data['themed_afric_aventure_safaris']=$this->db->get('afric_aventure_safaris');

		
		$this->db->where('en_url','contact-us');
		$desc = $this->db->get('afric_aventure_pages');

		$header['en']=$desc->row()->en_url;

		$data['title'] =  $desc->row()->title;
		$header['title']=$desc->row()->title;
		$data['details'] =  $desc->row()->text;
		// $header['title'] = $data['details']->title;
		
		$menu['menu'] = $this->menu();
		$this->load->view('header',$header);
		$this->load->view('menu',$menu);
		$this->load->view('contact-fr',$data);
		$this->load->view('footer');
	}
	

	public function page($url){

        $this->db->where('url',$url);
		$query= $this->db->get('afric_aventure_pages');
		$data['title'] = $query->row()->title;
		$header['title']=$query->row()->title;
		$data['content'] = $query->row()->text;
		$header['en']= 'page/'. $query->row()->en_url;
		$menu['menu'] = $this->menu();
  		$this->load->view('header',$header);
		$this->load->view('menu',$menu);
		$this->load->view('simple_summary_page',$data);
		$this->load->view('footer');

	
	}
	
	public function login()
	{

		$menu['menu'] = $this->menu();
		$menu['crumbs'] = '<li><a href = "home">Home</a></li><li><a href="#" class="active">Login</a></li>';
		//$sidebar['trips'] = $this->sidebar();
		$header['title'] = 'Login';
		$header['en'] = 'login';
		$this->load->view('header',$header);
		$this->load->view('menu',$menu);
		//$this->load->view('sidebar',$sidebar);
		$this->load->view('Login');
		$this->load->view('footer');
	}
	
	function login_user()
	{
		$this->form_validation->set_rules('email', 'Email', 'required|valid_email');
		$this->form_validation->set_rules('password', 'Password', 'required');
		
		if ($this->form_validation->run() == TRUE)
		{
			$identity = $_POST['email'];
			$password = $_POST['password'];
			$remember = false; // remember the user
			if($this->ion_auth->login($identity, $password, $remember))
				redirect(base_url());
			
			else
				redirect('login/1');
		}
		else
			$this->login();
	}
	
	function logout()
	{
		if($this->ion_auth->logout())
			redirect('login/2');
	}
	
	
	
	public function fetch_page($identifier)
	{
		$this->db->where('identifier',$identifier);
		$content = $this->db->get('afric_aventure_pages');
		return $content->row();
	}

	
	
	private function randomAlphaNum($length){ 

		/*$rangeMin = pow(36, $length-1); //smallest number to give length digits in base 36 
		$rangeMax = pow(36, $length)-1; //largest number to give length digits in base 36 
		$base10Rand = mt_rand($rangeMin, $rangeMax); //get the random number 
		$newRand = base_convert($base10Rand, 10, 36); //convert it 
		
		return $newRand; //spit it out */
		
		$arr = str_split('ABCDEFGHJKMNPQRSTUVWXYZ23456789'); // get all the characters into an array
		shuffle($arr); // randomize the array
		$arr = array_slice($arr, 0, $length); // get the first six (random) characters out
		return implode('', $arr); // smush them back into a string

	} 
	

	
	function validate_captcha($captcha)
	{
		$expiration = time()-7200; // Two hour limit
		$this->db->query("DELETE FROM afric_aventure_captcha WHERE captcha_time < ".$expiration);	

	
		// Then see if a captcha exists:
		$sql = "SELECT COUNT(*) AS count FROM afric_aventure_captcha WHERE word = ? AND ip_address = ? AND captcha_time > ?";
		$binds = array($captcha, $this->input->ip_address(), $expiration);
		$query = $this->db->query($sql, $binds);
		$row = $query->row();
		
		
		if($row->count == 0){		// validate??
			$this->form_validation->set_message('validate_captcha', 'You Entered Incorrect Captcha');
			return FALSE;
		}else{
			return TRUE;
		}
		
	}
	
	function send_message($form=1)
	{
		if(isset($_POST))
		{
			$this->load->library('form_validation');
			$this->form_validation->set_rules('first_name', 'First Name', 'trim|required');
			$this->form_validation->set_rules('surname', 'Surname', 'trim|required');
			$this->form_validation->set_rules('nationality', 'Nationality','trim');
			$this->form_validation->set_rules('email_address', 'Email', 'required|valid_email');
			$this->form_validation->set_rules('email_confirmation', 'Email', 'required|matches[email_address]');
			$this->form_validation->set_rules('telephone', 'Telephone','trim|required');
			$this->form_validation->set_rules('skype', 'Skype','trim');
			$this->form_validation->set_rules('days_for_parks', 'Parks', 'trim|required');
			$this->form_validation->set_rules('days_for_beaches', 'Beaches', 'trim|required');
			$this->form_validation->set_rules('no_of_children', 'No. of Children','trim');
			$this->form_validation->set_rules('no_of_adults', 'No. of Adults', 'trim|required');
			$this->form_validation->set_rules('no_of_rooms', 'No. of Rooms', 'trim|required');
			$this->form_validation->set_rules('initial_budget', 'From', 'trim|required');
			$this->form_validation->set_rules('final_budget', 'To', 'trim|required');
			$this->form_validation->set_rules('no_of_travels_to_afrika', 'No of Trips to Africa','trim');
			$this->form_validation->set_rules('i_reach_the_website_through', 'How you reach our website','trim');
			$this->form_validation->set_rules('other_comments', 'Comments','trim');
			$this->form_validation->set_rules('captcha', 'The Captcha', 'required|callback_validate_captcha');
			$this->form_validation->set_error_delimiters('<p style = "color: red; font-weight: bold;">','</p>');

		
			
			if ($this->form_validation->run() == TRUE)
			{	
				

				
				//echo "Not Configured";
				$this->load->library('email');
				
				$config['protocol'] = 'smtp';
				$config['smtp_host'] = 'mail.afric_aventureafrica.com';
				$config['smtp_user'] = 'reservations@afric_aventureafrica.com';
				$config['smtp_pass'] = '1919wisiko';
				$config['smtp_port'] = '25';
				$config['mailtype'] = 'html';
				$config['wordwrap'] = TRUE;
				$config['charset']='utf-8';  
				$config['newline']="\r\n";  

				$this->email->initialize($config);

				$this->email->from('reservations@afric_aventureafrica.com', 'afric_aventure Africa');
				$this->email->bcc('terence@zoomtanzania.com'); 
				
				$this->email->to('reservations@afric_aventureafrica.com'); 
				

				
				$this->email->subject('Enquery');
				$message = '<html><head></head><body>';

				

				foreach($_POST as $key=>$value)
				{

					if(is_array($value))
					{
						$message .= '<strong>' . ucwords(str_replace("_", " ", $key)) .'</strong>:<br> ';

						foreach($value as $option)
						{
							$message .= $option . '<br>';
						}
					}
					else
					{
						if($key == 'subject' or $key == 'captcha' or $key == 'email_confirmation')
							$message .= "";
						else
						{
							if($value != '')
						
								$message .= '<strong>' . ucwords(str_replace("_", " ", $key)) .'</strong>: '. $value . '<br>';
								
						}
					}
				}


				$message .= '</body></html>';
				echo $message;	
				// $this->email->message($message);	
				// $this->email->set_alt_message($message);

				// if($this->email->send())
				// {

				// 	$header['title'] = 'Message Sent';

				// 	$menu['menu'] = $this->menu();
				// 	$menu['crumbs'] = '<li><a href = "home">Home</a></li><li><a href="#" class="active">Message Sent</a></li>';
				// 	$sidebar['trips'] = $this->sidebar();
				// 	$data['details']->title = "Message Sent";
				// 	$data['details']->content = "<p>Your Message has been sent to us, please give us a while to respond.</p>";
				// 	$this->load->view('header',$header);
				// 	$this->load->view('contact',$data);
				// 	$this->load->view('footer');
				// }
			

			}
			else $this->nous_contacter();
		
		}
	
	}
	
	
	
	
	
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */