<?php

if (!defined('BASEPATH')) exit('No direct script access allowed');

class MY_Router extends CI_Router {

        public function _set_request($segments){
                // Fix only the first 2 segments
                for($i = 0; $i < 2; ++$i){
                        if(isset($segments[$i])) $segments[$i] = str_replace('-', '_', $segments[$i]);
                }
                
                // Run the original _set_request method, passing it our updated segments variable
                parent::_set_request($segments);
        }

}