<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--ログイン結果を出力するビュー --%>
<%@ page import = "model.User" %>
<%
//セッションスコープからユーザーのログイン情報を取得
User loginUser = (User) session.getAttribute("loginUser");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>どこつぶ</title>
</head>
<body>
<h1>どこつぶログイン</h1>
<%--ログイン情報がnullじゃないなら、ログインが通ったら --%>
<% if(loginUser != null) { %>
	<p>ログインに成功しました</p>
	<p>ようこそ<%= loginUser.getName() %>さん</p>
	<a href ="/docoTsubu2Kaime/Main">つぶやき投稿・閲覧へ</a>
	<a href="/docoTsubu2Kaime/">TOPへ</a>
<%  }else { %>
	<p>ログインに失敗しました</p>
	<a href="/docoTsubu2Kaime/">TOPへ</a>
<% } %>
</body>
</html>