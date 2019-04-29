<!DOCTYPE html>
<html lang="en">
  <head>
    <title>INDIAN ARMY &mdash; Colorlib Website Template</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,700|Work+Sans:300,400,700" rel="stylesheet">
    <link rel="stylesheet" href="fonts/icomoon/style.css">

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/jquery-ui.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/animate.css">
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/mediaelement@4.2.7/build/mediaelementplayer.min.css">
    
    
    
    <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">
  
    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/style.css">
    
  </head>
  <body>
  
  <div class="site-wrap">

    <div class="site-mobile-menu">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div> <!-- .site-mobile-menu -->
    
    
    <div class="site-navbar-wrap js-site-navbar bg-white">
      
      <div class="container">
        <div class="site-navbar bg-light">
          <div class="py-1">
            <div class="row align-items-center">
              <div class="col-2">
                <h2 class="mb-0 site-logo"><a href="index.html">Indian Army</a></h2>
              </div>
              <div class="col-10">
                <nav class="site-navigation text-right" role="navigation">
                  <div class="container">
                    
                    <div class="d-inline-block d-lg-none  ml-md-0 mr-auto py-3"><a href="#" class="site-menu-toggle js-menu-toggle"><span class="icon-menu h3"></span></a></div>
                    
                    <%
                    String type=session.getAttribute("type").toString();
                    
                    if(type.equalsIgnoreCase("admin"))
                    {
                    
                    
                    
                    %>
                    
                    <ul class="site-menu js-clone-nav d-none d-lg-block">
                      <li class="">
                        <a href="adminhome.jsp">Home</a>
                       <!-- <a href="about.jsp">About</a>-->
                         <a href="adcommando.jsp#form1">Add Commando</a>
                      </li>
                     
                      <li><a href="adteam.jsp#form1">Create Team</a></li>
                     
                       <li><a href="adsndntfn.jsp#form1">Send Notification</a></li>
                     <!-- <li class="active"><a href="contact.html">Contact</a></li>-->
                      <li class="has-children">
                        <a href="adviewcmndo.jsp#form1">View Commandos</a>
                        <ul class="dropdown arrow-top">
                          <li><a href="view_memebers.jsp#form1">View Team Members</a></li>
                          <li><a href="adviewntfn.jsp#form1">View Notification & Updates</a></li>
                          <li><a href="adviewcmplnt.jsp#form1">View Complaints & Reply</a></li>
                          <li class="has-children">
                          <!--  <a href="classes.html">More</a>
                            <ul class="dropdown">
                              <li><a href="classes.html">Yoga Dance</a></li>
                              <li><a href="classes.html">Bare Workout</a></li>
                              <li><a href="classes.html">Peace of Mind</a></li>
                            </ul>-->
                          </li>
                        </ul>
                      </li>
                      <li><a href="logout.jsp">Logout</a></li>
                    </ul>
                    
                    
                    <%
                    }
                    
                    else if(type.equalsIgnoreCase("commando"))
                    {
                        %>
                        
                        
                        
                          <ul class="site-menu js-clone-nav d-none d-lg-block">
                      <li class="">
                        <a href="index.html">Home</a>
                      </li>
                      
                      <li><a href="cmdo_viewprofile.jsp">Profile</a></li>
                      <li><a href="cmdo_viewteam.jsp">Team Members</a></li>
                      <li><a href="cmdo_sndcmplnt.jsp"> Send Complaint</a></li>
                        <li><a href="cmdo_viewrply.jsp"> View Reply</a></li>
                     <!-- <li class="has-children">
                        <a href="classes.html">Yoga Classes</a>
                        <ul class="dropdown arrow-top">
                          <li><a href="classes.html">Yoga Dance</a></li>
                          <li><a href="classes.html">Bare Workout</a></li>
                          <li><a href="classes.html">Peace of Mind</a></li>
                         <li class="has-children">
                            <a href="classes.html">More</a>
                            <ul class="dropdown">
                              <li><a href="classes.html">Yoga Dance</a></li>
                              <li><a href="classes.html">Bare Workout</a></li>
                              <li><a href="classes.html">Peace of Mind</a></li>
                            </ul>
                          </li>
                        </ul>
                      </li>-->
                     <li><a href="logout.jsp">Logout</a></li>
                    </ul>
                    
                        
                        
                        <%
                    }
                    
                    else if(type.equalsIgnoreCase("military_officer"))
                    {
                        %>
                        
                        
                        <ul class="site-menu js-clone-nav d-none d-lg-block">
                      <li class="">
                        <a href="Mo_home">Home</a>
                      </li>
                       <li><a href="mo_prfleview.jsp">Profile</a></li>
                      <li><a href="mo_viewmbrs.jsp">View All Members</a></li>
                      <li><a href="mo_viewntfn.jsp">  Notifications</a></li>
                     <!-- <li class="has-children">
                        <a href="classes.html">Yoga Classes</a>
                        <ul class="dropdown arrow-top">
                          <li><a href="classes.html">Yoga Dance</a></li>
                          <li><a href="classes.html">Bare Workout</a></li>
                          <li><a href="classes.html">Peace of Mind</a></li>
                          <li class="has-children">
                            <a href="classes.html">More</a>
                            <ul class="dropdown">
                              <li><a href="classes.html">Yoga Dance</a></li>
                              <li><a href="classes.html">Bare Workout</a></li>
                              <li><a href="classes.html">Peace of Mind</a></li>
                            </ul>
                          </li>
                        </ul>
                      </li>-->
                     
                     <li><a href="mo_viewcmplnt.jsp">View Complaints</a></li>
                     <li><a href="logout.jsp">Logout</a></li>
                    </ul>
                        
                        
                        
                        
                        <%
                    }
                    %>
                  </div>
                </nav>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  
      
      <div class="site-blocks-cover overlay" style="background-image: url(images/hero_3.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
        <div class="container">
          <div class="row align-items-center justify-content-center">
            <div class="col-md-7 text-center" data-aos="fade">
              <h2 class="caption mb-2">Know Us More </h2>
              <h1 class="">About Indian Army</h1>
              
            </div>
          </div>
        </div>
      </div>  

      

    <div class="site-section site-section-sm">
      <div class="container">
        <div class="row">
       
          <div class="col-md-12 col-lg-8 mb-5">