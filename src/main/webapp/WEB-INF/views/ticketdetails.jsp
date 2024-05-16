<!DOCTYPE html>
<html>
<head>
    <title>Next Page</title>
</head>
<body>

<h1>Form Data Received</h1>

<%
   java.util.Enumeration<String> parameterNames = request.getParameterNames();
   while (parameterNames.hasMoreElements()) {
       String paramName = parameterNames.nextElement();
       String paramValue = request.getParameter(paramName);
%>
<p><%= paramName %>: <%= paramValue %></p>
<%
   }
%>

</body>
</html>
