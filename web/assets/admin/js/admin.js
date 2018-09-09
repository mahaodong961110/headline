$(function(){
	 //创建等待过程。
    let spinner = $('#spinner');
    $(document).ajaxStart(function(){
        spinner.show()
    })
    $(document).ajaxComplete(function(){
        spinner.hide()
    })
    //新闻页
    //删除
    $('#tbody').on('click','.remove',function(){
        var id = $(this).closest('tr').attr('data-id');
        $.ajax({
            url:'/admin.php',
            data:{
                m:'delete',
                c:'news',
                id:id
            },
            success:function(data){
                if(data=='1'){
                    location.reload();
                }else{
                    alert('网络有问题')
                }

            }
        });
    });  
     //新建
    let add = $('#add');//获取新建按钮。
    add.on('click',function(){   //添加点击事件
        $.ajax({
            url:'/admin.php',
            data: {
                c: 'news',
                m: 'insert'
            },
            success:function(data){
                    if(data=='1'){
                        location.reload();
                    }else{
                        alert('网络有问题')
                    }
                }
        })
    });
        //失去焦点后提交内容成功
    $('#tbody').on('blur','.form-control',function(){
        let id = $(this).closest('tr').attr('data-id')
        let k = $(this).attr('data-type');
        let v = $(this).val();
        $.ajax({
            url:'/admin.php',
            data:{
                m:'update',
                c:'news',
                id:id,
                k:k,
                v:v
            },
            success:function(data){
                if(data=='1'){
                    location.reload();
                }else{
                    alert('网络有问题')
                }
            }
        })
    })   
})