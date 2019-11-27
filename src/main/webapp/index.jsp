<%@ page import="javax.naming.InitialContext" %>
<%@ page import="javax.naming.NamingException" %>
<%@ page import="java.util.List" %>
<%@ page import="EjbTest.IMyEJB" %><%--
  Created by IntelliJ IDEA.
  User: User
  Date: 23.11.2019
  Time: 19:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    InitialContext context = new InitialContext();
    IMyEJB ejb = null;
    try {
        ejb = (IMyEJB) context.lookup("java:app/alexey.sinicin/MyEjb!EjbTest.IMyEJB");
    } catch (NamingException e) {
        e.printStackTrace();
    }
    List<String> list = ejb.readFileDirectory();
    for (String path : list) {
        out.print(path);
%><br>
<%
    }
    ;
%>
</body>
</html>