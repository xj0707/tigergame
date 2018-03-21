<?php

/**
 *  
 * @file   Index.php  
 * @date   2016-8-23 16:03:10 
 * @author Zhenxun Du<5552123@qq.com>  
 * @version    SVN:$Id:$ 
 */  

namespace application\admin\controller;

class IndexController extends CommonController{
    /**
     * 后台首页
     */
    public function index(){
        $role=session('tiger_role');
        $msg='';
        switch ($role){
            case 1:
                $msg='当前身份：管理员';
                break;
            case 2:
                $msg='当前身份：代理管理员';
                break;
            case 3:
                $msg='当前身份：线路商';
                break;
            case 4:
                $msg='当前身份：代理';
                break;
            case 5:
                $msg='当前身份：商户';
                break;
            case 6:
                $msg='当前身份：超管';
                break;
        }
        $this->assign('msg',$msg);
        return $this->fetch();
    }
    
    
}