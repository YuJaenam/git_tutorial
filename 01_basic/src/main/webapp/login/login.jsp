<%@ page language="java" contentType="text/xml; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- DB연동 - 아이디가 "hong" / 비밀번호 "111" => 로그인 성공 --%>
<c:if test="${param.user_id == 'hong' }">
	<c:set var="result" value="true"></c:set>
	<c:set var="message" value="홍길동님이 로그인 하셨습니다."></c:set>
</c:if>

<c:if test="${param.user_id != 'hong' }">
	<c:set var="result" value="false"></c:set>
	<c:set var="message" value="가입되지 않은 아이디 입니다."></c:set>
</c:if>
<c:if test="${param.user_password != '111' }">
	<c:set var="result" value="false"></c:set>
	<c:set var="message" value="비밀번호가 틀립니다."></c:set>
</c:if>

<?xml version="1.0" encoding="UTF-8"?>
<login>
	<result>${result }</result>
	<message>${message }</message>
</login>



<%-- <c:if test="${param.user_id == 'hong' }">
	<c:if test="${param.user_password != '111' }">
		<c:set var="result" value="false"></c:set>
		<c:set var="message" value="비밀번호가 틀립니다."></c:set>
	</c:if>
	<c:if test="${param.user_password == '111' }">
	</c:if>
</c:if> --%>