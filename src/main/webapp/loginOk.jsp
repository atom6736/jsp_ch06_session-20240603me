<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 확인</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	
		String mid = request.getParameter("memberId");
		String mpw = request.getParameter("memberPw");
		
		if((mid.equals("tiger")) && (mpw.equals("12345"))) { // 참일때 로그인 시켜야 함.
			session.setAttribute("sessionId", mid);  //세션에 아이디올리기. 세션에 올릴 때 내가 쓸 이름을 arg0 문자열에 넣는 것.
			session.setAttribute("sessionPw", mpw); //세션에 비번 올리기.
			session.setAttribute("ValidMem", "yes"); //이 코드는 로그인 여부만 확인하기 위한 값 올리기
			
			out.println("로그인 성공");
		} else {
			out.println("로그인 실패");
		}
		
	%>
	<br>
	<a href="loginCheck.jsp">로그인 확인 페이지로 이동</a>
</body>
</html>