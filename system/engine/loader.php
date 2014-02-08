<?php
final class Loader {
	private $registry;

	public function __construct($registry) {
		$this->registry = $registry;
	}
		
	public function controller($route) {
		// function arguments
		$args = func_get_args();
		
		// Remove the route
		array_shift($args);	
				
		$action = new Action($route, $args); 
		
		return $action->execute($this->registry);
	}
		
	public function model($model) {
		$key = 'model_' . str_replace('/', '_', $model);
		
		if (!$this->registry->has($key)) {
			$file = DIR_APPLICATION . 'model/' . $model . '.php';
			$class = 'Model' . preg_replace('/[^a-zA-Z0-9]/', '', $model);
					
			if (file_exists($file)) { 
				include_once($file);
	
				$this->registry->set($key, new $class($this->registry));
			} else {
				trigger_error('Error: Could not load model ' . $file . '!');
				exit();
			}
		}
	}
	
	public function view($template, $data = array()) {
		$file = DIR_TEMPLATE . $template;
		
		if (file_exists($file)) {
			extract($data);
			
			ob_start();

			require($file);

			$output = ob_get_contents();

			ob_end_clean();

			return $output;
		} else {
			trigger_error('Error: Could not load template ' . $file . '!');
			exit();
		}
	}

	public function library($library) {
		$file = DIR_SYSTEM . 'library/' . $library . '.php';

		if (file_exists($file)) {
			include_once($file);
		} else {
			trigger_error('Error: Could not load library ' . $file . '!');
			exit();
		}
	}
	
	public function helper($helper) {
		$file = DIR_SYSTEM . 'helper/' . $helper . '.php';

		if (file_exists($file)) {
			include_once($file);
		} else {
			trigger_error('Error: Could not load helper ' . $file . '!');
			exit();
		}
	}

	public function config($config) {
		$this->registry->get('config')->load($config);
	}

	public function language($language) {
		return $this->registry->get('language')->load($language);
	}
}