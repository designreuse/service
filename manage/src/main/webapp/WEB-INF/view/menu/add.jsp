<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
    
    <%
    
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>Insert title here</title>
</head>
<body>
	<form action="">
		�˵�����:<input id="menuName" type="text" value="" />
		����:<input id="ordreNo" type="text" value="" />
                        �˵����ڵ�<input id="parentId" type="text" value="" />
                      �˵���ַ<input id="linkUrl" type="text" value="" />
		
	<input type="button" onclick="add()" value="�����ύ">
	<input type="button" onclick="update()" value="�޸��ύ">
	
	<input type="button" onclick="query()" value="��ѯ">
	</form>
	<script type="text/javascript">
	
	function add(){

	
		var menuName=$("#menuName").val();
		if(menuName==null||menuName==""){
			alert("��ɫ����Ϊ�գ�");
			return ;  
		}
		var parentId=$("#parentId").val();
		if(parentId==null||parentId==""){
			alert("���ڵ㲻��Ϊ�գ�");
			return ;  
		}
		var linkUrl=$("#linkUrl").val();
		if(linkUrl==null||linkUrl==""){
			alert("��ַ����Ϊ�գ�");
			return ;  
		}
		var ordreNo=$("#ordreNo").val();
		if(ordreNo==null||ordreNo==""){
			alert("������Ϊ�գ�");
			return ;  
		}
	     
	}
	
	
	function query(){
		
		 $.ajax({
	            type: "POST",
	            dataType: "json",
	            url: '<%=basePath%>menu/queryMenu',
	            data:'',
	            success: function (result) {
	                //���������˽��
	                alert(result.code);
	                alert(result.msg);
	                var last=JSON.stringify(result.msg); 
	                alert(last);
	                
	            }
	        });
		
	}
	
	function update(){
		var menuName=$("#menuName").val();
		if(menuName==null||menuName==""){
			alert("��ɫ����Ϊ�գ�");
			return ;  
		}
		var parentId=$("#parentId").val();
		if(parentId==null||parentId==""){
			alert("���ڵ㲻��Ϊ�գ�");
			return ;  
		}
		var linkUrl=$("#linkUrl").val();
		if(linkUrl==null||linkUrl==""){
			alert("��ַ����Ϊ�գ�");
			return ;  
		}
		var ordreNo=$("#ordreNo").val();
		if(ordreNo==null||ordreNo==""){
			alert("������Ϊ�գ�");
			return ;  
		}
	    $.ajax({
            type: "POST",
            dataType: "json",
            url: '<%=basePath%>menu/updateMenu',
            data:'menuId=1&menuName='+menuName+'&parentId='+parentId+'&linkUrl='+linkUrl+'&ordreNo='+ordreNo,
            success: function (result) {
                //���������˽��
                alert(111111111);
                alert(result.code);
                alert(result.msg);
            }
        });
	}
	</script>
</body>
</html>