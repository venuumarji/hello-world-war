<html>
<head>
<title>Hello World!</title>
</head>
<body>
	<body style="background-color:powderblue;">
	<h1>Hello World!</h1>
	<h2>venu</h2>
	<p>
		It is now
		<%= new java.util.Date() %></p>
	<p>
		You are coming from 
		<%= request.getRemoteAddr()  %></p>
</body>
