<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Welcome here</title>
<script type="text/javascript">
		function changeLocation(){
			window.location.replace("${pageContext.request.contextPath}/index");
		}
</script>
</head>
<body>
<script>
changeLocation();
</script>
</body>
</html>