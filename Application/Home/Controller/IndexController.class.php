<?php
namespace Home\Controller;
use Think\Controller;
header('content-type:text/html;charset=utf-8');
class IndexController extends CommonController {

   //主页
	public function index(){
		$article =M('product');
		$intro= $article->where(array('id'=>$_GET['id']))->select();
		$this->assign('intro',$intro[0]);
        $this->assign('id',$_GET['id']);
		$this->display();
	}

    public function result(){
        $product =M('product');
        $order = M("orderlog");
        $state = $_GET['state'];
        $intro= $product->where(array('id'=>$_GET['id']))->select();
        $orderlog = $order->where(array('userid'=>session('uid'),'productid'=>$_GET['id'],'state'=>$state))->select();
        $title = "投票结果";
        if($orderlog[0]){
            $title = "该展览品您已过投票";
        }else{
            $logdata['userid'] = session('uid');
            $logdata['productid'] = $_GET['id'];
            $logdata['bianhao'] =$intro[0]['cont'];
            $logdata['productname'] = $intro[0]['name'];
            $logdata['producttype'] = $intro[0]['price'];
            $logdata['addtime'] = time();
            $logdata['addymd'] = date("Y-m-d H:i:s",time());
            $logdata['state'] = $state;
            $order->add($logdata);
        }

        // 创新奖
        $orderchuang = $order->where(array('userid'=>session('uid'),'state'=>1))->select();
        $ordershiyong = $order->where(array('userid'=>session('uid'),'state'=>2))->select();

        $chuang =count($orderchuang);
        $yong = count($ordershiyong);

        $msgchuang = "最少投3票";
        if($chuang > 3 ){
            $msgchuang = "最多投10票";
        }

        $msgyong = "最少投3票";
        if($yong > 3 ){
            $msgyong = "最多投10票";
        }

        $this->assign('chuang',$chuang);
        $this->assign('yong',$yong);

        $this->assign('msgchuang',$msgchuang);
        $this->assign('msgyong',$msgyong);

        $this->assign('intro',$intro[0]);
        $this->assign('title',$title);
        $this->assign('id',$_GET['id']);
        $this->display();
    }

	private function getlists($url)
	{
		$ch = curl_init();
		curl_setopt($ch, CURLOPT_POST, 1);
		curl_setopt($ch, CURLOPT_HEADER, 0);
		curl_setopt($ch, CURLOPT_URL, $url);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
		$result = curl_exec($ch);
		curl_close($ch);
		return json_decode($result, true);
	}

	private function curlget($url){
		$ch = curl_init();
		curl_setopt($ch, CURLOPT_URL,$url);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
		curl_setopt($ch, CURLOPT_HEADER, 0);
//		执行并获取HTML文档内容
		$output = curl_exec($ch);
		//释放curl句柄
		curl_close($ch);
		return json_decode($output, true);
	}
}