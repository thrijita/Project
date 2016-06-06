<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>All Product Info</title>

<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootswatch/3.2.0/sandstone/bootstrap.min.css">
<script	src="//ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>
<script	src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
<script	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.5/angular.min.js"></script>

<link rel="stylesheet"
href="http://maxcdn.bootstrapcdn.com/bootswatch/3.2.0/sandstone/bootstrap.min.css">
<link rel="stylesheet"
href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
<style>
body {
padding-top: 50px;
}
</style>


<!-- JS -->

<script
src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.23/angular.min.js"></script>

<script type="text/javascript">
angular.module('sortApp',[]).controller('mainController',function($scope,$http){
//alert("hi");
console.log("im in getProduct");
$http({method:'GET',url:'p'}).success(function(data,status,headers,config)
{
//alert(data); 
//$scope.categ=JSON.parse(JSON.stringify(data));
$scope.categ=data;
console.log("length"+categ.length);
for(var c=0;c<$scope.categ.length;c++)
{
var cc=$scope.categ[c];
console.log(cc);
console.log($scope.categ);
return $scope.categ;
}
});
});


</script>


</head>
<body>

<div class="container">
<a href="<c:url value='index'/>" rel="tooltip"
class="btn btn-primary"> &nbsp; <span
class="glyphicon glyphicon-home">&nbsp; Home</span>
</a>
</div>
<br/>
<div class="container">
<div class="row">
<div class="section-title text-center">
<h3>Product list</h3>
</div>
<p align="center">Furniture Details</p>
</div>
</div>
<div class="container" ng-app="sortApp" ng-controller="mainController">
<form>
<div class="form-group">
<div class="input-group">
<div class="input-group-addon">
<i class="fa fa-search"></i>
</div>
<input type="text" class="form-control" placeholder="search"
ng-model="username">
</div>
</div>
</form>



 <div>
 
  <table class="table table-bordered table-striped" >
    
    <thead>
      <tr>
      <td>   
            Product id 
          </td>
        <td>
            Product Name 
        </td>
        <td>
           Description 
        </td>
        <td>
          Price 
      </td>
     </tr>
    </thead>
    
 <tbody>
      <tr  ng-repeat="c in categ | filter : productname">
        <td>{{ c.id }}</td>
        <td>{{ c.productname }}</td>
        <h2>{{c.productname}}</h2>
        <td>{{ c.description }}</td>
        <h2>{{c.description}}</h2>
        <td>{{ c.price }}</td>
        <h2>{{c.price}}</h2> 
        <td> <a href="addprod">Add</a></h2></td>
        <td><a  href="edit?id={{c.id}}">Update</a></td>
         <td><a  href="delete?id={{c.id}}">Delete</a></td>
      </tr>
    </tbody>
</div>
</body>
</html>
