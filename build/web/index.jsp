<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Course Registration</title>
    </head>
    <body style="background: aqua">
        <h1><center>Course Registration</center></h1>
        <form align='center' method ="POST" action="response.jsp" target="_blank">
            <label>Registration Number</label>
            <input type='text' name='id'>&nbsp;&nbsp;&nbsp;
            <label>User Name:</label>
            <input type='text' name='name'><br><br><br>
            <center><table border="3px solid black" width="300px"  style="text-align: center">
                <th>Course Name</th>
                <th> Credits </th>
                <th>Selection</th>
                <tr>
                    <td>C++</td>
                    <td>3</td>
                    <td>
                        <select name="c++">
                            <option value=0 name="c++">0</option>
                            <option value=3 name="c++">3</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>PHP</td>
                    <td>4</td>
                    <td>
                        <select name="php">
                            <option value=0 name="php">0</option>
                            <option value=4 name="php">4</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>C</td>
                    <td>2</td>
                    <td>
                        <select name="c">
                            <option value=0 name="c">0</option>
                            <option value=2 name="c">2</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>HTML</td>
                    <td>3</td>
                    <td><select name="html">
                            <option value=0 name="html">0</option>
                            <option value=3 name="html">3</option>
                        </select></td>
                </tr>
                <tr>
                    <td>Java</td>
                    <td>3</td>
                    <td>
                        <select name="java">
                            <option value=0 name="java">0</option>
                            <option value=3 name="java">3</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Python</td>
                    <td>4</td>
                    <td>
                        <select name="python">
                            <option value=0 name="python">0</option>
                            <option value=4 name="python">4</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>OS</td>
                    <td>4</td>
                    <td>
                        <select name="os">
                            <option value=0 name="os">0</option>
                            <option value=4 name="os">4</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>DBMS</td>
                    <td>4</td>
                    <td><select name="dbms">
                            <option value=0 name="dbms">0</option>
                            <option value=4 name="dbms">4</option>
                        </select></td>
                </tr>
                <tr>
                    <td>ADBMS</td>
                    <td>4</td>
                    <td>
                        <select name="adbms">
                            <option value=0 name="adbms">0</option>
                            <option value=4 name="adbms">4</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Ethics</td>
                    <td>2</td>
                    <td>
                        <select name="ethics">
                            <option value=0 name="ethics">0</option>
                            <option value=2 name="ehtics">2</option>
                        </select>
                    </td>
                </tr>
                </table></center>
            <br><br>
            <input type="Submit" value="Submit" name="submit">
        </form>
    </body>
</html>

