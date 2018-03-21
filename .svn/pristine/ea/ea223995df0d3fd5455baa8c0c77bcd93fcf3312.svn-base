<?php
namespace application\admin\controller;
use think\Db;

class TotalWinController extends CommonController{

//总输赢报表
    public function index(){
        if(!$this->come_where['parent'][1]){
            $this->error('无商户无玩家信息！！');
        }
        $uids=Db::name('players')->where($this->come_where)->column('uid');
        if(count($uids)){
            $players=Db::name('totalReports')->alias('p')->join('na_users u','p.parentId=u.uid')
                ->field('u.nickname un,p.gameUserId,p.username,p.nickname,p.balance,p.betCount,p.winlose,p.totalBet,p.wcr,p.ret,p.agentBalance,p.agentRate,p.giveback')
                ->where('p.gameUserId','in',$uids)->paginate(20);
        }else{
            $this->error('无玩家信息！！');
        }
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
        $this->assign('role',$role);
        $this->assign('players',$players);
        return $this->fetch();
    }

    /**
     * 线路商查询
     */
    public function xl(){
        $id=input('get.id');
        $info=Db::name('users')->field('uid')->where('id',$id)->find();
        $role=session('tiger_role');
        if($info){
            $uid=$info['uid'];
            $user_ids=Db::name('users')->where('levelindex','like',"%$uid%")->column('uid');
            $guanli=$user_ids;
            $guanli[]=$uid;
            $players=Db::name('totalReports')->alias('p')->join('na_users u','p.parentId=u.uid')
                ->field('u.nickname un,p.gameUserId,p.username,p.nickname,p.balance,p.betCount,p.winlose,p.totalBet,p.wcr,p.ret,p.agentBalance,p.agentRate,p.giveback')
                ->where('p.gameUserId','in',$guanli)->paginate(20,false,['query' => request()->param()]);
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
        $info=Db::name('users')->field('uid')->where('id',$id)->find();
        $role=session('tiger_role');
        if($info){
            $uid=$info['uid'];
            $players=Db::name('totalReports')->alias('p')->join('na_users u','p.parentId=u.uid')
                ->field('u.nickname un,p.gameUserId,p.username,p.nickname,p.balance,p.betCount,p.winlose,p.totalBet,p.wcr,p.ret,p.agentBalance,p.agentRate,p.giveback')
                ->where('p.parentId','in',$uid)->paginate(20,false,['query' => request()->param()]);
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
        $info=Db::name('users')->field('uid')->where('id',$id)->find();
        $role=session('tiger_role');
        if($info){
            $uid=$info['uid'];
            $user_ids=Db::name('users')->where('levelindex','like',"%$uid%")->column('uid');
            $guanli=$user_ids;
            $guanli[]=$uid;
            $players=Db::name('totalReports')->alias('p')->join('na_users u','p.parentId=u.uid')
                ->field('u.nickname un,p.gameUserId,p.username,p.nickname,p.balance,p.betCount,p.winlose,p.totalBet,p.wcr,p.ret,p.agentBalance,p.agentRate,p.giveback')
                ->where('p.gameUserId','in',$guanli)->paginate(20,false,['query' => request()->param()]);
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
        $where['p.parentId']=$this->come_where['parent'];
        $players=Db::name('totalReports')->alias('p')->join('na_users u','p.parentId=u.uid')
            ->field('u.nickname un,p.gameUserId,p.username,p.nickname,p.balance,p.betCount,p.winlose,p.totalBet,p.wcr,p.ret,p.agentBalance,p.agentRate,p.giveback')
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
        $this->assign('role',$role);
        $this->assign('players',$players);
        return $this->fetch('index');

    }

    //额度出入记录
    public function details(){
        set_time_limit(0);
        $gameUserId=input('gid');
        $gameUserId=973184;
        $url='https://rlczk62j4m.execute-api.ap-southeast-1.amazonaws.com/g40001/userio?gameUserId='.$gameUserId;
        $ch=curl_init();
        curl_setopt($ch,CURLOPT_URL,$url);
        curl_setopt($ch,CURLOPT_HEADER,0);
        curl_setopt($ch,CURLOPT_RETURNTRANSFER,1);
        // 设置HTTPS支持
        date_default_timezone_set('PRC'); // 使用Cookie时，必须先设置时区
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0); // 对认证证书来源的检查从证书中检查SSL加密算法是否存在
        curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 2); //
        $infos=curl_exec($ch);
        curl_close($ch);
        //var_dump($infos);exit;
        if(!$infos){
            $this->error('请求失败！1'.intval($infos));
        }
        $obj=json_decode($infos);
        if($obj->code==0){
            $datas=$obj->payload->data;
            if(!count($datas)){
                $this->error('没有流水详情!');
            }
            $lists=new Page($datas,30);
            $this->assign('lists',$lists);
            return $this->fetch();
        }else{
            $this->error('请求失败！2'.$obj->err);
        }

    }



}


class Page {
    public $page;   //当前页
    public $total; //总记录数
    public $listRows; //每页显示记录数
    private $uri;//动态url
    public $pageNum; //总页数
    private $listNum=4;//显示页码按钮数量
    public $render;//分页后的html模板
    public $data;//分页后渲染到模板的数据
    /*
     * 初始化分页数据
     *$sdata 待分页的数据
     * $listRows 每页记录数
     */
    public function __construct($sdata, $listRows=15){
        $this->total=count($sdata);
        $this->listRows=$listRows;
        $this->uri=$this->getUri();
        $this->page=!empty($_GET["page"]) ? $_GET["page"] : 1;
        $this->pageNum=ceil($this->total/$this->listRows);
        $this->render=$this->pageHtml();
        $this->data=array_slice($sdata,($this->page-1)*$this->listRows,$listRows);
        return $this->data;
    }

    //动态获取url
    private function getUri(){
        $url=$_SERVER["REQUEST_URI"].(strpos($_SERVER["REQUEST_URI"], '?')?'':"?");
        $parse=parse_url($url);

        if(isset($parse["query"])){
            parse_str($parse['query'],$params);
            unset($params["page"]);
            $url=$parse['path'].'?'.http_build_query($params);
        }

        return $url;
    }

    //首页
    private function first(){
        $html = "";
        if($this->page==1)
            $html.=" <a style='magin=10px;' class='current btn disabled'>首 页</a>";
        else
            $html.=" <a class='btn btn-primary-outline' href='{$this->uri}&page=1'>首 页</a>";

        return $html;
    }

    //上一页
    private function prev(){
        $html = "";
        if($this->page==1)
            $html.=" <a class='current btn disabled'>上一页</a>";
        else
            $html.=" <a class='btn btn-primary-outline' href='{$this->uri}&page=".($this->page-1)."'>上一页</a>";

        return $html;
    }

    //页码按钮
    private function pageList(){
        $linkPage="";

        $inum=floor($this->listNum/2);

        for($i=$this->page-$inum;$i<=$this->page+$inum;$i++){
            if($i<=0){
                continue;
            }
            if($i>$this->pageNum){
                continue;
            }
            if($i == $this->page){
                $linkPage.=" <a class='current btn btn-secondary'>{$i}</a>";
            }else{
                $linkPage.=" <a class='btn btn-primary-outline' href='{$this->uri}&page={$i}'>{$i}</a>";
            }
        }

        return $linkPage;
    }

    //下一页
    private function next(){
        $html = "";
        if($this->page==$this->pageNum)
            $html.=" <a class='current btn disabled'>下一页</a>";
        else
            $html.=" <a class='btn btn-primary-outline' href='{$this->uri}&page=".($this->page+1)."'>下一页</a>";

        return $html;
    }

    //尾页
    private function last(){
        $html = "";
        if($this->page==$this->pageNum)
            $html.=" <a class='current btn disabled'>尾 页</a>";
        else
            $html.=" <a class='btn btn-primary-outline' href='{$this->uri}&page=".($this->pageNum)."'>尾 页</a>";

        return $html;
    }

    //输入指定页码
    private function goPage(){
        return '  <input class="input-text" type="text" onkeydown="javascript:if(event.keyCode==13){var page=(this.value>'.$this->pageNum.')?'.$this->pageNum.':this.value;location=\''.$this->uri.'&page=\'+page+\'\'}" value="'.$this->page.'" style="width:52px"><input class="btn btn-secondary" type="button" value="GO" onclick="javascript:var page=(this.previousSibling.value>'.$this->pageNum.')?'.$this->pageNum.':this.previousSibling.value;location=\''.$this->uri.'&page=\'+page+\'\'">  ';
    }

    //选择指定页码
    function selectPage(){
        $inum=10;
        $location = $this->uri.'&page=';
        $selectPage ="<span class='va-m'>到第 </span> <span class='select-box' style='width:initial'><select class='select' name='topage' size='1' onchange='window.location=\"$location\"+this.value'>";

        for($i=$this->page-$inum;$i<=$this->page+$inum;$i++){
            if($i<=0){
                continue;
            }
            if($i>$this->pageNum){
                continue;
            }
            if($i == $this->page){
                $selectPage .="<option value='$i' selected>$i</option>";
            }else{
                $selectPage .="<option value='$i'>$i</option>";
            }
        }
        $selectPage .="</select></span> <span class='va-m'>页</span>";
        return $selectPage;
    }

    //组装分页的html模板
    function pageHtml(){
        $html  = "<div class='cl mt-20 text-c'>";
        // $html .= "<span class='pr-20 va-m'>共有<b>{$this->total}</b>条记录</span>";
        // $html .= "<span class='pr-20 va-m'>每页显示<b>{$this->listRows}</b>条</span>";
        // $html .= "<span class='pr-20 va-m'><b>当前{$this->page}/{$this->pageNum}</b>页</span>";

        $html .= $this->first();
        $html .= $this->prev();
        $html .= $this->pageList();
        $html .= $this->next();
        $html .= $this->last();
        $html .= $this->goPage();
        $html .= $this->selectPage();
        $html .= '</div>';

        return $html;
    }
}