<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="bootstrap.css">
</head>
<body>
    
        <div class="row">
            <div class="col">
                <nav class="navbar navbar-light bg-white navbar-expand">
                    <a href="" class="navbar-brand mr-auto  ">
                        <img src="logo.jpg" alt="" width="100px">
                    </a>
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a href="home.html" class="nav-link text-dark">Home</a>
                        </li>

                        <li class="nav-item dropdown">
                            <a href="login.html" class="nav-link text-dark ">Login</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a href="staff.html" class="nav-link text-dark ">Staff</a>
                        </li>
                        <li class="nav-item">
                            <a href="about.html" class="nav-link text-dark ">About us</a>
                        </li>
                        <li class="nav-item">
                            <a href="contactus.html" class="nav-link text-dark">Contact Us</a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
  
  <div class="container">
    <h2 style="text-align: center; color: black;">Student Details</h2>
    <table class="table">
      <thead class="thead-light">
        <tr>
          <th>Student name</th>
          <th>Student Address</th>
          <th>student age</th>
          <th>Mobile_no</th>
          <th>delete</th>
          <th>update</th>
        </tr>
      </thead>
      
<%
Connection con;
Statement stmt;
try
{
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
    stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select * from student_details");
while(rs.next())
{
out.println("<tr><td>");
out.println(rs.getString(1));
out.println("</td><td>");
out.println(rs.getString(2));
out.println("</td><td>");
out.println(rs.getString(3));
out.println("</td><td>");
out.println(rs.getString(4));
out.println("</td><td>");
out.println("<a href='delete_std.jsp?cid="+rs.getString(1)+"'>delete</a>");
out.println("</td><td>");
    out.println("<a href='update_std1.jsp?cid="+rs.getString(1)+"'>update</a>");
out.println("</td></tr>");
}
}//try
catch(Exception e)
{
out.println(e);
}
%>
</table>
</html>