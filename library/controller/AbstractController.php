<?php
/**
 * Guild - Topic Daily Build System.
 *
 * @link       http://git.intra.weibo.com/huati/daily-build
 * @copyright  Copyright (c) 2009-2016 Weibo Inc. (http://weibo.com)
 * @license    http://www.gnu.org/licenses/gpl-3.0.txt   GPL License
 */

namespace Library\Controller;

abstract class AbstractController 
{
	/**
	 * Smarty engine object.
	 *
	 * @var object
	 */
	protected $view = null;

	/**
	 * Constructor
	 */
	public function __construct()
	{
		$this->view = new \Smarty();
		$this->view->caching = false;
		$this->view->template_dir = SMARTY_TEMPLATE_DIR;
		$this->view->compile_dir = SMARTY_COMPILE_DIR;
	}
}
