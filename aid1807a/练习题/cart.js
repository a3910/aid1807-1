$(function (){
		countItem();
		//1��ȫѡ��ȡ��ȫѡ
		var isTrue = false;
		$("#checkall").click(function(){
			isTrue =!isTrue;
			if(isTrue){
				//ѡ�в��� checked = "True"
				//��ȡ������Ʒǰ��ѡ���,����ѡ������
				//prop()������attr(),ΪԪ����������
				$("[name=check]").prop("checked",true);
			}else{
			$("[name=check]").removeAttr("checked");
		}
		//2ͨ��������Ʒѡ���ѡ����ȫѡ��ť
		$("[name=check]").click(function(){
			//:checked��ʾƥ�䱻ѡ�е�Ԫ��
			//��ȡ����δ��ѡ�е�Ԫ�ظ������ж��Ƿ�С�ڵ���0
			if($("input[name=check]").not("input:checked").size() <= 0){
				//ȫѡ��ťҲ�����ѡ��״̬
				$('#checkall').prop("checked",true);
				isTrue = true;
			}else{
					//����δ��ѡ��Ԫ��
					$("#checkall").prop("checked",false);
					isTrue = false;
					// $("#checkall").removeAttr("checked");
			}
	});


		//3��������
		$(".increment").click(function(){
			//���+�����������
			var value = $(this).prev().val();
			//��ֵ���������¸����������ʾ
			$(this).prev().val(++value);
			//�۸�����
			var priceStr = $(this).parent().prev().text();//����
			//��ȡ�ַ�������ȡ�۸�
		var price = Number(priceStr.substring(1,priceStr.length));
		//��ȡС��
		$(this).parent().next().html("<strong>&yen;"+value*price+"</strong>");
		
		countItem();
	});
