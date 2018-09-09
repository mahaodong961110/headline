<?php
include '../core/db.php';

class news extends db
{
  const PER_PAGR = 6;
  public function index()
  {
    //接受分类的id
    if( isset($_GET['cid'])){
      $cid = $_GET['cid'];
    }else{
      $cid=1;
    }
    
    //接收分页的页数page
    if(isset($_GET['page'])){
      $page = $_GET['page'];
    }else{
      $page = 1;
    }
    //分类
    $array = $this->pdo
      ->query('select * from news_category where is_default="1"')
      ->fetchAll();
      //获取某一个cid的总条数
    $num = $this->pdo
      ->query('select count(*) as total from news_one where cid =' .$cid)
      ->fetch()['total'];
      //总页数
    $page_total = ceil($num/$this::PER_PAGR);
    //新闻
    $course = $this->pdo
      ->query('select * from news_one where cid=' . $cid .' limit '.$this::PER_PAGR.' offset '.($page-1)*$this::PER_PAGR)
      ->fetchAll();
    include '../views/admin/news.html';
  }

  //删除
  public function delete()
  {
      sleep(2);
      $count = $this->pdo->exec("delete from news_one where id=".$_GET['id']);
      echo $count;
  }
  public function insert()
    {
        sleep(2);
        $stmt = $this->pdo->prepare("insert into news_one(cid,title,dsc,image,url,create_time,content)values(?,?,?,?,?,?,?)");
        $stmt->bindValue(1,'1');
        $stmt->bindValue(2,'');
        $stmt->bindValue(3,'');
        $stmt->bindValue(4,'');
        $stmt->bindValue(5,'');
        $stmt->bindValue(6,'');
        $stmt->bindValue(7,'');
        echo $stmt->execute();
    }
  public function update()
    {
        sleep(2);
        //改什么？  k :title/dsc/conent
        //改哪一个？ id
        //改成什么 ？
        $stmt = $this->pdo->prepare('update news_one set '.$_GET['k'].' = ? where id = ?');
        $stmt->bindValue(1, $_GET['v']);
        $stmt->bindValue(2, $_GET['id']);
        echo $stmt->execute();
    }

}

