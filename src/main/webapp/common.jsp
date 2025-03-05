<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Common JSP file</title>
    
    <!-- Link bootstrap style sheet -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    
    <!-- Link style sheet -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.css">
</head>
<body>
    <div class="container">
        <h1 class="mt-5">Hello, Bootstrap!</h1>
        <button class="btn btn-primary">Click me</button>
    </div>

	<h1> It is heading 1</h1>
	<h2> It is heading 1</h2>
	<h3> It is heading 1</h3>
	
	<p> This is a paragraph </p>

	<!-- Link bootstrap script file -->
    <script src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js" defer></script>
</body>
</html>