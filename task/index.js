//爬百度的图片开始
// const request = require('request');
// const cheerio = require('cheerio');
// request.get(
//     'http://www.baidu.com',
//     (err,res,body)=>{
//         let $ =cheerio.load(body);
//         $('img').each((k,v)=>{
//             let src = $(v).attr('src');
//             if(!src.startsWith('http:')){
//                 src = 'http:'+src;
//             }
//             console.log(src)
//         })
//
//
//     }
// )
//爬百度的图片结束

//站酷爬图片开始
//     const request = require('request');
//     const cheerio = require('cheerio');
//     const fs = require('fs');
//     request({
//         url:'https://www.zcool.com.cn/'
//     }, (err,res,body)=>{
//         let $ = cheerio.load(body);
//         $('.card-img img').each((k,v)=>{
//             let t = $(v).attr('srcset');
//             if(t){
//                 let src = t.split(' ')[0]
//                 console.log(src)
//                 request(src).pipe(fs.createWriteStream('./zk-'+k+'.jpg'))
//             }
//         })
//     })
//站酷爬图片结束

//bing的壁纸开始
// const request = require('request');
// const cheerio = require('cheerio');
// const wallpaper = require('wallpaper');
// const fs = require('fs');
// request.get(
//     'https://cn.bing.com/',
//     (err,res,body)=>{
//         let $ =cheerio.load(body);
//         $('img').each((k,v)=>{
//             let t = $(v).attr('src');
//             if(t && t.endsWith('.jpg')){
//                 let src = 'https://cn.bing.com'+ t;
//                 console.log(src);
//                 let ws = fs.createWriteStream('./bing-'+k+'.jpg');
//                 request(src).pipe(ws);
//                 ws.on('finish',()=>{
//                     wallpaper.set('./bing-'+k+'.jpg').then(()=>{
//                         console.log('done')
//                     })
//                 })
//             }
//         })
//     }
// )
//bing的壁纸结束

//中关村在线新闻列表开始
const request = require('request');  //请求并得到回应
const cheerio = require('cheerio');  //把HTML转译为Jquery方式
const wallpaper = require('wallpaper'); //设置壁纸
const iconv = require('iconv-lite'); //将中文乱码转译
const fs = require('fs'); //创建文件
const async = require('async');
const mysql = require('mysql');
const filter = require('bloom-filter-x');//初始化布隆过滤器
const connection = mysql.createConnection({
    host     : 'localhost',
    user     : 'root',
    password : '',
    database : 'wui1805'
});
//初始话布隆器
let newUrl = [];
let urls = [];
let select_sql = 'select url from news_one';
connection.query(select_sql, (err,result,fields) =>{
    if(err) throw err;
    result.forEach((v)=>{
        let url = v.url;
        if(filter.add(url)){
            urls.push(url);
        }
    })
});
function fetch_news(){
    request({
        url:'http://news.zol.com.cn/',
        encoding: null  //默认编码方式
    },(err,res,body)=>{
        body = iconv.decode(body,'gb2312');
        let $ = cheerio.load(body);
         $('.content-list li').each((k,v)=>{
            let t = $(v).find('.info-head a'); 
            let title = t.text();
            let dsc = $(v).find('p').contents().eq(0).text(); 
            let image = $(v).find('img').first().attr('.src');
            let url = t.attr('href');  
            if(filter.add(url)){
                urls.push(url);
                newUrl.push({
                    'title':title,
                    'dsc':dsc,
                    'image':image,
                    'url':url
                })
            }                                                      
         });
        if(!urls.length){
            let d = new Date();
            console.log(d.toUTCString()+'抓取一次，本次未更新')
        }else{
            let d = new Date();
            console.log(d.toUTCString()+'抓取了一次，本次更新'+urls.length+'条');
            async.eachLimit(newUrl,1,function(v,next){
                request({
                    url:v.url,
                    encoding:null
                },(err,res,body)=>{
                    if(err){
                        console.log(err.message)
                    }else{
                        body = iconv.decode(body,'gb2312');
                        let $ = cheerio.load(body);
                        let pubtime = $('#pubtime_baidu').attr('content'); 
                        let content = $('#article-content').html();
                        let title =v.title;
                        let cid = 1;
                        let dsc = v.dsc;    
                        let image = v.image;  
                        let url = v.url;  
                        let insert_sql = 'insert into news_one(title,cid,dsc,image,url,create_time,content) value (?,?,?,?,?,?,?)'; 
                        connection.query(insert_sql,[title,cid,dsc,image,url,pubtime,content],function(err,results,fields){
                                if(err) throw err;
                                console.log('finish')   
                        });      
                    }
                });
                next(null);
            })
        }
    })
}
fetch_news();
setInterval(fetch_news,200000)


// 中关村在线新闻列表结束


//数据库的增删改查开始
// const request = require('request');  //请求并得到回应
// const cheerio = require('cheerio');  //把HTML转译为Jquery方式
// const wallpaper = require('wallpaper'); //设置壁纸
// const iconv = require('iconv-lite'); //将中文乱码转译
// const fs = require('fs'); //创建文件
// const async = require('async');
// const mysql = require('mysql');
// const connection = mysql.createConnection({
//     host     : 'localhost',
//     user     : 'root',
//     password : '',
//     database : 'wui1805'
// });
//查找
// let select_sql = 'select * from news where id = ?';
// connection.query(select_sql,[34], function (err, results, fields) {
//     if (err) throw err;
//     console.log(results);
// });
// //增加
// let insert_sql = 'insert into news(title,dsc,content)value (?,?,?)';
// connection.query(insert_sql,['','',''],function(err,results,fields){
//     if(err) throw err;
//     console.log(results.insertId);
// });
// //改变
// let updata_sql = 'update news set dsc = ? where id =?';
// connection.query(updata_sql,['asda傻空的时刻',36],function(err,results,fields){
//     if(err) throw err;
//     console.log(results.affectedRows);
// });
// //删除
// let delete_sql = 'delete from news where id =?';
// connection.query(delete_sql,[39],function(err,results,fields){
//     if(err) throw err;
//     console.log(results.affectedRows);
// });
//数据库的增删改查结束
