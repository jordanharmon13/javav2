<jsp:include page="header.jsp" />


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

        <h1>Hello World!</h1>
        <img src=" <c:out value="${fullContent['url']}"/> "> ><br>  
        <c:out value="${fullContent['text']}"  /> <br>
        <c:out value="${fullContent['count']}"   /> <br>
        <c:out value="${fullContent['tags']}"   /> <br>

<jsp:include page="footer.jsp" />