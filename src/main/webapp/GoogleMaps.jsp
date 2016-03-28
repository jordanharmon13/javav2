<%-- 
    Document   : GoogleMaps
    Created on : Mar 28, 2016, 3:00:30 PM
    Author     : jorda
--%>

<%@page import="instagram.GeoLocator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Google Maps</title>
    </head>
    <body>
        <h1>Google Maps Info</h1>
        <p><% GeoLocator myLngLat = new GeoLocator();
            out.println(myLngLat.Location());
            
            %></p>
    </body>
</html>
