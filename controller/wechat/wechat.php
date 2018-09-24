<?php
include "../core/db.php";
function https_request($url,$data=""){
  // 开启curl
  $ch=curl_init();
  // 设置传输选项
  // 设置传输地址
  curl_setopt($ch, CURLOPT_URL, $url);
  // 以文件流的形式返回
  curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
  /**/
  curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false); //不验证证书下同
  curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, false);


  if ($data) {
    // 以post方式
    curl_setopt($ch, CURLOPT_POST, 1);
    curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($data));
  }

  $headers = array("Content-type: application/json;charset=UTF-8","Accept: application/json","Cache-Control: no-cache", "Pragma: no-cache");

  curl_setopt( $ch, CURLOPT_HTTPHEADER, $headers );

  // 发送curl
  $request=curl_exec($ch);
  $tmpArr=json_decode($request,TRUE);
  if (is_array($tmpArr)) {
    return $tmpArr;
  }else{
    return $request;
  }
  // 关闭资源
  curl_close($ch);
}
//数据资源
class wechat extends db
{
// 	//查询对应的Openid的数据
	 public function users_feed()
	 {
	 	$openid = $_GET['openid'];
	 	$page = (int)$_GET['page'];
	 	$sql = 'select * from feeds where openid = "'.$openid.'" order by ctime desc limit 10 offset ' . ($page-1) * 10;
		$users_feed = $this->pdo->query($sql)->fetchAll();
		echo json_encode($users_feed);
	 }
	 //查询所有数据
	 public function feed()
	 {
        $page = (int)$_GET['page'];
	 	$feeds = $this->pdo
     		->query('select * from feeds order by ctime desc limit 3 offset ' . ($page-1) * 3 )
     		->fetchAll();
     	echo json_encode($feeds);
	 }
//行为资源。插入数据库
	public function insert()
    {
        $url = 'https://api.weixin.qq.com/sns/jscode2session?appid=wx648f891ef721c399&secret=0127742ee6712a12ea408d00b0c20fc8&js_code='.$_GET['code'].'&grant_type=authorization_code';
        $result = https_request($url);
        $openid = $result['openid'];
        print_r($result);
        $stmt = $this->pdo->prepare("insert into feeds(openid,user_avatar,user_name,content,images,publish_address)values(?,?,?,?,?,?)");
        $stmt->bindValue(1,$openid);
        $stmt->bindValue(2,$_GET['user_avatar']);
        $stmt->bindValue(3,$_GET['user_name']);
        $stmt->bindValue(4,$_GET['content']);
        $stmt->bindValue(5,$_GET['images']);
        $stmt->bindValue(6,'悉尼');
        $stmt->execute();
        echo $openid;
    }

    //行为资源 你给我图片 我给你存储，并且给你资源名。
    public function upload()
    {
       $src = $_FILES['f']['tmp_name'];
       $file_name = $_FILES['f']['name'];
       $dist = './assets/wechat/' .$file_name ;
       move_uploaded_file($src, $dist);
       echo 'http://try.third.com/assets/wechat/'.$file_name;
    }
} 

