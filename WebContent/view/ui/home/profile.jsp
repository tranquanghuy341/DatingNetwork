<%@page import="main.java.model.user.User" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%
	User userProfile = (User) request.getAttribute("userProfile");
	String avatar = userProfile.getAvatar() != null ? userProfile.getAvatar() : "public/img/default-avt.jpg";
	request.setAttribute("avatar", avatar);
%>
<t:layout bodyClass="top-navigation pace-done">
    <jsp:attribute name="header">
        <title>Trang cá nhân | ${userProfile.fullName}</title>
    </jsp:attribute>
    <jsp:attribute name="footer">

    </jsp:attribute>
    <jsp:body>
        <div class="wrapper wrapper-content">
            <div class="row wrapper border-bottom white-bg page-heading">
                <div class="col-lg-10">
                    <h2>Profile</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="abc">Home</a>
                        </li>
                        <li>
                            <a>Extra Pages</a>
                        </li>
                        <li class="active">
                            <strong>Profile</strong>
                        </li>
                    </ol>
                </div>
                <div class="col-lg-2">

                </div>
            </div>
            <div class="wrapper wrapper-content">
                <div class="row animated fadeInRight">
                    <div class="col-md-4">
                        <div class="ibox float-e-margins">
                            <div class="ibox-title">
                                <h5>Profile Detail</h5>
                            </div>
                            <div>
                                <div class="ibox-content no-padding border-left-right text-center">
                                    <img alt="image" class="img-responsive" src="${avatar}" style="margin: 0 auto;">
                                </div>
                                <div class="ibox-content profile-content">
                                    <h4><strong>${userProfile.fullName}</strong></h4>
                                    <p><i class="fa fa-map-marker"></i> ${userProfile.address}</p>
                                    <p>${userProfile.sex}</p>
                                    <h5>About me</h5>
                                    <p>
                                        ${userProfile.description}
                                    </p>
                                    <div class="row m-t-lg">
                                        <div class="col-md-6 text-center">
                                            <i class="fa fa-file-text-o" style="color: #1ab394;"></i>
                                            <h5><strong>169</strong> Posts</h5>
                                        </div>
                                        <div class="col-md-6 text-center">
                                            <i class="fa fa-users text-center" style="color: #1ab394;"></i>
                                            <c:choose>
                                            	<c:when test="${userProfile.getFriends().size() > 0}">
	                                            	<h5><strong>${userProfile.getFriends().size() }</strong> Friends</h5>	
	                                            </c:when>
	                                            <c:otherwise>
	                                            	<h5><strong>0</strong> Friends</h5>	
	                                            </c:otherwise>
                                            </c:choose>
                                            
                                            
                                        </div>
                                    </div>
                                    <div class="user-button">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <button type="button" class="btn btn-primary btn-sm btn-block"><i class="fa fa-envelope"></i> Send Message</button>
                                            </div>
                                            <div class="col-md-6">
                                                <button type="button" class="btn btn-default btn-sm btn-block"><i class="fa fa-coffee"></i> Buy a coffee</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="ibox float-e-margins">
                            <div class="ibox-title">
                                <h5>Activites</h5>
                                <div class="ibox-tools">
                                    <a class="collapse-link">
                                        <i class="fa fa-chevron-up"></i>
                                    </a>
                                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                        <i class="fa fa-wrench"></i>
                                    </a>
                                    <ul class="dropdown-menu dropdown-user">
                                        <li><a href="#">Config option 1</a>
                                        </li>
                                        <li><a href="#">Config option 2</a>
                                        </li>
                                    </ul>
                                    <a class="close-link">
                                        <i class="fa fa-times"></i>
                                    </a>
                                </div>
                            </div>
                            <div class="ibox-content">

                                <div>
                                    <div class="feed-activity-list">

                                        <div class="feed-element">
                                            <a href="#" class="pull-left">
                                                <img alt="image" class="img-circle" src="/img/a1.jpg">
                                            </a>
                                            <div class="media-body ">
                                                <small class="pull-right text-navy">1m ago</small>
                                                <strong>Sandra Momot</strong> started following <strong>Monica Smith</strong>.
                                                <br>
                                                <small class="text-muted">Today 4:21 pm - 12.06.2014</small>
                                                <div class="actions">
                                                    <a class="btn btn-xs btn-white"><i class="fa fa-thumbs-up"></i> Like </a>
                                                    <a class="btn btn-xs btn-danger"><i class="fa fa-heart"></i> Love</a>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="feed-element">
                                            <a href="#" class="pull-left">
                                                <img alt="image" class="img-circle" src="/public/img/profile.jpg">
                                            </a>
                                            <div class="media-body ">
                                                <small class="pull-right">5m ago</small>
                                                <strong>Monica Smith</strong> posted a new blog.
                                                <br>
                                                <small class="text-muted">Today 5:60 pm - 12.06.2014</small>

                                            </div>
                                        </div>

                                        <div class="feed-element">
                                            <a href="#" class="pull-left">
                                                <img alt="image" class="img-circle" src="public/img/a2.jpg">
                                            </a>
                                            <div class="media-body ">
                                                <small class="pull-right">2h ago</small>
                                                <strong>Mark Johnson</strong> posted message on <strong>Monica Smith</strong> site.
                                                <br>
                                                <small class="text-muted">Today 2:10 pm - 12.06.2014</small>
                                                <div class="well">
                                                    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s. Over the years, sometimes by accident, sometimes on purpose (injected humour and the like).
                                                </div>
                                                <div class="pull-right">
                                                    <a class="btn btn-xs btn-white"><i class="fa fa-thumbs-up"></i> Like </a>
                                                    <a class="btn btn-xs btn-white"><i class="fa fa-heart"></i> Love</a>
                                                    <a class="btn btn-xs btn-primary"><i class="fa fa-pencil"></i> Message</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="feed-element">
                                            <a href="#" class="pull-left">
                                                <img alt="image" class="img-circle" src="public/img/a3.jpg">
                                            </a>
                                            <div class="media-body ">
                                                <small class="pull-right">2h ago</small>
                                                <strong>Janet Rosowski</strong> add 1 photo on <strong>Monica Smith</strong>.
                                                <br>
                                                <small class="text-muted">2 days ago at 8:30am</small>
                                                <div class="photos">
                                                    <a target="_blank" href="http://24.media.tumblr.com/20a9c501846f50c1271210639987000f/tumblr_n4vje69pJm1st5lhmo1_1280.jpg"> <img alt="image" class="feed-photo" src="public/img/p1.jpg">
                                                    </a>
                                                    <a target="_blank" href="http://37.media.tumblr.com/9afe602b3e624aff6681b0b51f5a062b/tumblr_n4ef69szs71st5lhmo1_1280.jpg"> <img alt="image" class="feed-photo" src="public/img/p3.jpg">
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="feed-element">
                                            <a href="#" class="pull-left">
                                                <img alt="image" class="img-circle" src="public/img/a4.jpg">
                                            </a>
                                            <div class="media-body ">
                                                <small class="pull-right text-navy">5h ago</small>
                                                <strong>Chris Johnatan Overtunk</strong> started following <strong>Monica Smith</strong>.
                                                <br>
                                                <small class="text-muted">Yesterday 1:21 pm - 11.06.2014</small>
                                                <div class="actions">
                                                    <a class="btn btn-xs btn-white"><i class="fa fa-thumbs-up"></i> Like </a>
                                                    <a class="btn btn-xs btn-white"><i class="fa fa-heart"></i> Love</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="feed-element">
                                            <a href="#" class="pull-left">
                                                <img alt="image" class="img-circle" src="public/img/a5.jpg">
                                            </a>
                                            <div class="media-body ">
                                                <small class="pull-right">2h ago</small>
                                                <strong>Kim Smith</strong> posted message on <strong>Monica Smith</strong> site.
                                                <br>
                                                <small class="text-muted">Yesterday 5:20 pm - 12.06.2014</small>
                                                <div class="well">
                                                    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s. Over the years, sometimes by accident, sometimes on purpose (injected humour and the like).
                                                </div>
                                                <div class="pull-right">
                                                    <a class="btn btn-xs btn-white"><i class="fa fa-thumbs-up"></i> Like </a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="feed-element">
                                            <a href="#" class="pull-left">
                                                <img alt="image" class="img-circle" src="public/img/profile.jpg">
                                            </a>
                                            <div class="media-body ">
                                                <small class="pull-right">23h ago</small>
                                                <strong>Monica Smith</strong> love <strong>Kim Smith</strong>.
                                                <br>
                                                <small class="text-muted">2 days ago at 2:30 am - 11.06.2014</small>
                                            </div>
                                        </div>
                                        <div class="feed-element">
                                            <a href="#" class="pull-left">
                                                <img alt="image" class="img-circle" src="public/img/a7.jpg">
                                            </a>
                                            <div class="media-body ">
                                                <small class="pull-right">46h ago</small>
                                                <strong>Mike Loreipsum</strong> started following <strong>Monica Smith</strong>.
                                                <br>
                                                <small class="text-muted">3 days ago at 7:58 pm - 10.06.2014</small>
                                            </div>
                                        </div>
                                    </div>
                                    <button class="btn btn-primary btn-block m"><i class="fa fa-arrow-down"></i> Show More</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </jsp:body>
</t:layout>