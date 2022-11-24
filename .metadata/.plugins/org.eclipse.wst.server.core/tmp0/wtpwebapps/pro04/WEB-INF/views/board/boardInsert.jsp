<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>글등록</title>
    <jsp:include page="../include/head.jsp" />
</head>
<body>
<header class="">
	<jsp:include page="../include/header.jsp" />
</header>
<div class="container">
      <h1 class="title">글등록</h1>
      <form action="${path1 }/boardInsert.do" method="post">
		<table class="table">
		   <tbody>
		    <tr>
		      <th>제목</th>
		      <td><input type="text" class="input" maxlength="90" name="title" id="title" placeholder="제목 입력" required /></td>
		    </tr>
		    <tr>
		      <th>내용</th>
		      <td><textarea rows="8" cols="100" name="content" id="content" class="textarea" required></textarea></td>
		    </tr>
		  </tbody>
		</table>
		<div class="buttons">
		  <button type="submit" class="">글 수정</button>
		  <button type="reset" class="">취소</button>
		  <a href="${path1 }/boardList.do" class="">목록</a>
		</div>
		<div class="button-group">
  			<a class="button">One</a>
  			<button type="submit" class="button">Two</button>
  			<a href="${path1 }/boardList.do" class="button">목록으로</a>
		</div>
	  </form>
    </div>
    <script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
    <script src="https://dhbhdrzi4tiry.cloudfront.net/cdn/sites/foundation.js"></script>
    <script>
      $(document).foundation();
    </script>
    <footer>
    </footer>
</body>
</html>