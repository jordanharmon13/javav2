<%-- 
    Document   : profile
    Created on : Mar 24, 2016, 1:49:36 PM
    Author     : jorda
--%>
<jsp:include page="header.jsp" />

<%@ page import="instagram.Constants" %>

<%@ page import="org.jinstagram.Instagram" %>

<%@ page import="org.jinstagram.entity.users.basicinfo.UserInfoData" %>


<%

    Object objInstagram = session.getAttribute(Constants.INSTAGRAM_OBJECT);

    Instagram instagram = null;

    if (objInstagram != null) {
        instagram = (Instagram) objInstagram;
    } else {
        response.sendRedirect(request.getContextPath() + "/index.jsp");
        return;
    }


%>

<!-- Page Content -->
<div class="container">

    <div class="row">

        <div class="col-lg-12">
            <h1 class="page-header">User Profile</h1>
        </div>
        <% UserInfoData userInfoData = instagram.getCurrentUserInfo().getData();         %>
        <p class="lead">

            <img src="<%= userInfoData.getProfilePicture() %>"/> <br/>

        <p>Username : <%=userInfoData.getUsername()%>
        </p>

        <p>Full Name : <%=userInfoData.getFullName()%>
        </p>

        <p>Bio : <%=userInfoData.getBio()%>
        </p>

        <p>Website : <%=userInfoData.getWebsite()%>
        </p>

        <p>Follows : <%=userInfoData.getCounts().getFollows()%>
        </p>

        <p>Followed By : <%=userInfoData.getCounts().getFollowedBy()%>
        </p>

        <p>Media Count : <%=userInfoData.getCounts().getMedia()%>
        </p>
        </p>


    </div>

    <hr>
    <jsp:include page="footer.jsp" />







