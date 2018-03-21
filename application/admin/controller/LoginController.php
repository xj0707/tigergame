<?php

/**
 *  登陆页
 * @file   Login.php  
 * @date   2016-8-23 19:52:46 
 * @author Zhenxun Du<5552123@qq.com>  
 * @version    SVN:$Id:$ 
 */

namespace application\admin\controller;

use think\Controller;
use think\Db;
use think\Loader;

class LoginController extends Controller {

    /**
     * 登入
     */
    public function index() {
        //dump(request()->ip());exit;

        if ($_POST['dosubmit']) {
            $username = input('post.username');
            $password = input('post.password');

            if (!$username) {
                $this->error('用户名不能为空');
            }
            if (!$password) {
                $this->error('密码不能为空');
            }

            $info = db('admin')->field('id,username,password')->where('username', $username)->find();

            if (!$info) {
                $this->error('用户不存在');
            }

            if (md5($password) != $info['password']) {
                $this->error('密码不正确');
            } else {
                $uids=Db::name('users')->column('uid');
                session('tiger_parentId',$uids);
                session('tiger_username', $info['username']);
                session('tiger_uid', $info['id']);
                session('tiger_role', 6);//超管
                if (input('post.islogin')) {
                    cookie('tiger_username', encry_code($info['username']));
                    cookie('tiger_uid', encry_code($info['id']));
                    cookie('tiger_parentId',encry_code($uids));
                    cookie('tiger_role',encry_code(1));
                }

                //记录登录信息
                Loader::model('Admin')->editInfo(1, $info['id']);
                $this->success('登入成功', 'index/index');
            }
        } else {
            if (session('tiger_username')) {
                $this->success('您已登入', 'index/index');
            }

            if (cookie('tiger_username')) {
                $username = encry_code(cookie('tiger_username'),'DECODE');
                $info = db('admin')->field('id,username,password')->where('username', $username)->find();
                if ($info) {
                    //记录
                    $uids=Db::name('users')->column('uid');
                    session('tiger_parentId',$uids);
                    session('tiger_username', $info['username']);
                    session('tiger_uid', $info['id']);
                    session('tiger_role', 6);
                    Loader::model('Admin')->editInfo(1, $info['id']);
                    $this->success('登入成功', 'index/index');
                }
            }

            $this->view->engine->layout(false);
            return $this->fetch('login');
        }
    }

    //api接口直接进入后台
    public function apilogin(){
        $token=input('token');
        $info = encry_code($token,'DECODE');//解密
        $data=unserialize($info);
       // $username = $data['username'];
        $id = $data['uid'];
       // $guanli=$data['guanli'];
        $urltime=$data['time'];
      //  $role=$data['role'];
        $time=time();
        if($time-$urltime>86400){
            $jsonarr=[
                'code'=>1,
                'msg'=>'url时间已经过期，请重新登录',
            ];
            return  json($jsonarr);
        }

        $info=Db::name('users')->where('id',$id)->find();
        //取出msn /suffix;
        $uid=$info['uid'];
        $msn=$info['msn'];
        $suffix=$info['suffix'];
        $levelIndex=$info['levelindex'];
        $username=$info['username'];
        $guanli=[];
        $role='';
        //定义身份
        if($levelIndex==0 && $suffix=='Platform'){//管理员
            //找出所有的线路商或者商户
            $guanliinfos=Db::name('users')->field('uid')->where('levelindex','like','%01%')->where('msn','<>',0)->where('suffix','<>','Platform')->select();
            foreach ($guanliinfos as $guanliinfo){
                $guanli[]=$guanliinfo['uid'];
            }
            $role=1;
        }
        if($levelIndex==0 && $msn==0){//代理管理员 没有玩家
            $dailiinfos=Db::name('users')->field('uid')->where('levelindex','like','%01%')->where('msn',0)->select();
            foreach ($dailiinfos as $dailiinfo){
                $guanli[]=$dailiinfo['uid'];
            }
            $role=2;
        }
        if($msn==-1 && $levelIndex!=0){//线路商
            $xianlus=Db::name('users')->field('uid')->where('levelindex','like',"%$uid%")->select();
            foreach ($xianlus as $xianlu){
                $guanli[]=$xianlu['uid'];
            }
            $role=3;
        }
        if($msn==0 && $levelIndex!=0 ){//次级代理
            $guanli[]=$uid;
            $dailiinfos=Db::name('users')->where('levelindex','like',"%$uid%")->select();
            foreach ($dailiinfos as $dailiinfo){
                $guanli[]=$dailiinfo['uid'];
            }
            $role=4;
        }
        if($levelIndex!=0 && $msn!=0 && $msn !=-1){//商户
            $guanli[]=$uid;
            $role=5;
        }
        //记录session 然后 跳转到后台页面
        session('tiger_parentId',$guanli);
        session('tiger_username', $username);
        session('tiger_uid',  $id);
        session('tiger_role',  $role);
        $this->success('验证成功', 'index/index','',1);
    }


    /**
     * 登出
     */
    public function logout() {
        session('tiger_username', null);
        session('tiger_uid', null);
        session('tiger_parentId', null);
        session('tiger_role', null);
        cookie('tiger_username', null);
        cookie('tiger_uid', null);
        cookie('tiger_parentId', null);
        cookie('tiger_role', null);
        $this->success('退出成功', url('login/againLogin','type=1'));
    }

    /**
     * 有效信息过期提示重新登录
     */
    public function againLogin($msg='登录信息失效'){
        $type=input('type');
        if($type==1){
            $msg='退出成功';
        }
        $this->assign('msg',$msg);
        return $this->fetch();
    }

}
