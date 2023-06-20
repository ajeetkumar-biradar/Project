<%@ page import="java.sql.*"%>
<%
Connection con;
Statement stmt;

String cid=request.getParameter("cid");

try
{
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
    stmt=con.createStatement();
    int k=stmt.executeUpdate("delete from student_details where student_name='"+cid+"'");
    out.println("one record deleted successfully!!");
}
catch(Exception e)
{
    out.println(e);
}
%>