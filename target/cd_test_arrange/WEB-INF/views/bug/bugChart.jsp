<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>bugChart</title>
<script>

</script>


</head>
<body>

<img src ="assets/img/white.png" style="z-index:10;position:absolute;top:60px;"></img>
<div style="top:0px;position: relative;">
<iframe name="bugChart"  id="bugChart" src="http://192.168.1.235:8090/index.php/report/index?product_id=20&type=bug&selected%5B%5D=1&yt1=%E7%A1%AE%E5%AE%9A"  width="100%" height="800px" scrolling="" frameborder="0"></iframe>
</div>
</body>
</html>