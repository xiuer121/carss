$(function() {

	var url = "";
	var urlBrand = "";
	var urlType = "";
	var urlPri = "";
	var priceNum = 0;
	var typeNum = 0;
	var brandNum = 0;
	$(".filter_term_list a")
			.live(
					"click",
					function() {
						var items = $(this).parents(".filter_list").index();
						var aIndex = $(this).index();
						// 获取div下标，如果是1是价格，2是类型，3是品牌
						if (items == 1) {
							urlPri = "";
							// 如果是第一次点击那么添加一个div，如果是第二次那么就修改div的内容
							if (aIndex != 0) {
								if (priceNum == 0) {
									$(".f_ok")
											.after(
													'<div class="f_result" id="priceDiv">价格：'
															+ $(this).html()
															+ '<a href="javascript:void(0);"><img width="14" height="14" src="./imagesweb/close.gif"></a></div>');
									// 次数加1.方便判断是第几次点击
									priceNum++;
								} else {
									var aImg = $("#priceDiv > a");
									$("#priceDiv").text("");
									$("#priceDiv").append(
											'价格：' + $(this).html());
									$("#priceDiv").append(aImg);

								}
								urlPri = urlPri + "&price="
										+ $(this).attr("title");

							} else {
								$("#priceDiv").remove();
								priceNum = 0;
							}

						}
						if (items == 2) {
							urlType = "";
							if (aIndex != 0) {
								if (typeNum == 0) {
									$(".f_ok")
											.after(
													'<div class="f_result" id="typeDiv">类型：'
															+ $(this).html()
															+ '<a href="javascript:void(0);"><img width="14" height="14" src="./imagesweb/close.gif"></a></div>');
									typeNum++;
								} else {

									var aImg = $("#typeDiv > a");
									$("#typeDiv").text("");
									$("#typeDiv")
											.append('类型：' + $(this).html());
									$("#typeDiv").append(aImg);
								}

								urlType = urlType + "&carType="
										+ $(this).attr("title");
							} else {
								$("#typeDiv").remove();
								typeNum = 0;
							}
						}
						if (items == 3) {
							urlBrand = "";
							if (aIndex != 0) {
								if (brandNum == 0) {
									$(".f_ok")
											.after(
													'<div class="f_result" id="brandDiv">品牌：'
															+ $(this).html()
															+ '<a href="javascript:void(0);"><img width="14" height="14" src="./imagesweb/close.gif"></a></div>');
									brandNum++;
								} else {
									var aImg = $("#brandDiv > a");
									$("#brandDiv").text("");
									$("#brandDiv").append(
											'品牌：' + $(this).html());
									$("#brandDiv").append(aImg);
								}
								urlBrand = urlBrand + "&brandId="
										+ $(this).attr("title");
							} else {
								$("#brandDiv").remove();
								brandNum = 0;
							}
						}
						// 拼装参数数据
						url = urlPri + urlType + urlBrand;
						// 异步更新数据
						seach();

					});
	$(".now_filter div a ").live('click', function() {
		// 获取当前点击的div的id属性值
		var divId = $(this).parent().attr('id');
		// 对应的div被点击，清楚参数数据，重置点击次数为0
		if (divId == 'priceDiv') {
			urlPri = "";
			$(this).parent().remove();
			priceNum = 0;
		}
		if (divId == 'typeDiv') {
			urlType = "";
			$(this).parent().remove();
			typeNum = 0;
		}
		if (divId == 'brandDiv') {
			urlBrand = "";
			$(this).parent().remove();
			brandNum = 0;
		}
		url = urlPri + urlType + urlBrand;
		 
		seach(url);
	});

	function seach() {
		$
				.ajax({
					type : "post",
					url : "car-list-ajax.action",
					data : url,
					success : function(msg) {
						$(".f_list ul").empty();
						$
								.each(
										msg.listVo,
										function(i, n) {
											$(".f_list ul")
													.append(
															'<li><a href="car-show.action?id='
																	+ n.id
																	+ '" target="_blank">'
																	+ '<img src="./'
																	+ n.imagePath
																	+ '" height="120" width="180" /></a> '
																	+ '<span class="f_name"><a href="car-show.action?id='
																	+ n.id
																	+ '" target="_blank">'
																	+ n.title
																	+ '</a> </span><span class="f_sale">原价：'
																	+ n.originalPrice
																	+ '万</span><span class="f_price"><em>特价：'
																	+ n.price
																	+ '万</em> '
																	+ ' <button type="submit" title="了解更多" onclick="butCli('
																	+ n.id
																	+ ')" class="button_tao"> '
																	+ '	了解更多</button> </span></li>');
										});

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
		 url = url+viewPage; 
		
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
		 console.log(currentPage);
		 if(currentPage<4){
			 $(".rate-paginator a").eq(currentPage).attr("class","cur");
		 }else{
			 $(".rate-paginator a").eq(4).attr("class","cur");
		 }
	
		 seach();
		 url = urlPri + urlType + urlBrand;
	});
});

function butCli(id) {
	window.location.href = 'car-show.action?id=' + id;
}