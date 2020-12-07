<%-- 
    Document   : AdminView
    Created on : 02-Dec-2020, 12:55:37
    Author     : Marken Tuan Nguyen
--%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <sql:setDataSource var = "snapshot" driver = "org.apache.derby.jdbc.ClientDriver"
         url = "jdbc:derby://localhost:1527/ESDweb"
         user = "root" password = "123456"/>
        
        <sql:query dataSource = "${snapshot}" var = "resultUser">
         SELECT * from USERS
        </sql:query>
        <sql:query dataSource = "${snapshot}" var = "resultStaff">
         SELECT * from STAFFS
        </sql:query>
        <sql:query dataSource = "${snapshot}" var = "resultPatient">
         SELECT * from PATIENTS
        </sql:query>
         
        <table border="1" width = "60%"/>
        <tr>
           <th>Username</th>
           <th>Password</th>
           <th>Role</th>
        </tr>

        <c:forEach var = "row" items = "${resultUser.rows}">
           <tr>
              <td><c:out value = "${row.USERNAME}"/></td>
              <td><c:out value = "${row.PASSWORD}"/></td>
              <td><c:out value = "${row.ROLE}"/></td>
           </tr>
        </c:forEach>
        
        <table border = "1" width = "60%">
        <tr>
           <th>Staff ID</th>
           <th>Staff Name</th>
           <th>Staff Address</th>
           <th>Uname</th>
        </tr>

        <c:forEach var = "row" items = "${resultStaff.rows}">
           <tr>
              <td><c:out value = "${row.STAFFID}"/></td>
              <td><c:out value = "${row.STAFFNAME}"/></td>
              <td><c:out value = "${row.STAFFADDRESS}"/></td>
              <td><c:out value = "${row.UNAME}"/></td>
           </tr>
        </c:forEach>
<br>           
        <table border = "1" width ="60%">
        <tr>
           <th>Patient ID</th>
           <th>Patient Name</th>
           <th>Patient Address</th>
           <th>Patient Type</th>
           <th>Uname</th>
        </tr>

        <c:forEach var = "row" items = "${resultPatient.rows}">
           <tr>
              <td><c:out value = "${row.PATIENTID}"/></td>
              <td><c:out value = "${row.PATIENTNAME}"/></td>
              <td><c:out value = "${row.PATIENTADDRESS}"/></td>
              <td><c:out value = "${row.PATIENTTYPE}"/></td>
              <td><c:out value = "${row.UNAME}"/></td>
           </tr>
        </c:forEach>
<br>           
           
      </table>
    </body>
</html>