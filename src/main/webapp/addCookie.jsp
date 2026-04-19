<%@ page language="java" %>
<%
String name = request.getParameter("name");
String domain = request.getParameter("domain");
int maxAge = Integer.parseInt(request.getParameter("maxAge"));


// Create Cookie
Cookie cookie = new Cookie(name, "SampleValue");

// Set properties
cookie.setDomain(domain);
cookie.setMaxAge(maxAge);

// Add cookie to response
response.addCookie(cookie);


%>

<html>
<head>
    <title>Cookie Added</title>
</head>
<body>

<h2>Cookie Created Successfully!</h2>

<p><b>Name:</b> <%= name %></p>
<p><b>Domain:</b> <%= domain %></p>
<p><b>Max Age:</b> <%= maxAge %> seconds</p>

<br>
<a href="viewCookies.jsp">Go to Active Cookie List</a>

</body>
</html>
