<%@page import="java.util.Set"%>
<%@page import="instagram.InstaLoader"%>
<%@page import="instagram.GeoLocator"%>
<%@page import="com.fasterxml.jackson.databind.JsonNode"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.fasterxml.jackson.core.JsonFactory"%>
<%@page import="org.json.JSONArray"%>
<%@page import="instagram.JsonCoder"%>
<%@page import="org.json.JSONObject"%>
<%@page import="org.jinstagram.entity.users.feed.UserFeed"%>
<%@page import="org.jinstagram.entity.users.feed.UserFeedData"%>
<%@page import="org.jinstagram.entity.common.Location"%>
<%@page import="org.jinstagram.entity.locations.LocationInfo"%>
<%@ page import="instagram.Constants" %>

<%@ page import="org.jinstagram.Instagram" %>
<%@ page import="org.jinstagram.entity.users.feed.MediaFeedData" %>
<%@ page import="java.util.List" %>


<%
    Object objInstagram = session.getAttribute(Constants.INSTAGRAM_OBJECT);
    Instagram instagram = null;
    String test = null;
    if (objInstagram != null) {
        instagram = (Instagram) objInstagram;
    } else {
        response.sendRedirect(request.getContextPath() + "/index.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<!-- Navigation -->
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">jInstagram</a>
        </div>
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li><a href="profile.jsp">Profile</a></li>
                <li class="active"><a href="gallery.jsp">Gallery</a></li>
                <li><a href="popular.jsp">Popular</a></li>
                <li><a href="search.jsp">Search</a></li>
                <li><a href="logout.jsp">Logout</a></li>

            </ul>
        </div>
    </div>
    <!-- /.container -->
</nav>
<div id="instafeed"></div>

        <%
            GeoLocator testGeo = new GeoLocator("678 w 1280 s provo, ut 84601 ");
            out.println("test url " + testGeo.testUrl("678 w 1280 s provo, ut 84601 "));
            //out.println( instagram.searchUser("jordanharmon13") );
            //out.println( instagram.searchUser("jordanharmon13").getUserList() );
            //UserFeed feed = instagram.searchUser("jordanharmon13");
            //List<UserFeedData> testt = instagram.searchUser("jordanharmon13").getUserList();
            /*******************************************
             * This can take one of two variables
             * UserID which needs to be an int
             * UserName which needs to be a String
             ******************************************/
            InstaLoader insta = new InstaLoader(458131440);
            List<Map<String, String>> kk = insta.createMap();
            // Test will display ALL photos from URL link
            for (int i = 0; i < kk.size();i++){              
                out.println("<img src='" + kk.get(i).get("url") + "'>" + "<br>"); 
            }
        %>
 
    </div>


</div>

</body>

</html>