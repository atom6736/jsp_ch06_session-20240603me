<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 확인 페이지</title>
</head>
<body>
	<%
		String validMem = (String) session.getAttribute("ValidMem");
	// 로그인에 성공한 상태이면 vlaidMem의 값은 yes이고, 비로그인 상태면 null값임.
		String sessionId = (String) session.getAttribute("sessionId");
		if(validMem != null) { //이것이 참이라면 로그인 상태.
			
			out.println(sessionId + "님 로그인 중");
		} else { //아니면 ㅣㅂ로그인 상태
			out.println("로그인 페이지로 이동하세요.");
		}
	%>
</body>
</html>