<?php
include "../core/db.php";

class page extends db
{
  const PER_PAGE = 10;
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
    $page_total = ceil($num/$this::PER_PAGE);
    //新闻
    $course = $this->pdo
      ->query('select * from news_one where cid=' . $cid .' limit '.$this::PER_PAGE.' offset '.($page-1)*$this::PER_PAGE)
      ->fetchAll();
    include '../views/index/index.html';
  }
//分两种查询分类页，一种is_default="1"，一种is_default="0".
  public function category()
  {
    $top = $this->pdo
      ->query('select *from news_category where is_default="1"')
      ->fetchAll();
    $bottom = $this->pdo
      ->query('select *from news_category where is_default="0"')
      ->fetchAll();
    include '../views/index/category.html';
  }

  public function search()
  {
    // 页面资源
    // 获取到用户写的字符串
    $result=[];
    $total_number= 
    $keyword = "";
    if(isset($_GET['keyword'])){
      $keyword = $_GET['keyword'];
      $total_number = $this->pdo
          ->query('select count(*) as total_number from news_one where title like "%'.$keyword.'%"')
          ->fetch()['total_number'];
      $result = $this->pdo
        ->query('select * from news_one where title like "%'.$keyword.'%" limit '.$this::PER_PAGE.' offset 0 ')
        ->fetchAll();
    }
    include '../views/index/search.html';
  }
    public function searchListNews(){
    //数据资源
    if(isset($_GET['page']) && isset($_GET['keyword'])){
       $page = $_GET['page']; 
       $keyword = $_GET['keyword'];
        $r = $this->pdo
      ->query('select * from news_one where title like "%'.$keyword.'%" limit '.$this::PER_PAGE.' offset '.($page-1)*$this::PER_PAGE)
      ->fetchAll();
      echo json_encode($r);
       //转化为数组。
     }else{
      echo json_encode('参数错误');
     }


   
  }
}
