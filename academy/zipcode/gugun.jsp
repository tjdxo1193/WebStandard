    <%@ page contentType="text/html; charset=UTF-8"
             pageEncoding="UTF-8" %>
        <%@ page import="java.sql.DriverManager" %>
        <%@ page import="java.sql.Connection" %>
        <%@ page import="java.sql.PreparedStatement" %>
        <%@ page import="java.sql.ResultSet" %>

            <%
    String DRV = "org.mariadb.jdbc.Driver";
    String URL = "jdbc:mariadb://mariadb.cmhqke6zpvyh.us-east-2.rds.amazonaws.com:3306/playground";
    String USR = "master";
    String PWD = "bigdata2020";

    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    String sql = "select distinct gugun from zipcode_2013 where sido = '서울시'";

    StringBuilder sb = new StringBuilder();
    try {
        Class.forName(DRV);
        conn = DriverManager.getConnection(URL, USR, PWD);
        pstmt = conn.prepareStatement(sql);
        rs = pstmt.executeQuery();

        while (rs.next()) {
            String str = rs.getString(1) + " / ";
            sb.append(str);
        }
    } catch (Exception ex) {
        ex.printStackTrace();
    } finally {
        if (rs != null) rs.close();
        if (pstmt != null) pstmt.close();
        if (conn != null) conn.close();
    }

    out.write(sb.toString());
%>