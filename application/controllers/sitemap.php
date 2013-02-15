<?php
class Sitemap extends CI_Controller
{
    
    public function __construct()
    {
        parent::__construct;
        $this->load->helper(array('text','url'));
        $this->load->library('google_sitemap'); //Load Library
    }

    function index()
    {
        $sitemap = new google_sitemap; //Create a new Sitemap Object
        $item = new google_sitemap_item(base_url()."http://localhost/afric-aventure/",date("Y-m-d"), 'weekly', '0.8' ); //Create a new Item
        $sitemap->add_item($item); //Append the item to the sitemap object
        $sitemap->build("./sitemap.xml"); //Build it...
                
         //Let's compress it to gz
        $data = implode("", file&#40;"./sitemap.xml"&#41;);
        $gzdata = gzencode($data, 9);
        $fp = fopen&#40;"./sitemap.xml.gz", "w"&#41;;
        fwrite($fp, $gzdata);
        fclose($fp);

        //Let's Ping google
        $this->_pingGoogleSitemaps(base_url()."/sitemap.xml.gz");
    }

    function _pingGoogleSitemaps( $url_xml )
    {
       $status = 0;
       $google = 'www.google.com';
       if( $fp=@fsockopen&#40;$google, 80&#41; )
       {
          $req =  'GET /webmasters/sitemaps/ping?sitemap=' .
                  urlencode( $url_xml ) . " HTTP/1.1\r\n" .
                  "Host: $google\r\n" .
                  "User-Agent: Mozilla/5.0 (compatible; " .
                  PHP_OS . ") PHP/" . PHP_VERSION . "\r\n" .
                  "Connection: Close\r\n\r\n";
          fwrite( $fp, $req );
          while( !feof($fp) )
          {
             if( @preg_match('~^HTTP/\d\.\d (\d+)~i', fgets($fp, 128), $m) )
             {
                $status = intval( $m[1] );
                break;
             }
          }
          fclose( $fp );
       }
       return( $status );
    }

}