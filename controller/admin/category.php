<?php

include '../core/db.php';

class category extends db
{
	const PER_PAGR = 6;
	public function index()
  {
  	//接收分页的页数page
    if(isset($_GET['page'])){
      $page = $_GET['page'];
    }else{
      $page = 1;
    }
     //获取总条数
    $num = $this->pdo
      ->query('select count(*) as total from news_category')
      ->fetch()['total'];
      //总页数
    $page_total = ceil($num/$this::PER_PAGR);

  	 $category = $this->pdo
      ->query('select * from news_category limit '.$this::PER_PAGR.' offset '.($page-1)*$this::PER_PAGR)
      ->fetchAll();
  	include '../views/admin/category.html';
  }
  //删除
  public function delete()
  {
      sleep(2);
      $count = $this->pdo->exec("delete from news_category where id=".$_GET['id']);
      echo $count;
  }
  public function insert()
    {
        sleep(2);
        $stmt = $this->pdo->prepare("insert into news_category(name,is_default)values(?,?)");
        $stmt->bindValue(1,'');
        $stmt->bindValue(2,'');
        echo $stmt->execute();
    }
  public function update()
    {
        sleep(2);
        //改什么？  k :title/dsc/conent
        //改哪一个？ id
        //改成什么 ？
        $stmt = $this->pdo->prepare('update news_category set '.$_GET['k'].' = ? where id = ?');
        $stmt->bindValue(1, $_GET['v']);
        $stmt->bindValue(2, $_GET['id']);
        echo $stmt->execute();
    }

}
