<%-- 
    Document   : inside_categories
    Created on : Nov 5, 2016, 10:36:35 AM
    Author     : deepak
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin login-add remove member</title>   
<style>
            ul {    
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
}

li {
    float: left;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

li input {
    float: right;
    position: absolute;
    display: block;
    text-align: right;
    padding: 14px 16px;
    text-decoration: none;
}

a:hover:not(.active) {
    background-color: #111;
}

.active {
background-color:#1abc9c;
}

.footer {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}
#myid
{
  font-family: Georgia, "Times New Roman", Times, serif; 
  font-size: 150%;
  margin: 05px auto;
  float:left;
  margin-top: 20px;
  margin-left: 25px;
}

body
{
    
    background-image: url("http://wallpapercave.com/wp/o5kkKdN.jpg");
}
.form-style-5{
    max-width: 500px;
    padding: 10px 20px;
    background: #f4f7f8;
    margin: 10px auto;
    padding: 20px;
    background: #f4f7f8;
    border-radius: 8px;
    font-family: Georgia, "Times New Roman", Times, serif;
}
.form-style-5 fieldset{
    border: none;
}
.form-style-5 legend {
    font-size: 1.4em;
    margin-bottom: 10px;
}
.form-style-5 label {
    display: block;
    margin-bottom: 8px;
}
.form-style-5 input[type="text"],
.form-style-5 input[type="password"],
.form-style-5 input[type="date"],
.form-style-5 input[type="datetime"],
.form-style-5 input[type="email"],
.form-style-5 input[type="number"],
.form-style-5 input[type="search"],
.form-style-5 input[type="time"],
.form-style-5 input[type="url"],

.form-style-5 textarea,
.form-style-5 p,
.form-style-5 a,
.form-style-5 select {
    font-family: Georgia, "Times New Roman", Times, serif;
    background: rgba(255,255,255,.1);
    border: none;
    border-radius: 4px;
    font-size: 16px;
    margin: 0;
    outline: 0;
    padding: 7px;
    width: 100%;
    box-sizing: border-box; 
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box; 
    background-color: #e8eeef;
    color:#8a97a0;
    -webkit-box-shadow: 0 1px 0 rgba(0,0,0,0.03) inset;
    box-shadow: 0 1px 0 rgba(0,0,0,0.03) inset;
    margin-bottom: 30px;
    
}
.form-style-5 input[type="text"]:focus,
.form-style-5 input[type="password"]:focus,
.form-style-5 input[type="date"]:focus,
.form-style-5 input[type="datetime"]:focus,
.form-style-5 input[type="email"]:focus,
.form-style-5 input[type="number"]:focus,
.form-style-5 input[type="search"]:focus,
.form-style-5 input[type="time"]:focus,
.form-style-5 input[type="url"]:focus,
.form-style-5 textarea:focus,
.form-style-5 p:focus,
.form-style-5 a:focus,
.form-style-5 select:focus{
    background: #d2d9dd;
}
.form-style-5 select{
    -webkit-appearance: menulist-button;
    height:35px;
}
.form-style-5 .number {
    background: #1abc9c;
    color: #fff;
    height: 80px;
    width: 80px;
    display: inline-block;
    font-size: 0.8em;
    margin-right: 4px;
    line-height: 30px;
    text-align: center;
    text-shadow: 0 1px 0 rgba(255,255,255,0.2);
    border-radius: 15px 15px 15px 0px;
}

.form-style-5 input[type="submit"],
.form-style-5 input[type="reset"],
.form-style-5 input[type="button"]
{
    position: relative;
    float:left;
    display: block;
    padding: 19px 39px 18px 39px;
    color: #FFF;
    margin: 0 auto;
    background: #1abc9c;
    font-size: 18px;
    text-align: center;
    font-style: normal;
    width: 50%;
    border: 1px solid #16a085;
    border-width: 1px 1px 3px;
    margin-bottom: 10px;
}
.form-style-5 input[type="submit"]:hover,
.form-style-5 input[type="reset"]:hover,
.form-style-5 input[type="button"]:hover
{
    background: #109177;
}

</style>
      </head>
    <body>
               
 <ul>
  <li><a href="/ClothingCloset/admin/checkedIn_items">Home</a></li>
  <li><a href="/ClothingCloset/admin/logout">Logout</a></li>
 
</ul>
   <br><br>
   
   
    <section class="">
        <form:form method="POST" action="/ClothingCloset/admin/checkIn">
  		<table width=100% height=100% >
        <tr>
        <th>Donation ID</th>
        <th>Date of Donation</th>
        <th>Item Name</th>
        <th>Size</th>
        <th>Quantity</th>
        <th>Color</th>
        <th>Condition</th>
        <th>Gender</th>
        <th>Brand</th>
         <th>Category</th>
          <th>Price</th>
        <th>Checkin</th>
        </tr>
        
         <c:forEach items="${lists}" var="listValue">
    <tr>
   
      <td><c:out value="${listValue.id}" /></td>
      <td><c:out value="${listValue.dateOfDonation}" /></td>
      <td><c:out value="${listValue.itemName}" /></td>
      <td><c:out value="${listValue.size}" /></td>
      <td><c:out value="${listValue.quantity}" /></td>
      <td><c:out value="${listValue.color}" /></td>
      <td><c:out value="${listValue.item_Condition}" /></td>
      <td><c:out value="${listValue.gender}" /></td>
      <td><c:out value="${listValue.brand}" /></td>
      
       <td> <select name="category">
        	<option value="Belt">Belt</option>
        	<option value="Sunglasses">Sunglasses</option>
        	<option value="Shoe">Shoe<option>
                </select></td>
      <td>    <input type="Price" name="Price" placeholder="Price*"></td>
      <td><input type="checkbox" name=${listValue.itemName} value=${listValue.itemName}/></td>
    </tr>

  </c:forEach>
    

        
 </table>
 <input type="submit" value="Check In"> 
</form:form>
    </section>
          
          
    </body>
</html>
