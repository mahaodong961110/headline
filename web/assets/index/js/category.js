$(function(){
	let top = $('#top');
	let bottom = $('#bottom');
	top.on('click','li',function(){
		if($(this).index()!==0){
			$(this).appendTo('#bottom')
		}
	});
	bottom.on('click','li',function(){
		$(this).appendTo('#top')
	})
})