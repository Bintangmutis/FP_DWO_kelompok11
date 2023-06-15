<%@ page session="true" contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://www.tonbeller.com/jpivot" prefix="jp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>


<jp:mondrianQuery id="query01" jdbcDriver="com.mysql.jdbc.Driver" 
jdbcUrl="jdbc:mysql://localhost/dw_kelompok11?user=root&password=" catalogUri="/WEB-INF/queries/product_kelompok11.xml">


select [Measures].[OrderQty] ON COLUMNS,
  {([Location],[Product].[All Products],[Transaction],[Time].[All Times])} ON ROWS
from [Barang]


</jp:mondrianQuery>





<c:set var="title01" scope="session">Data Warehouse (Product) ADW - Kelompok 11</c:set>
