<?php
if (!defined('BASEPATH')) exit('No direct script access allowed');

class MY_URI extends CI_URI {

        public function uri_string(){
                $segments = $this->segments;

                for($i = 0; $i < 2; ++$i){
                        if(isset($segments[$i])) $segments[$i] = str_replace('_', '-', $segments[$i]);
                }

                return implode('/', $segments);
        }

}

