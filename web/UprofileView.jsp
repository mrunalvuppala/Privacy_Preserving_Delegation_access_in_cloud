<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="Utils.DbConnector"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>fastpage | About</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<script type="text/javascript" src="js/radius.js"></script>
</head>
<body>

<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo"> <img src="images/logo_img.gif" alt="" width="51" height="48" />
          <h2 style="width: 1000px;"><a href="#"><span style="color: #0d2c52;font-size: larger">Privacy preserving Delegated Access </span><span style="font-size: larger">Control in public Clouds</span></a></h2>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
          <li><a href="#">Home</a></li>
          <li><a href="read.jsp"> File Read</a></li>
          <!--<li><a href="mail.jsp">Compose Mail</a></li> -->
          <li><a href="HomePage.jsp">LogOut</a></li>
        </ul>
        <div class="search">
          <form id="form" name="form" method="post" action="#">
            <span>
            <input name="q" type="text" class="keywords" id="textfield" maxlength="50" value="Search..." />
            <input name="b" type="image" src="images/search.gif" class="button" />
            </span>
          </form>
        </div>
      </div>
      <div class="clr"></div>
      <div class="header_img"> <img src="images/jpimage.jpg" alt="" width="960" height="326" /></div>
    </div>
  </div>
<div class="clr"></div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2 style="font-size: 50px;"><span>User </span> Profile</h2>
          <div class="clr"></div>
          <p>
              <%
              String name=null,pass=null,email=null,mob=null,addr=null;
                Connection c = DbConnector.getConnection();
                Statement s = c.createStatement();
                ResultSet r = s.executeQuery("select * from userreg where name = '"+session.getAttribute("uID").toString() +"'  ");
                if (r.next()){
                   name = r.getString("name"); 
                   pass = r.getString("pass"); 
                   email = r.getString("mail"); 
                   mob = r.getString("domain"); 
                   addr = r.getString("sub_domain"); 
                }                                               
              
              %>
               <p>
                   <label for="name" style="font-size: 35px;">Name  </label>
                   <label for="name" style="margin-left:110px;font-size: 29px;  ">::&nbsp;<%=name%></label>
               </p> 
               <p>
                <label for="name" style="font-size: 35px;">UserName </label>
               <label for="name"style="margin-left:36px;font-size: 29px;  ">::&nbsp;<%=pass%></label>
                </p> 
               <p>
                <label for="name" style="font-size: 35px;">PassWord</label>
                <label for="name"style="margin-left:45px;font-size: 29px;  ">::&nbsp;<%=email%></label>
                </p> 
               <p>
                <label for="name"style="font-size: 35px;">Mail Id</label>
               <label for="name"style="margin-left:105px;font-size: 29px;  ">::&nbsp;<%=mob%></label>
                </p> 
               <p>
                <label for="name"style="font-size: 35px;">Mobile </label>
               <label for="name"style="margin-left:100px;font-size: 29px;  ">::&nbsp;<%=addr%></label>
                </p> 
              
          </p>
        </div>
       
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star">Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
              <li><a href="userHome.jsp">Back</a></li>
            
          </ul>
        </div>
       
      </div>
      <div class="clr"></div>
    </div>
  </div>  
  
  

  <div class="fbg">
  
    <div class="footer">
        <p  class="lf">Get More  from <a target="_blank" href="http://www.jpinfotech.org">JPINFOTECH</a></p>
      <div class="clr"></div>
    </div>
  </div>
</div>
</body>
</html>
