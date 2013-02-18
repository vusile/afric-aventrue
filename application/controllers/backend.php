<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Backend extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		
		$this->load->database();
		$this->load->helper('url');
		
		$this->load->library('grocery_CRUD');	
				
		$this->load->library('image_CRUD');

	}
	
	function make_url_from_title($title,$table,$id,$en=0)
	{

		if($en == 1)
			$url_column = 'en_url';
		else
			$url_column = 'url';
		
		$url = strtolower(url_title($title));
		

		$this->db->where($url_column,$url);
		$obj=$this->db->get($table);

		if($table=='afric_aventure_pages')
		{
			$this->db->where('id',$id);
			$objs=$this->db->get($table);

			if($objs->row()->url != '')
			{
				if($en==1)
					$url=$objs->row()->en_url;
				else
					$url=$objs->row()->url;
			}
			
		}

		else
		{
		
			if($obj->num_rows() > 0)
			{
				$this->db->where('id',$id);
				$this->db->where($url_column,$url);
				$obj=$this->db->get($table);
				
				if( $obj->num_rows() == 0 )
					$url = $this->make_url_from_title($url . '-' . $url,$table,$id);
			
			}
		}
		
		return $url;
		
	}
	
	function _example_output($output = null)
	{
		if ($this->ion_auth->logged_in())
			$this->load->view('example.php',$output);
		else
			redirect('login');
	}	
	
	function _example_images_output($output = null)
	{
		if ($this->ion_auth->logged_in())
			$this->load->view('example_images.php',$output);
		else
			redirect('login');
	}	
	
	
	
	function afric_aventure_pages()
	{
		try {

		$this->grocery_crud->set_relation('parent_page','afric_aventure_pages','title');
		$this->grocery_crud->unset_fields('site_url','site_en_url','url','en_url','draws_from','priority','thumbnail');
		$this->grocery_crud->unset_columns('url','en_url','draws_from','priority');
		$this->grocery_crud->callback_after_insert(array($this, 'generate_thumb'));
		$this->grocery_crud->callback_after_update(array($this, 'generate_thumb'));
		$output = $this->grocery_crud->render();
		$this->_example_output($output);

		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}

	
	function generate_thumb($post_array,$primary_key)
	{
		
		if(isset($post_array['text']))
		{
			$doc = new DOMDocument();
			@$doc->loadHTML($post_array['text']);

			$tags = $doc->getElementsByTagName('img');
			$count = 0;
			
			if(count($tags)>0)
			{
				foreach ($tags as $tag) {
					if($count > 0)
						break;
					else
						$src =  $tag->getAttribute('src');
						
					$count++;
				}
				
				$name = explode('/',$src);
				
				$index = count($name);



				$data['thumbnail'] = $name[$index-1];	

			}
		}


		if($this->uri->segment(2)=='afric_aventure_safaris')
		{
			if($post_array['category']==1)
			{


				$this->db->where('id',$primary_key);
				$safari=$this->db->get('afric_aventure_safaris');
				if($safari->row()->accomodation_park == 0)
				{
					$datas = array(
						'title'=>$post_array['title'],
						'en_title'=>$post_array['en_title'],
						'parent'=>2
					);
					
					$this->db->insert('afric_aventure_accomodations_categories', $datas);
					$id = $this->db->insert_id();
					$datas = array();
					$data['accomodation_park'] = $id;

					$datas['url']=$this->make_url_from_title($post_array['title'],'afric_aventure_accomodations_categories',$id);
					$datas['en_url']=$this->make_url_from_title($post_array['en_title'],'afric_aventure_accomodations_categories',$id,1);
					$this->db->where('id', $id);
					$this->db->update('afric_aventure_accomodations_categories', $datas);
				}
			}

		}


		if($this->uri->segment(2)=='afric_aventure_beach_vacations')
		{
			if($post_array['category']==1)
			{
				$this->db->where('id',$primary_key);
				$beach=$this->db->get('afric_aventure_beach_vacations');
				if($beach->row()->accomodation_beach == 0)
				{

					$datas = array(
						'title'=>$post_array['title'],
						'en_title'=>$post_array['en_title'],
						'parent'=>2
					);
					
					$this->db->insert('afric_aventure_accomodations_categories', $datas);
					$id = $this->db->insert_id();
					$data['accomodation_beach'] = $id;
					$datas['url']=$this->make_url_from_title($post_array['title'],'afric_aventure_accomodations_categories',$id);
					$datas['en_url']=$this->make_url_from_title($post_array['en_title'],'afric_aventure_accomodations_categories',$id,1);
					$this->db->where('id', $id);
					$this->db->update('afric_aventure_accomodations_categories', $datas);
				}
			}
		}


		$data['url'] = $this->make_url_from_title($post_array['title'],$this->uri->segment(2),$primary_key);
		$data['en_url'] = $this->make_url_from_title($post_array['en_title'],$this->uri->segment(2),$primary_key,1);
		
		if($this->uri->segment(2)=='afric_aventure_pages')
		{
			if($post_array['active'] == "FALSE")
			{
				$data['site_url'] = base_url() . 'page/' . $data['url'];
				$data['site_en_url'] = base_url() . 'en/page/' . $data['en_url'];
			}
		}
		
		$this->db->where('id',$primary_key);
		$this->db->update($this->uri->segment(2),$data);
		
	}

	
	function afric_aventure_slider()
	{
		$crud = new grocery_CRUD();
 
        $crud->set_table('afric_aventure_slider');
        $crud->required_fields('photo');
        $crud->set_field_upload('photo','assets/uploads/files');
        $crud->display_as('photo','Photo (Must be 940 x 400 pixels)');
        $output = $crud->render();

        $this->_example_output($output);       
	}	
	function afric_aventure_beach_vacations()
	{
		$crud = new grocery_CRUD();
 
        $crud->set_table('afric_aventure_beach_vacations');
        $crud->set_relation('category','afric_aventure_beach_vacation_categories','title');
        $crud->columns('title' ,'en_title','category','text' ,'en_text');
        $crud->fields('title' ,'en_title','category','text' ,'en_text');
        //$crud->callback_before_insert(array($this,'insert_beach_vacation'));
        $crud->callback_after_insert(array($this, 'generate_thumb'));
		$crud->callback_after_update(array($this, 'generate_thumb'));
        $output = $crud->render();

        $this->_example_output($output);       
	}	

	function insert_beach_vacation($post_array)
	{
		if($post_array['category']==1)
		{
			$data = array(
				'title'=>$post_array['title'],
				'en_title'=>$post_array['en_title'],
				'parent'=>2
			);
			
			$this->db->insert('afric_aventure_accomodations_categories', $data);
			$id = $this->db->insert_id();

			$data['url']=$this->make_url_from_title($post_array['title'],'afric_aventure_accomodations_categories',$id);
			$data['en_url']=$this->make_url_from_title($post_array['en_title'],'afric_aventure_accomodations_categories',$id,1);
			$this->db->where('id', $id);
			$this->db->update('afric_aventure_accomodations_categories', $data);
		}
	}

	function afric_aventure_beach_vacation_categories()
	{
		$crud = new grocery_CRUD();
 
        $crud->set_table('afric_aventure_beach_vacation_categories');
        $crud->unset_fields('parent','url','en_url');
        $crud->unset_columns('parent','url','en_url');
        $crud->callback_after_insert(array($this, 'generate_thumb'));
		$crud->callback_after_update(array($this, 'generate_thumb'));
        $output = $crud->render();

        $this->_example_output($output);       
	}

	function afric_aventure_accomodations_categories()
	{
		$crud = new grocery_CRUD();
 
        //$crud->set_table('afric_aventure_beach_vacation_categories');
        $crud->set_relation('parent','afric_aventure_accomodations_categories','title');
        $crud->callback_after_insert(array($this, 'generate_thumb'));
		$crud->callback_after_update(array($this, 'generate_thumb'));
        $output = $crud->render();

        $this->_example_output($output);       
	}

	function afric_aventure_safaris_categories()
	{
		$crud = new grocery_CRUD();
 
        //$crud->set_table('afric_aventure_safaris_categories');
       // $crud->set_relation('parent','afric_aventure_pages','title');
		$crud->unset_fields('parent','url','en_url');
        $crud->unset_columns('parent','url','en_url');
  		$crud->callback_after_insert(array($this, 'generate_thumb'));
		$crud->callback_after_update(array($this, 'generate_thumb'));
        $output = $crud->render();

        $this->_example_output($output);       
	}

	function afric_aventure_safaris()
	{
		$crud = new grocery_CRUD();
 
        $crud->set_table('afric_aventure_safaris');
        $crud->set_relation('category','afric_aventure_safaris_categories','title');
        $crud->columns('title' ,'en_title','category','text' ,'en_text');
        $crud->fields('title' ,'en_title','category','text' ,'en_text');
       // $crud->callback_before_insert(array($this,'insert_safari_vacation'));
        $crud->callback_after_insert(array($this, 'generate_thumb'));
		$crud->callback_after_update(array($this, 'generate_thumb'));
        $output = $crud->render();

        $this->_example_output($output);       
	}	


	function insert_safari_vacation($post_array)
	{
		if($post_array['category']==1)
		{
			$data = array(
				'title'=>$post_array['title'],
				'en_title'=>$post_array['en_title'],
				'parent'=>1
			);
			
			$this->db->insert('afric_aventure_accomodations_categories', $data);
			$id = $this->db->insert_id();

			$post_array['accomodation_park'] = $id;

			$data['url']=$this->make_url_from_title($post_array['title'],'afric_aventure_accomodations_categories',$id);
			$data['en_url']=$this->make_url_from_title($post_array['en_title'],'afric_aventure_accomodations_categories',$id,1);
			$this->db->where('id', $id);
			$this->db->update('afric_aventure_accomodations_categories', $data);
		}
	}



	function afric_aventure_accomodations()
	{
		$crud = new grocery_CRUD();
 
        $crud->display_as('category','Beach or Park');
        $crud->set_relation('category','afric_aventure_accomodations_categories','title',array("parent >" => 0));
        $crud->callback_after_insert(array($this,'accomodations_callback'));
        $crud->callback_after_update(array($this,'accomodations_callback'));
        $crud->unset_fields('images');

        $output = $crud->render();

        $this->_example_output($output);       
	}	

	function accomodations_callback($post_array,$primary_key)
	{
		$data['images'] = '<a href = "' . base_url() . 'backend/afric_aventure_accomodations_sliders/' . $primary_key . '">Images</a>';
		$this->db->where('id',$primary_key);
		$this->db->update("afric_aventure_accomodations",$data);
	}

	
	function afric_aventure_accomodations_sliders($accomodation)
	{

		$this->db->where('id',$accomodation);
		$accomodations=$this->db->get('afric_aventure_accomodations');
		$accomodation_title = $accomodations->row()->title;



		$crud = new grocery_CRUD();
		$crud->set_subject($accomodation_title . ' Images');
 


        $crud->where('accomodation_id',$accomodation);
        $crud->set_field_upload('slide_pic');
        $crud->unset_columns('accomodation_id');
        $crud->unset_fields('accomodation_id');
        // $crud->set_relation('category','afric_aventure_accomodations_categories','title',array("parent >" => 0));
        //$crud->columns('accomodation_name','category','slider_photo1','slider_title_photo1','slider_teaser_photo1','slider_photo2','slider_title_photo2','slider_teaser_photo2','slider_photo3','slider_title_photo3','slider_teaser_photo3');
        //$crud->fields('accomodation_name','category','slider_photo1','slider_title_photo1','slider_teaser_photo1','slider_photo2','slider_title_photo2','slider_teaser_photo2','slider_photo3','slider_title_photo3','slider_teaser_photo3');
        //$crud->required_fields('slider_photo1','slider_photo2','slider_photo3');
        //$crud->set_field_upload('slider_photo1','assets/uploads/files');
        //$crud->set_field_upload('slider_photo2','assets/uploads/files');
        //$crud->set_field_upload('slider_photo3','assets/uploads/files');
       // $crud->callback_after_insert(array($this, 'generate_thumb'));
		//$crud->callback_after_update(array($this, 'generate_thumb'));
        $output = $crud->render();

        $this->_example_output($output);       
	}	
	
	function destinations_callback($post_array,$primary_key)
	{
		

	}
	

	
	
	function index()
	{
		if ($this->ion_auth->logged_in())
			$this->_example_output((object)array('output' => '' , 'js_files' => array() , 'css_files' => array()));
		else
			redirect('login');
	}

	
	
	
	
	
	
	
	
	
	
	


	
}