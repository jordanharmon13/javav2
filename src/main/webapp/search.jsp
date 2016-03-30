<jsp:include page="header.jsp" />
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
        test = "test";
    } else {
        response.sendRedirect(request.getContextPath() + "/index.jsp");
        return;
    }
%>


<input type="text" placeholder="Search..." id="search">

        <%
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
            GeoLocator geo = new GeoLocator("234 e 450 s provo, ut 84660 ");
            out.println(geo.getAddress());
            // Test will display ALL photos from URL link
            for (int i = 0; i < kk.size();i++){              
                out.println("<img src='" + kk.get(i).get("url") + "'>" + "<br>"); 
            }
        %>
 

<jsp:include page="footer.jsp" />