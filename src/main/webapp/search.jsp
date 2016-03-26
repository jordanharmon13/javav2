<%-- 
    Document   : search
    Created on : Mar 26, 2016, 3:14:57 PM
    Author     : jorda
--%>
<%@page import="jdk.nashorn.internal.objects.NativeRegExp.test(Object, Object)"%>
<%@page import="org.jinstagram.auth.oauth.InstagramService"%>
<%@page import="instagram.Constants"%>
<%@page import="org.jinstagram.auth.model.Verifier"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="org.jinstagram.auth.model.Token"%>
<%@page import="org.jinstagram.Instagram"%>
<%@page import="org.jinstagram.entity.users.feed.MediaFeedData"%>
<%@page import="java.util.List"%>
<%@page import="org.jinstagram.entity.users.feed.MediaFeed"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    Object objInstagram = session.getAttribute(Constants.INSTAGRAM_OBJECT);

    Instagram instagram = null;

    if (objInstagram != null) {
        instagram = (Instagram) objInstagram;
    } else {
        response.sendRedirect(request.getContextPath() + "/index.jsp");
        return;
    }
    /*double latitude = 48.858844;
    double longitude = 2.294351;

    MediaFeed feed = instagram.searchMedia(latitude, longitude); 
    List<MediaFeedData> feeds = feed.getData();*/
    

// Please see the MediaFeedData element for more usage. %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search</title>
    </head>
    <body>
        <h1>Search Instagram</h1>
        <form id="search" method="GET">
            <input type="text" placeholder="Search..." name="search">
            <input type="submit" for="search">
        </form>
        <!--<ul>   
            <c:forEach var="result" items="${mediaFeeds}">
                <li><a href="#">${result}</a></li>
                </c:forEach>
        </ul>-->
         <%
            //List<MediaFeedData> mediaList = instagram.getUserFeeds();//.getData();
            //out.println(test);
            out.println("<img src='" + instagram.getCurrentUserInfo().getData().getProfilePicture() + "'>" );//.getId() );
            out.println(instagram.getRecentMediaTags("jordanharmon13") );
        %>
        
    </body>
</html>
