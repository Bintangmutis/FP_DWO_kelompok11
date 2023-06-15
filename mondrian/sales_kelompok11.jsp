<%@ page session="true" contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://www.tonbeller.com/jpivot" prefix="jp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>


<jp:mondrianQuery id="query01" jdbcDriver="com.mysql.jdbc.Driver" 
jdbcUrl="jdbc:mysql://localhost/dw_kelompok11?user=root&password=" catalogUri="/WEB-INF/queries/sales_kelompok11.xml">

select [Measures].[Sub Total] ON COLUMNS,
  {([Customer].[All Customer],[Time].[All Times],[Salesorder],[Salesreason],[Territory])} ON ROWS
from [Jual]


</jp:mondrianQuery>





<c:set var="title01" scope="session">Data Warehouse ADW (Sales) - Kelompok 11</c:set>
