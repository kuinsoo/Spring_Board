<%--
  Created by IntelliJ IDEA.
  User: Mr.KKu
  Date: 2018-11-16
  Time: 오후 12:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:forEach items="${postList}" var="postVo">
    <tr class="table-primary tbodyTr">
        <th scope="row">${postVo.post_rnum}</th>
        <c:choose>
            <c:when test="${postVo.post_writer == null}">
                <td>${postVo.post_sub}</td>
            </c:when>
            <c:otherwise>
                <td> <a href="/postDetail?postNo=${postVo.post_no}&no=${post_groupno}"  style="cursor: pointer; text-decoration:none;" >${postVo.post_sub}</a></td>
            </c:otherwise>

        </c:choose>
        <td>${postVo.getPost_writer()}</td>
        <td><fmt:formatDate value="${postVo.getPost_rdate()}" /></td>
    </tr>
</c:forEach>
