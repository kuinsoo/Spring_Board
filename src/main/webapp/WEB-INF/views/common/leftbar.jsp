<%--
  Created by IntelliJ IDEA.
  User: Mr.KKu
  Date: 2018-11-13
  Time: 오후 8:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="kku-mainSidebar kku-floatLeft kku-boarder">
    <ul class="kku-styleNone kku-boarderUl">
        <li >게시판 목록</li>
        <li ><a href="/boardController">+추가</a></li>
    </ul>

    <ul>
        <c:forEach items="${listBoard }" var="board" varStatus="i">
            <c:if test="${board.bd_use == 'Y'}">
                <li>${board.bd_name}</li>
            </c:if>
        </c:forEach>
    </ul>
</div>