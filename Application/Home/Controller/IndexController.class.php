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


	// 1 实物类 2壁报类 3多媒体类

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
            // 创新奖
            $alllei = $order->where(array('userid'=>session('uid'),'state'=>$state))->select();
            $out =count($alllei);



            if($state ==1){   //  1 实物类
                if($out > 9){
                    $title = "该类别做多能投10票";
                }else{
                    $num = $intro[0]['salenum'] + 1;
                    $product->where(array('id'=>$_GET['id']))->save(array('salenum'=>$num));
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
            }else{             // 2壁报类 3多媒体类  是3到6个
                if($out > 5){
                    $title = "该类别做多能投6票";
                }else{
                    $num = $intro[0]['salenum'] + 1;
                    $product->where(array('id'=>$_GET['id']))->save(array('salenum'=>$num));
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

            }
        }


        // 历史奖
        $orderchuang = $order->where(array('userid'=>session('uid'),'state'=>1))->select();
        $ordershiyong = $order->where(array('userid'=>session('uid'),'state'=>2))->select();
        $orderduomei = $order->where(array('userid'=>session('uid'),'state'=>3))->select();
        $chuang =count($orderchuang);
        $yong = count($ordershiyong);
        $duomei = count($orderduomei);

        $msgyong = "最少投5票";
        if($yong > 5 ){
            $msgyong = "最多投10票";
        }

        $msgchuang = "最少投3票";
        if($chuang > 3 ){
            $msgchuang = "最多投6票";
        }

        $msgduo = "最少投3票";
        if($duomei > 3 ){
            $msgduo = "最多投6票";
        }


        $this->assign('chuang',$chuang);
        $this->assign('yong',$yong);
        $this->assign('duomei',$duomei);

        $this->assign('msgchuang',$msgchuang);
        $this->assign('msgyong',$msgyong);
        $this->assign('msgduomei',$msgduo);

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