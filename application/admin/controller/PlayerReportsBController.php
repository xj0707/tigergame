<?php
namespace application\admin\controller;


use think\Db;

class PlayerReportsBController extends CommonController{
    //选择游戏
    public function typeSelect(){

        return $this->fetch();
    }

//玩家报表
    public function index(){
        //$typeid=input('typeid');
        if(!$this->come_where['parent'][1]){
            $this->error('无商户无玩家信息！！');
        }
        $where['p.parent']=$this->come_where['parent'];
        $players=Db::name('playerReportsB')->alias('p')->join('na_users u','p.parent=u.uid')
            ->field('p.username pu,p.wct pwct,p.msn pm,p.balance pb,p.waterflow pw,p.totalBetCount ptbc,p.avgRTP pa,p.totalPays ptp,p.totalBets ptb,u.suffix us,u.username uu,p.pid,u.nickname uni')
            ->where($where)->paginate(20);
        $role=session('tiger_role');
        switch ($role){
            case 1://平台管理
                $data1=Db::name('users')->where('msn','-1')->where('suffix','<>','Platform')->select();
                $data2=Db::name('users')->where("msn !='-1' and msn != '0'")->select();
                $this->assign('data1',$data1);
                $this->assign('data2',$data2);
                break;
            case 2://顶级代理
                $data1=Db::name('users')->where('msn','0')->where('levelIndex','<>','0')->select();
                $this->assign('data1',$data1);
                break;
            case 3://线路商
                $id=session('tiger_uid');
                $users=Db::name('users')->field('uid')->where('id',$id)->find();
                $uid=$users['uid'];
                $data1=Db::name('users')->where('msn','-1')->where('levelindex','like',"%$uid%")->select();
                $data2=Db::name('users')->where('msn','<>','-1')->where('levelindex','like',"%$uid%")->select();
                $this->assign('data1',$data1);
                $this->assign('data2',$data2);
                break;
            case 4://次级代理
                $id=session('tiger_uid');
                $users=Db::name('users')->where('id',$id)->find();
                $uid=$users['uid'];
                $data1=Db::name('users')->where('msn','0')->where('levelindex','like',"%$uid%")->select();
                $this->assign('data1',$data1);
                break;
            case 5://商户
                break;
            case 6://超管
                $data1=Db::name('users')->where('msn','-1')->where('suffix','<>','Platform')->select();
                $data2=Db::name('users')->where("msn !='-1' and msn != '0'")->select();
                $data3=Db::name('users')->where('msn','0')->where('levelindex','<>','0')->select();
                $this->assign('data1',$data1);
                $this->assign('data2',$data2);
                $this->assign('data3',$data3);
                break;
        }
//        if($typeid){
//            if($typeid==40001){
//                $typename='塔罗之谜';
//                $this->assign('typename',$typename);
//            }
//        }

        $this->assign('typeId',40002);
        $this->assign('role',$role);
        $this->assign('players',$players);
        return $this->fetch();
    }

    /**
     * 线路商查询
     */
    public function xl(){
        $id=input('get.id');
        if($id==-1){
            $this->error('请选择线路商！！！');
        }
        $info=Db::name('users')->field('uid')->where('id',$id)->find();
        $role=session('tiger_role');
        if($info){
            $uid=$info['uid'];
            $user_ids=Db::name('users')->field('uid')->where('levelindex','like',"%$uid%")->select();
            $guanli=[$uid];
            foreach ($user_ids as $user_id){
                $guanli[]=$user_id['uid'];
            }
            $players=Db::name('playerReportsB')->alias('p')->join('na_users u','p.parent=u.uid')
                ->field('p.username pu,p.wct pwct,p.msn pm,p.balance pb,p.waterflow pw,p.totalBetCount ptbc,p.avgRTP pa,p.totalPays ptp,p.totalBets ptb,u.suffix us,u.username uu,p.pid,u.nickname uni')
                ->where('p.parent','in',$guanli)->paginate(20,false,['query' => request()->param()]);
            switch ($role){
                case 1://平台管理
                    $data1=Db::name('users')->where('msn','-1')->where('suffix','<>','Platform')->select();
                    $data2=Db::name('users')->where("msn !='-1' and msn != '0'")->select();
                    $this->assign('data1',$data1);
                    $this->assign('data2',$data2);
                    break;
                case 2://顶级代理
                    $data1=Db::name('users')->where('msn','0')->where('levelIndex','<>','0')->select();
                    $this->assign('data1',$data1);
                    break;
                case 3://线路商
                    $id=session('tiger_uid');
                    $users=Db::name('users')->field('uid')->where('id',$id)->find();
                    $uid=$users['uid'];
                    $data1=Db::name('users')->where('msn','-1')->where('levelindex','like',"%$uid%")->select();
                    $data2=Db::name('users')->where('msn','<>','-1')->where('levelindex','like',"%$uid%")->select();
                    $this->assign('data1',$data1);
                    $this->assign('data2',$data2);
                    break;
                case 4://次级代理
                    $id=session('tiger_uid');
                    $users=Db::name('users')->where('id',$id)->find();
                    $uid=$users['uid'];
                    $data1=Db::name('users')->where('msn','0')->where('levelindex','like',"%$uid%")->select();
                    $this->assign('data1',$data1);
                    break;
                case 5://商户
                    break;
                case 6://超管
                    $data1=Db::name('users')->where('msn','-1')->where('suffix','<>','Platform')->select();
                    $data2=Db::name('users')->where("msn !='-1' and msn != '0'")->select();
                    $data3=Db::name('users')->where('msn','0')->where('levelindex','<>','0')->select();
                    $this->assign('data1',$data1);
                    $this->assign('data2',$data2);
                    $this->assign('data3',$data3);
                    break;
            }
            $this->assign('typeId',40002);
            $this->assign('role',$role);
            $this->assign('players',$players);
            return $this->fetch('index');
        }

    }
    /**
     * 商户查询
     */
    public function sh(){
        $id=input('get.id');
        if($id==-1){
            $this->error('请选择商户！！！');
        }
        $info=Db::name('users')->field('uid')->where('id',$id)->find();
        $role=session('tiger_role');
        if($info){
            $uid=$info['uid'];
            $players=Db::name('playerReportsB')->alias('p')->join('na_users u','p.parent=u.uid')
                ->field('p.username pu,p.wct pwct,p.msn pm,p.balance pb,p.waterflow pw,p.totalBetCount ptbc,p.avgRTP pa,p.totalPays ptp,p.totalBets ptb,u.suffix us,u.username uu,p.pid,u.nickname uni')
                ->where('p.parent',$uid)->paginate(20,false,['query' => request()->param()]);
            switch ($role){
                case 1://平台管理
                    $data1=Db::name('users')->where('msn','-1')->where('suffix','<>','Platform')->select();
                    $data2=Db::name('users')->where("msn !='-1' and msn != '0'")->select();
                    $this->assign('data1',$data1);
                    $this->assign('data2',$data2);
                    break;
                case 2://顶级代理
                    $data1=Db::name('users')->where('msn','0')->where('levelIndex','<>','0')->select();
                    $this->assign('data1',$data1);
                    break;
                case 3://线路商
                    $id=session('tiger_uid');
                    $users=Db::name('users')->field('uid')->where('id',$id)->find();
                    $uid=$users['uid'];
                    $data1=Db::name('users')->where('msn','-1')->where('levelindex','like',"%$uid%")->select();
                    $data2=Db::name('users')->where('msn','<>','-1')->where('levelindex','like',"%$uid%")->select();
                    $this->assign('data1',$data1);
                    $this->assign('data2',$data2);
                    break;
                case 4://次级代理
                    $id=session('tiger_uid');
                    $users=Db::name('users')->where('id',$id)->find();
                    $uid=$users['uid'];
                    $data1=Db::name('users')->where('msn','0')->where('levelindex','like',"%$uid%")->select();
                    $this->assign('data1',$data1);
                    break;
                case 5://商户
                    break;
                case 6://超管
                    $data1=Db::name('users')->where('msn','-1')->where('suffix','<>','Platform')->select();
                    $data2=Db::name('users')->where("msn !='-1' and msn != '0'")->select();
                    $data3=Db::name('users')->where('msn','0')->where('levelindex','<>','0')->select();
                    $this->assign('data1',$data1);
                    $this->assign('data2',$data2);
                    $this->assign('data3',$data3);
                    break;
            }
            $this->assign('typeId',40002);
            $this->assign('role',$role);
            $this->assign('players',$players);
            return $this->fetch('index');
        }

    }

    /**
     * 代理商查询
     */
    public function dl(){
        $id=input('get.id');
        if($id==-1){
            $this->error('请选择代理！！！');
        }
        $info=Db::name('users')->field('uid')->where('id',$id)->find();
        $role=session('tiger_role');
        if($info){
            $uid=$info['uid'];
            $user_ids=Db::name('users')->field('uid')->where('levelindex','like',"%$uid%")->select();
            $guanli=[$uid];
            foreach ($user_ids as $user_id){
                $guanli[]=$user_id['uid'];
            }
            $players=Db::name('playerReportsB')->alias('p')->join('na_users u','p.parent=u.uid')
                ->field('p.username pu,p.wct pwct,p.msn pm,p.balance pb,p.waterflow pw,p.totalBetCount ptbc,p.avgRTP pa,p.totalPays ptp,p.totalBets ptb,u.suffix us,u.username uu,p.pid,u.nickname uni')
                ->where('p.parent','in',$guanli)->paginate(20,false,['query' => request()->param()]);
            switch ($role){
                case 1://平台管理
                    $data1=Db::name('users')->where('msn','-1')->where('suffix','<>','Platform')->select();
                    $data2=Db::name('users')->where("msn !='-1' and msn != '0'")->select();
                    $this->assign('data1',$data1);
                    $this->assign('data2',$data2);
                    break;
                case 2://顶级代理
                    $data1=Db::name('users')->where('msn','0')->where('levelIndex','<>','0')->select();
                    $this->assign('data1',$data1);
                    break;
                case 3://线路商
                    $id=session('tiger_uid');
                    $users=Db::name('users')->field('uid')->where('id',$id)->find();
                    $uid=$users['uid'];
                    $data1=Db::name('users')->where('msn','-1')->where('levelindex','like',"%$uid%")->select();
                    $data2=Db::name('users')->where('msn','<>','-1')->where('levelindex','like',"%$uid%")->select();
                    $this->assign('data1',$data1);
                    $this->assign('data2',$data2);
                    break;
                case 4://次级代理
                    $id=session('tiger_uid');
                    $users=Db::name('users')->where('id',$id)->find();
                    $uid=$users['uid'];
                    $data1=Db::name('users')->where('msn','0')->where('levelindex','like',"%$uid%")->select();
                    $this->assign('data1',$data1);
                    break;
                case 5://商户
                    break;
                case 6://超管
                    $data1=Db::name('users')->where('msn','-1')->where('suffix','<>','Platform')->select();
                    $data2=Db::name('users')->where("msn !='-1' and msn != '0'")->select();
                    $data3=Db::name('users')->where('msn','0')->where('levelindex','<>','0')->select();
                    $this->assign('data1',$data1);
                    $this->assign('data2',$data2);
                    $this->assign('data3',$data3);
                    break;
            }
            $this->assign('typeId',40002);
            $this->assign('role',$role);
            $this->assign('players',$players);
            return $this->fetch('index');
        }
    }

    /**
     *玩家用户名查询
     */
    public function likeUsername(){
        $username=input('post.username');
        $role=session('tiger_role');
        $where['p.parent']=$this->come_where['parent'];
        $players=Db::name('playerReportsB')->alias('p')->join('na_users u','p.parent=u.uid')
            ->field('p.username pu,p.wct pwct,p.msn pm,p.balance pb,p.waterflow pw,p.totalBetCount ptbc,p.avgRTP pa,p.totalPays ptp,p.totalBets ptb,u.suffix us,u.username uu,p.pid,u.nickname uni')
            ->where('p.username','like',"%$username%")->where($where)->paginate(20);
        switch ($role){
            case 1://平台管理
                $data1=Db::name('users')->where('msn','-1')->where('suffix','<>','Platform')->select();
                $data2=Db::name('users')->where("msn !='-1' and msn != '0'")->select();
                $this->assign('data1',$data1);
                $this->assign('data2',$data2);
                break;
            case 2://顶级代理
                $data1=Db::name('users')->where('msn','0')->where('levelIndex','<>','0')->select();
                $this->assign('data1',$data1);
                break;
            case 3://线路商
                $id=session('tiger_uid');
                $users=Db::name('users')->field('uid')->where('id',$id)->find();
                $uid=$users['uid'];
                $data1=Db::name('users')->where('msn','-1')->where('levelindex','like',"%$uid%")->select();
                $data2=Db::name('users')->where('msn','<>','-1')->where('levelindex','like',"%$uid%")->select();
                $this->assign('data1',$data1);
                $this->assign('data2',$data2);
                break;
            case 4://次级代理
                $id=session('tiger_uid');
                $users=Db::name('users')->where('id',$id)->find();
                $uid=$users['uid'];
                $data1=Db::name('users')->where('msn','0')->where('levelindex','like',"%$uid%")->select();
                $this->assign('data1',$data1);
                break;
            case 5://商户
                break;
            case 6://超管
                $data1=Db::name('users')->where('msn','-1')->where('suffix','<>','Platform')->select();
                $data2=Db::name('users')->where("msn !='-1' and msn != '0'")->select();
                $data3=Db::name('users')->where('msn','0')->where('levelindex','<>','0')->select();
                $this->assign('data1',$data1);
                $this->assign('data2',$data2);
                $this->assign('data3',$data3);
                break;
        }
        $this->assign('typeId',40002);
        $this->assign('role',$role);
        $this->assign('players',$players);
        return $this->fetch('index');

    }




}