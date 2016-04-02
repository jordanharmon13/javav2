<%-- 
    Document   : header
    Created on : Mar 30, 2016, 2:19:08 PM
    Author     : jorda
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Instagram Application</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <meta charset="utf-8">
        <style>
            /* Remove the navbar's default margin-bottom and rounded borders */ 
            .navbar {
                margin-bottom: 0;
                border-radius: 0;
            }

            /* Add a gray background color and some padding to the footer */
            footer {
                background-color: #f2f2f2;
                padding: 25px;
            }

            .carousel-inner img {
                width: 100%; /* Set width to 100% */
                margin: auto;
                min-height:200px;
            }

            /* Hide the carousel text when the screen is less than 600 pixels wide */
            @media (max-width: 600px) {
                .carousel-caption {
                    display: none; 
                }
            }
        </style>
    </head>
    <body>
        <div class="container"> 
            <div class="collapse navbar-collapse">
                <ul class="nav nav-pills" role="tablist">
                    <li><a href="profile.jsp">Profile</a></li>
                    <li><a href="gallery.jsp">Gallery</a></li>
                    <li><a href="popular.jsp">Popular</a></li>
                    <li><a href="search.jsp">Search</a></li>
                    <li><a href="logout.jsp">Logout</a></li>

                </ul>
            </div>
