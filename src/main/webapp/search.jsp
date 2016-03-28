<%@page import="instagram.JsonLoader"%>
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
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript" src="js/instafeed.js"></script>

    </head>
    <body>
<!-- Navigation -->
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1">
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