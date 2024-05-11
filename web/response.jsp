<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix ="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix ="sql"%>
<%@page contentType="text/html" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; Stringset=UTF-8">
        <title>Response Page</title>
    </head>
    <body>
        <%
            String a= request.getParameter("c");
            String b= request.getParameter("c++");            
            String c= request.getParameter("php");            
            String d= request.getParameter("java");                                    
            String e= request.getParameter("html");
            String f= request.getParameter("dbms");
            String g= request.getParameter("adbms");
            String h= request.getParameter("os");
            String i= request.getParameter("pyhton");
            String j= request.getParameter("ethics");
            String fname=request.getParameter("name");
            String id=request.getParameter("Id");
            
            String[] str = new String[] {a,b,c,d,e,f,g,h,i,j};
            
            int k=0;
            for (k=0;k<10;k++){
                if(str[k] == null){
                    str[k] = "0";
                }
            }
            int size = str.length;
            int [] arr = new int [size];
            for (k=0; k<size; k++) {
                arr[k] = Integer.parseInt(str[k]);
            }
            int l=0,sum=0,count=0;
            for (l=0; l<arr.length; l++) {
                 sum = sum + arr[l]; 
            }
            for (l=0;l<arr.length;l++){
                if(arr[l]!=0){
                    count = count+1;
                }
            }
            if (sum>=16 && sum<=27){
                 Class.forName("com.mysql.jdbc.Driver");
                 Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sk", "root", "root");
                 Statement st=conn.createStatement();
                 int q= st.executeUpdate("insert into course_registered values('"+id+"','"+fname+"','"+count+"','"+sum+"')");
                 out.println("Data is successfully inserted!");
            }
        %>
        <sql:setDataSource var="ffcs" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/sk" 
                           user="root" password="root"/>
        <sql:query dataSource="${ffcs}" var="record">SELECT * from course_registered;</sql:query>
       
        
        <table class="content-table">
            <thead>
            <tr class="ff-normal">
                <th> Student Id</th>
                <th> Student Name</th>
                <th> Credit</th>
                <th> Total Course</th>
            </tr>
            </thead>
            <tbody>
         <c:forEach var = "row" items = "${record.rows}">
            <tr>
               <td><c:out value = "${row.std_id}"/></td>
               <td><c:out value = "${row.std_name}"/></td>
               <td><c:out value = "${row.reg_cred}"/></td>
               <td><c:out value = "${row.t_course}"/></td>
            </tr>
         </c:forEach>
            </tbody>
            </table><br><br>
    </body>
</html>
