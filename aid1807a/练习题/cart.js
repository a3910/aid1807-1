$(function (){
		countItem();
		//1，全选和取消全选
		var isTrue = false;
		$("#checkall").click(function(){
			isTrue =!isTrue;
			if(isTrue){
				//选中操作 checked = "True"
				//获取所有商品前的选择框,设置选中属性
				//prop()类似于attr(),为元素设置属性
				$("[name=check]").prop("checked",true);
			}else{
			$("[name=check]").removeAttr("checked");
		}
		//2通过所有商品选择框反选操作全选按钮
		$("[name=check]").click(function(){
			//:checked表示匹配被选中的元素
			//获取所有未被选中的元素个数，判断是否小于等于0
			if($("input[name=check]").not("input:checked").size() <= 0){
				//全选按钮也因该是选中状态
				$('#checkall').prop("checked",true);
				isTrue = true;
			}else{
					//存在未被选中元素
					$("#checkall").prop("checked",false);
					isTrue = false;
					// $("#checkall").removeAttr("checked");
			}
	});


		//3数量操作
		$(".increment").click(function(){
			//点击+，操作输入框
			var value = $(this).prev().val();
			//数值自增后重新付给输入框显示
			$(this).prev().val(++value);
			//价格联动
			var priceStr = $(this).parent().prev().text();//单价
			//截取字符串，获取价格
		var price = Number(priceStr.substring(1,priceStr.length));
		//获取小计
		$(this).parent().next().html("<strong>&yen;"+value*price+"</strong>");
		
		countItem();
	});
