<%-- 
    Document   : AppStore
    Created on : Apr 2, 2016, 1:50:15 AM
    Author     : jorda
--%>
<jsp:include page="header.jsp" />
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
        <div class="item active">
            <img src="images/geo-photo.PNG" alt="Image"/>
            <div class="carousel-caption">
                <h3>Search for your photos by location</h3>
                <p>Enjoy the extra feature of searching by locationg.</p>
            </div>      
        </div>

        <div class="item">
            <img src="images/profile.PNG" alt="Image"/>
            <div class="carousel-caption">
                <h3>Your Instagram Profile</h3>
                <p>See all your Instagram information.</p>
            </div>      
        </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>

<div class="container text-center">    
    <h3>What We Do</h3><br>
    <div class="row">
        <div class="col-sm-4">
            <img src="http://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image">
            <p>Current Project</p>
        </div>
        <div class="col-sm-4"> 
            <img src="http://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image">
            <p>Project 2</p>    
        </div>
        <div class="col-sm-4">
            <div class="well">
                <p>Some text..</p>
            </div>
            <div class="well">
                <p>Some text..</p>
            </div>
        </div>
    </div>
</div><br>

<jsp:include page="footer.jsp" />
