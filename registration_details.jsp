<%@ page import=" java.sql.*"%>
<% 
String s1,s2,s3,s4;
s1=request.getParameter("t1");
s2=request.getParameter("t2");
s3=request.getParameter("t3");
s4=request.getParameter("t4");

Connection con;
Statement stmt;

try
{
    Class.forName("com.mysql.jdbc.Driver");
    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
    stmt=con.createStatement();
    int k=stmt.executeUpdate("insert into register values('"+s1+"','"+s2+"','"+s3+"','"+s4+"')");
    con.close();

}
catch(Exception e)
{
    out.println(e);
}
%>