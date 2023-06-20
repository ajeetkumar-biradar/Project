<%@ page import="java.sql.*"%>


<%
    String id;
    id=request.getParameter("cid");
    Connection con;
    Statement stmt;
try
{
    Class.forName("com.mysql.jdbc.Driver");
    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
    stmt=con.createStatement();
    ResultSet rs=stmt.executeQuery("select*from student_details where student_name='"+id+"'");
    while(rs.next())
    {
        
%>


<!DOCTYPE html>
<html>
  <head>
    <title>Updation Form</title>
    <link rel="stylesheet" href="style2.css">
  </head>
  <body>
    <div class="form">
      <h2>Updation Form</h2>
      <form action="update_std2.jsp">
        <label for="name">Student name</label>
        <input type="text" id="name" name="t1" value=<%=rs.getString(1)%>>

        <label for="email">Student address</label>
        <input type="text" id="email" name="t2" value=<%=rs.getString(2)%>>

        <label for="brand">Student age</label>
        <input type="text" id="password" name="t3" value=<%=rs.getString(3)%>>

        <label for="text">Mobile_no</label>
        <input type="text" id="confirm-password" name="t4" value=<%=rs.getString(4)%>>

        <button type="submit" class="btn">Update</button>
      </form>
    </div>
<%
}
}
catch(Exception e)
{
    out.println(e);
}
%>
</body>
</html>
