<?php
	header("Content-type: text/html; charset=utf-8"); 
	require_once('fb.php');	
	 
	FB::log('Log message');
	FB::info('info message');
	FB::warn('warn message');
	FB::error('error message');
	$var = array('abc');
	fb($var, FirePHP::TRACE);

//End_php