<%--
  Created by IntelliJ IDEA.
  User: minhyeokkim
  Date: 2022/11/15
  Time: 4:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.example.dao.BoardDAO, com.example.vo.BoardVO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
  <meta charset="UTF-8">
  <title>게시물 정보 보기</title>
</head>
<body>
  <%
    BoardDAO boardDAO = new BoardDAO();
    String id = request.getParameter("id");
    BoardVO u = boardDAO.getBoard(Integer.parseInt(id));
    request.setAttribute("vo",u);
  %>
    <h1>게시물 정보 보기</h1>
    <table id = "edit">
      <tr>
        <td>Photo</td><td><c:if test="${vo.getPhoto() ne ''}"><br/>
        <img src="${pageContext.request.contextPath }/upload/${vo.getPhoto()}" class="photo"></c:if></td>
      </tr>
    </table>
</body>
</html>
