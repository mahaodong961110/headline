<?php
include "../core/db.php";
//数据资源
class wechat extends db
{
	 public function feed()
	 {
	 	$array = $this->pdo
     		->query('select * from feeds')
     		->fetchAll();
     	echo json_encode($array);
	 }

	public function insert()
    {
        $stmt = $this->pdo->prepare("insert into feeds(user_avatar,user_name,content,images,publish_time,publish_address)values(?,?,?,?,?,?)");
        $stmt->bindValue(1,$_GET['user_avatar']);
        $stmt->bindValue(2,$_GET['user_name']);
        $stmt->bindValue(3,$_GET['content']);
        $stmt->bindValue(4,'');
        $stmt->bindValue(5,'12分钟前');
        $stmt->bindValue(6,'悉尼');
        echo $stmt->execute();
    }
}
