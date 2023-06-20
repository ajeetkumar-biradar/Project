<%@page import="java.sql.*"%>
<%

    String user_name;
    user_name=session.getAttribute("uname").toString();

    Connection con;
    Statement stmt;

    String s1,s2,s3;
    s1=request.getParameter("t1");
    s2=request.getParameter("t2");
    s3=request.getParameter("t3");
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
    stmt=con.createStatement();
    ResultSet rs=stmt.executeQuery("select * from login where username='"+user_name+"' ");
        if(rs.next())
        {
            int k=stmt.executeUpdate("update login set password='"+s2+"' where username='"+user_name+"' ");
            out.println("password changed");
        }
    else
    {
        out.println("user not found");
    }
}
catch (Exception e)
{
    out.println(e);
}
%>