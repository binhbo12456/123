<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>hjhj</title>
</head>
<body>
	<h1>hjhj chao cac ban</h1>
	
	
	 <form action = "/JSP3/hjhj" method ="POST">
        	<div>
			<label for="ten">First name:</label><br>
			<input type="text" id="ten" name="ten" ><br>
			
			<label for="massv">massv</label><br>
			<input type="text" id="massv" name="massv" ><br>
			
			<label for="truonghoc">Truong hoc</label><br>
			<input type="text" id="truonghoc" name="truonghoc" ><br>
			
			<label for="lophoc">lop hoc</label><br>
			<input type="text" id="lophoc" name="lophoc" ><br>
			<label for="vip">vip</label><br>
			<input type="text" id="vip" name="vip" ><br>
			<input type = "submit" value = "Submit" />
  
  </div>
			
      </form>
  
  
  <h1> thong tin sinh vien</h1>
  
	<table>
 <tr>
	<th>Ten</th>
	<th>mssv</th>
	<th>truong hoc</th>
	<th>lophoc</th>
	<th>The uu dai</th>
	</tr>
  <c:forEach items="${dulieu}" var="dulieu">
    <tr>
				    <td>${dulieu.ten}</td>
				    <td>${dulieu.mssv }</td>
				    <td>${dulieu.truonghoc }</td>
				    <td>${dulieu.lophoc }</td>
				    <td>${dulieu.theuudai }</td>
			  </tr>
  </c:forEach>
</table>
           	<table style="width:100%">
			 
			 
			</table>  
  
      

  
</body>
</html>