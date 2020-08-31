<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        request.setAttribute("key", null);

        ArrayList<Integer> arrayList = new ArrayList<>();
        arrayList.add(100);
        request.setAttribute("value", arrayList);
    %>
    <c:if test="${empty requestScope.key}">
        ${requestScope.key}
        当用EL表达式取域中的属性时，当属性值为null时，在页面不显示。
    </c:if>

    <br>
    <c:if test="${not empty requestScope.value}">
        ${requestScope.value[0]}
    </c:if>
</body>
</html>
