<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<script type="text/javascript">
function ajaxTest() {
	var xmlhttp;
	if (window.XMLHttpRequest) {
		xmlhttp = new XMLHttpRequest();
	} else {
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function () {
		console.log(xmlhttp.readyState);
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			console.log(xmlhttp.responseText);
			document.getElementById("testDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "/ajax/ajaxTest.html?name=rone&sex=man", true);
	xmlhttp.send();
	//xmlhttp.open("POST","/ajax/ajaxTest.html",true);
	//xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
	//xmlhttp.send("name=rone&sex=man");
}
</script>
</head>
<body>
<div id="testDiv">default</div>
<hr/>
<a href="javascript:void(0);" onclick="ajaxTest()" id="">Ajax Test</a>
<hr/>
<hr/>
<hr/>
<hr/>
<hr/>
</body>
</html>