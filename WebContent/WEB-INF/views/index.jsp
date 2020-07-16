<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>hjhj</title>
</head>
<body>
	<h1>insert</h1>
	
	
	 <form action = "/JSP3/hjhj" method ="POST">
			<label for="ten">Ten:</label><br>
			<input type="text" id="ten" name="ten" ><br>
			
			<label for="massv">massv</label><br>
			<input type="text" id="massv" name="massv" ><br>
			
			<label for="truonghoc">Truong hoc</label><br>
			<input type="text" id="truonghoc" name="truonghoc" ><br>
			
			<label for="lophoc">lop hoc</label><br>
			<input type="text" id="lophoc" name="lophoc" ><br>
			<label for="vip">vip</label><br>
			<input type="text" id="vip" name="vip" ><br>
			<button type="submit" value="Submit">Insert</button>
      </form>
  <h1>Update</h1>
  	 <form action = "/JSP3/hjhj" method ="POST">
  	 
  	 	<label for="ten">Id:</label><br>
			<input type="text" id="ten" name="id" ><br>
			
			<label for="ten">Ten:</label><br>
			<input type="text" id="ten" name="tenup" ><br>
			
			<label for="massv">massv</label><br>
			<input type="text" id="massv" name="massvup" ><br>
			
			<label for="truonghoc">Truong hoc</label><br>
			<input type="text" id="truonghoc" name="truonghocup" ><br>
			
			<label for="lophoc">lop hoc</label><br>
			<input type="text" id="lophoc" name="lophocup" ><br>
			<label for="vip">vip</label><br>
			<input type="text" id="vip" name="vipup" ><br>
			<button type="submit" value="Submit">Update</button>
      </form>
      <h1>Delete</h1>
       <form action = "/JSP3/hjhj" method ="POST">
  	 
  	 	<label for="ten">Id:</label><br>
			<input type="text" id="ten" name="id" ><br>
			<button type="submit" value="Submit">Delete</button>
      </form>
  
  <h1> thong tin sinh vien</h1>
  
	<table>
 <tr>
 	<th>Id</th>
	<th>Ten</th>
	<th>mssv</th>
	<th>truong hoc</th>
	<th>lophoc</th>
	<th>The uu dai</th>
	</tr>
  <c:forEach items="${dulieu}" var="dulieu">
    <tr>
    				<td ahref="/JSP3/hjhj">${dulieu.id}</td>
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