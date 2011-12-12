<?php
/**
 * Created by JetBrains PhpStorm.
 * User: liupengtao
 * Date: 11-12-11
 * Time: ÏÂÎç9:34
 * To change this template use File | Settings | File Templates.
 */
date_default_timezone_set('PRC');
require_once("Smarty.class.php");
require_once("data.php");

$smarty = new Smarty();
$smarty->setTemplateDir("templates");
$smarty->setCompileDir("templates_c");
$smarty->setConfigDir("configs");
$smarty->setCacheDir("cache");
$smarty->left_delimiter = '<%';
$smarty->right_delimiter = '%>';

$smarty->assign('data',$data);

$smarty->display('index.tpl');