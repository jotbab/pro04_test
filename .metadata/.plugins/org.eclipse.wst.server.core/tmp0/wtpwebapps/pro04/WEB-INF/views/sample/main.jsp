<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>스프링의 데이터 전송</title>
</head>
<body>
	<h1>GET 방식</h1>
	<h2>GET 방식1</h2>
	<div>
		<a href="/sample/get1?id=admin&pw=1234">GET1</a>
	</div>
	<h2>GET 방식2</h2>
	<div>
		<a href="/sample/get2?id=admin&pw=1234">GET2</a>
	</div>
	<h2>GET 방식3</h2>
	<div>
		<a href="/sample/get3?id=admin&pw=1234">GET3</a>
	</div>
	<h2>GET 방식4 - post가 아니여서 안됨</h2>
	<div>
		<a href="/sample/get4?id=admin&pw=1234">GET4</a>
	</div>
	<h2>GET 방식5</h2>
	<div>
		<a href="/sample/get5?id=admin&pw=1234">GET5</a>
	</div>	
	<h2>GET 방식6 - spring에서만 사용가능한 방식</h2>
	<div>
		<a href="/sample/get6/admin/1234">GET6</a>
	</div>
		<h2>GET 방식7 - ModelAndView </h2>
	<div>
		<a href="/sample/get7?id=admin&pw=1234">GET7</a>
	</div>
	
	<h2>POST 방식1</h2>
	<div>
		<form action="./post1" method="post">
			id : <input type="text" name="id" id="id" /><br>
			pw : <input type="password" name="pw" id="pw" /><br><br>
			<input type="submit" value="post1" />
		</form>
	</div>
	
	<h2>POST 방식2</h2>
	<div>
		<form action="./post2" method="post">
			id : <input type="text" name="id" id="id" /><br>
			pw : <input type="password" name="pw" id="pw" /><br><br>
			<input type="submit" value="post2" />
		</form>
	</div>
	
	<h2>POST 방식3</h2>
	<div>
		<form action="./post3" method="post">
			id : <input type="text" name="id" id="id" /><br>
			pw : <input type="password" name="pw" id="pw" /><br><br>
			<input type="submit" value="post3" />
		</form>
	</div>
	
	<h2>POST 방식4</h2>
	<div>
		<form action="./post4" method="post">
			id : <input type="text" name="id" id="id" /><br>
			pw : <input type="password" name="pw" id="pw" /><br><br>
			<input type="submit" value="post4" />
		</form>
	</div>
	
	<h2>POST 방식5</h2>
	<div>
		<form action="./post5" method="post">
			id : <input type="text" name="id" id="id" /><br>
			pw : <input type="password" name="pw" id="pw" /><br><br>
			<input type="submit" value="post5" />
		</form>
	</div>
	
	<h2>POST 방식6</h2>
	<div>
		<form action="./post1" method="post">
			id : <input type="text" name="id" id="id" /><br>
			pw : <input type="password" name="pw" id="pw" /><br><br>
			<input type="submit" value="post6" />
		</form>
	</div>
	
	<h2>POST 방식7</h2>
	<div>
		<form action="./post7" method="post">
			id : <input type="text" name="id" id="id" /><br>
			pw : <input type="password" name="pw" id="pw" /><br><br>
			<input type="submit" value="post7" />
		</form>
	</div>
	
	
	
	
	
	
</body>
</html>