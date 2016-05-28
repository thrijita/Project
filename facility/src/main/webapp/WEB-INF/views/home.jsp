<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
        <a class="navbar-brand" href="#">OnlineShopping</a>
      
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
     </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</nav>


 <div class="input-group custom-search-form">
                                <input type="text" class="form-control" placeholder="Search...">
                                <span class="input-group-btn">
                                <button class="btn btn-default" type="button">
                                    <i class="fa fa-search"></i>
                                </button>
                            </span>
                            </div>
<table>
<tr>
<td>
<div  class="container" >
  <h2>Furniture World</h2>
  <div class="panel-group">
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" href="#collapse1">Wooden furniture</a>
        </h4>
      </div>
      <div id="collapse1" class="panel-collapse collapse">
        <div class="panel-body">teak</div>
        <div class="panel-footer">oak</div>
      </div>
      </div>
      <div class="panel-group">
    <div class="panel panel-default">
 <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" href="#collapse2">plastic furniture</a>
        </h4>
      </div>
      <div id="collapse2" class="panel-collapse collapse">
      <li><a href="#">flexible</a></li>
    <li><a href="#">Non-Flexible</a></li>
    </div>
    </div>
    </div>
    
    </div>
    </div>
    </td>
    <td>
<div >
<div class="row">
  <div class="col-md-4">
    <a href="Product?name=img1" class="thumbnail">
      
      <img src="<c:url value="/resources/images/Furniture1.jpg"/>" alt="guitar" style="width:150px;height:150px">
    </a>
  </div>
  <div class="col-md-4">
    <a href="Product?name=img2" class="thumbnail">
     
      <img src="<c:url value="/resources/images/furniture2.jpg"/>" alt="violin" style="width:150px;height:150px">
    </a>
  </div>
  <div class="col-md-4">
    <a href="Product?name=img3" class="thumbnail">
      
      <img src="<c:url value="/resources/images/Furniture3.jpg"/>" alt="piano" style="width:150px;height:150px">
    </a>
  </div>
</div> 
  </div>
 <td>
</table>
<br><br>
 <center><a href="Product">All Products</a></center>

</body>
</html>