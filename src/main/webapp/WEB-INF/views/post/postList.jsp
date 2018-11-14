<%--
  Created by IntelliJ IDEA.
  User: Mr.KKu
  Date: 2018-11-14
  Time: 오전 11:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script>
	function createPost() {
		location.href= "/postWrite?bd_no=${post_groupno}&recursion="
	}
</script>
<table class="table table-hover">
    <thead>
    <tr>
        <th scope="col">게시글<br/>번호</th>
        <th scope="col">제목</th>
        <th scope="col">작성자<br/>아이디</th>
        <th scope="col">작성일시</th>
    </tr>
    </thead>


    <tbody>
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
    </tbody>

    <%-- 페이징 처리--%>
    <tr class="table-primary tbodyTr">
        <th scope="row" colspan="3">
            <div style="margin: 0px auto;">
                <ul class="pagination">
                    <c:choose>
                        <c:when test="${page eq 1}">
                            <li class="page-item disabled">
                                <a class="page-link" href="#">&laquo;</a>
                            </li>
                        </c:when>
                        <c:otherwise>
                            <li class="page-item">
                                <a class="page-link" href="/postList?bd_no=${post_groupno}&page=${page-1}&pageSize=10">&laquo;</a>
                            </li>
                        </c:otherwise>
                    </c:choose>

                    <%-- <li class="page-item active">
                               <a class="page-link" href="#">1</a>
                           </li>--%>
                    <c:forEach begin="1" end="${postAllList.size()/10+1}" varStatus="i">
                        <c:choose>
                            <c:when test="${page eq i.index}">
                                <li class="page-item active">
                                    <a class="page-link" href="/postList?bd_no=${post_groupno}&page=${i.index}&pageSize=10">${i.index}</a>
                                </li>
                            </c:when>

                            <c:when test="${page ne i.index}">
                                <li class="page-item">
                                    <a class="page-link" href="/postList?bd_no=${post_groupno}&page=${i.index}&pageSize=10">${i.index}</a>
                                </li>
                            </c:when>
                        </c:choose>
                    </c:forEach>

                    <fmt:parseNumber var="maxPage" value="${postAllList.size()/10+1}" integerOnly="true" scope="page" />
                    <c:choose>
                        <c:when test="${page eq maxPage}">
                            <li class="page-item disabled">
                                <a class="page-link" href="#">&raquo;</a>
                            </li>
                        </c:when>
                        <c:otherwise>
                            <li class="page-item">
                                <a class="page-link" href="/postList?bd_no=${post_groupno}&page=${page+1}&pageSize=10">&raquo;</a>
                            </li>
                        </c:otherwise>
                    </c:choose>
                </ul>
            </div>
        </th>
        <th>
            <button type="button" class="btn btn-outline-success" onclick="createPost()">글쓰기</button>
        </th>
    </tr>


</table>
