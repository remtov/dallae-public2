
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>Insert title here</title>
<link rel="stylesheet" href="${skyPath}/dhtmlx.css"/>
</head>
<script>
var data =[{linum:1,lilevel:'3',liname:'test',lidesc:'testdata'}];
var dxGrid;
function doInit(){
	dxGrid = new dhtmlXGridObject('dxGrid');
	dxGrid.setImagePath('${skyPath}/imgs');
	dxGrid.setHeader('번호,레벨,이름,설명');
	dxGrid.setColumnIds('linum,lilevel,liname,lidesc');
	dxGrid.setColTypes('ro,ed,ed,ed');
	dxGrid.init();
/* 	var xhr = new XMLHttpRequest();
	xhr.open('GET','/levelinfos',true);
	xhr.onreadystatechange=function(){
		if(xhr.readyState==xhr.DONE){
			if(xhr.status==200){
			
					var data = JSON.parse(xhr.responseText);
					dxGrid.parse(data,'js');
				 
			}
		}
	}
	xhr.send(); */
	alert(2);
	 dhx.ajax.get('/levelinfos',function(res){
		res = JSON.parse(res.xmlDoc.responseText);
		dxGrid.parse(res,'js');
	})                                    //1부터시작 0부터시작
	//dxGrid.parse(data,'js');                row아이디column아이디,new value ,oldvalue
	dxGrid.attachEvent('onEditCell',function(stage,rId,cInd,nValue,oValue){
		if(nValue!=oValue){
			var rData = dxGrid.getRowData(rId);
			rData = JSON.stringify(rData);
			dhx.ajax.put('/levelinfos',rData,function(res){
			res = JSON.parse(res);
			alert(res);
			})
		}
		
		/* if(stage==2){
		console.log(rId);
		console.log(cInd);
		console.log(nValue);
		console.log(oValue);
		return true;
		} */
	})
}
window.addEventListener('load',doInit);

</script>
<body>
<div id="dxGrid" style="width:400px;height:300px;"></div>
</body>
</html>