<jsp:include page="header.jsp" />

<%@page import="java.util.Set"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

        <h1>Hello World!</h1>
        <c:forEach items="${map}" var="items">
            <a href="Content?photo=${items['created_time']}"><img src="${items['url']}" ></a><br>
        </c:forEach> 
<jsp:include page="footer.jsp" />