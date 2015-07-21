$(function() {
	
	var data;
	var dataType="";
	var dataBrand="";
	$(".choose_list select").live('change',function(){
		 //获取是第哪个下拉框发生变化 通过获取父亲，div的下标获取
		  var changeIndex = $(this).parent().index();
		  if(changeIndex=0){
			  dataType = "&carType="+$(this).val();
		  }
		  if(changeIndex=1){
			  dataBrand = "&brandId="+$(this).val();
		  }
		  data = dataType+dataBrand;
		  seach();
	});
	
	function seach() {
		$
				.ajax({
					type : "post",
					url : "car-list-xian-ajax.action",
					data : data,
					success : function(msg) {
						$(".mod_houses").remove();
						$
								.each(
										msg.listVo,
										function(i, n) {
											$(".sz_sale")
													.after(
															'<div class="mod_houses"> <h2><span class="title">'+n.title+'<em></em> </span></h2>'
															+' <div class="houses"><div class="houses_img"><a href="car-show.action?id='+n.id+'" target="_blank">'
															+'<img src="./'+n.imagePath+'" height="310" width="570"> </a> <b class="pi"></b> </div><div class="houses_info">'
															+'<span class="houses_price"> <em>原价 &nbsp;'+n.originalPrice+' 万元</em> 百顺兴优惠价 </span>'
															+'<span class="sale_info">特价：'+n.price+' 万元</span><span class="houses_where"><p> 车况：'+n.condition+'<br>'
															+'产地：'+n.travel+'</p><button tabindex="5" class="J_Submit" type="submit" onclick="butCli('+ n.id + ')">'
															+'了解详情</button></span><span class="tui"> <p> <em> 1254 </em> 人收藏 </p>' 
															+'<button tabindex="5" class="J_Submit" type="submit" onclick="butCli('+ n.id + ')">推荐购房</button></span>'
															+'<span class="tui"> <p> <em> 308 </em> 人已预约 </p> <button tabindex="5" class="J_Submit" type="submit" '
															+'onclick="butCli('+ n.id + ')"> 我要购房 </button></span><span class="houses_time">活动结束剩 '
															+'<span id="leftTime'+ n.id + '"></span> </span><input name="ttime" id="left_'+ n.id +'" value="'+n.xianMil+'" type="hidden">'
															+'<input name="house_id" class="timeSet" id="houseid_'+ n.id + '" value="'+ n.id + '" type="hidden"> </div> </div> </div>');
										});
						doit();

					}
				});

	}
	 var currentPage;
	$(".rate-paginator a").live('click',function(){
		 var viewPage="";  

		 var apgeIndex=$(this).index();
		 if(apgeIndex==0){
			 if(currentPage==null){
				 currentPage=1;
				
			 }else{
			  currentPage = currentPage-1; 
			  if(currentPage<1){
				  currentPage=1;  
			  }
			 }
			
		 }else if(apgeIndex>4){ 
			 if(currentPage==null){
				 currentPage=1;
			 }else{
			 currentPage = parseInt(currentPage)+1;}
		 }else{
		currentPage=$(this).html();
		}
		 
		 viewPage="&currentPage="+currentPage;

		 $(this).removeAttr("href");
		 data = data+viewPage; 
		
		 if(currentPage>=5){ 
			 $(".rate-paginator").empty();
			 $(".rate-paginator").append('<a href="javascript:void(0);"><img src="./imagesweb/last.png"></a>');
			 for(i=1;i<5;i++){ 
				var j=4; 
				var page = currentPage-j+i; 
				 $(".rate-paginator").append('<a href="javascript:void(0);">'+page+'</a>');
			 }
			 $(".rate-paginator").append('<a href="javascript:void(0);"><img src="./imagesweb/next.png"></a>'
					   +'<font>去第</font><input name="goHead" id="goHead" type="text"><font>页</font>'
					   + '<a href="javascript:void(0);" id="goDirect">GO</a>');
			 
		 }
		 $(".rate-paginator a").removeClass(); 
		 if(currentPage<4){
			 $(".rate-paginator a").eq(currentPage).attr("class","cur");
		 }else{
			 $(".rate-paginator a").eq(4).attr("class","cur");
		 }
	
		 seach();
		 data = dataType+dataBrand;
	});
});

function butCli(id) {
	window.location.href = 'car-show.action?id=' + id;
}