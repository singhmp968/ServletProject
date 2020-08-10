<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>
<style>
body{
background-color: yellow}
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
.table {
  margin-top:200px; 
  
}

</style>
<body>
<h1 class="text-center">Bid Submitted</h1>
<h3 class="text-center">Your bid is now active. if you bid sucessful you will be notified within 24 hours of the closing bidding </h3>

<%

String iid = request.getParameter("itemid");
String iname = request.getParameter("itemname");
String yname = request.getParameter("yourname");
String imail = request.getParameter("email");
String ibid = request.getParameter("accountbid");
String autobid = request.getParameter("bidder");
String ab="";
	if(autobid==null){
		ab="false";
	}else{
		ab="true";
	}
	
	
	
%>
<div class="container" >
<div class="col-md-6 offset-md-3">
<table class="table ">
  <thead>
    <tr>
      <th scope="col"></th>
      <th scope="col" class="text-center bg-dark text-white" ><%= iname %></th>
      
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row"></th>
      <td class="text-center"><strong>Item ID: <%= iid %></strong></td>
      
    </tr>
    <tr>
      <th scope="row"></th>
      <td class="text-center"><strong>Name:<%= yname %></strong></td>
      
    </tr>
    <tr>
      <th scope="row"></th>
      <td class="text-center" ><strong>Email Address: <%= imail %></strong></td>
      
    </tr>
    
    <tr>
      <th scope="row"></th>
      <td class="text-center" ><strong>Bid Price: <%= ibid %></strong></td>
      
    </tr>
    <tr>
      <th scope="row"></th>
      <td class="text-center"><strong>Auto Increment: <%= ab %></strong></td>
      
    </tr>
  </tbody>
</table>

</div>
</div>
</body>
</html>