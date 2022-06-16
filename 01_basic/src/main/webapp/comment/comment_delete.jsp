<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="result" value="false"></c:set>
<c:set var="message" value="덧글을 삭제하는데 실패했습니다."></c:set>

<c:if test="${param.num != 0}">
	<c:set var="result" value="true"></c:set>
	<c:set var="message" value="덧글을 삭제되었습니다."></c:set>
</c:if>

<?xml version="1.0" encoding="UTF-8"?>
<comment>
	<result>${result }</result>
	<message>${message }</message>
</comment>