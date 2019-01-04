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
<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

<script>
	$(document).ready(function () {
		$(".kku-hidden").hide();
		ajaxPage(${post_groupno},1,10);
	});
	// ajaxPagination
	function ajaxPage(bd_no , page, pageSize) {
		$.ajax({
			type            : "GET",
			url             : "/postListAjax",
			data            : "bd_no="+bd_no+"&page="+page+"&pageSize="+pageSize,
			success         : function (data) {
				$('#postList').html("");
				$('#postList').html(data);
				ajaxPagination(bd_no,page,pageSize);
			}
		});

    }

	function ajaxPagination(bd_no , page, pageSize) {
		$.ajax({
			type: "GET",
			url: "/paginationAjax",
			data: "bd_no=" + bd_no + "&page=" + page + "&pageSize=" + pageSize,
			success: function (data) {
				$('#ajaxPagination').html("");
				$('#ajaxPagination').html(data);
			}
		});
	}


	function ajaxsearchPage(bd_no , page, pageSize, search) {
		$.ajax({
			type            : "GET",
			url             : "/postSearchAjax",
			data            : "bd_no="+bd_no+"&page="+page+"&pageSize="+pageSize+"&search="+search,
			success         : function (data) {
				$('#postList').html("");
				$('#postList').html(data);
				ajaxSearchPagination(bd_no,page,pageSize,search);
			}
		});
	}

	function ajaxSearchPagination(bd_no , page, pageSize,search) {
		$.ajax({
			type: "GET",
			url: "/ajaxSearchPagination",
			data: "bd_no=" + bd_no + "&page=" + page + "&pageSize=" + pageSize+"&search="+search,
			success: function (data) {
				$('#ajaxPagination').html("");
				$('#ajaxPagination').html(data);
			}
		});
	}

	function createPost() {
		location.href= "/postWrite?bd_no=${post_groupno}&recursion="
	}

	function searchPost() {
		var search  =  $('#searchPageList').val();
		location.href= "/postSearch?bd_no=${post_groupno}&search="+search+"&page=1&pageSize=10";
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

    <tbody id="postList">

    <%--    <c:forEach items="${postList}" var="postVo">
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
        </c:forEach>--%>
    </tbody>

    <%-- 페이징 처리--%>

    <tr class="table-primary tbodyTr">
        <th scope="row" colspan="4">
            <div style="margin: 0px auto;">
                <ul class="pagination" id="ajaxPagination" >
        <%--<tr class="table-primary tbodyTr">
            <th scope="row" colspan="4">
                <div style="margin: 0px auto;">
                    <ul class="pagination"  >
                        <c:choose>
                            <c:when test="${page eq 1}">
                                <li class="page-item disabled kku-floatLeft">
                                    <a class="page-link" href="#">&laquo;</a>
                                </li>
                            </c:when>
                            <c:otherwise>
                                <li class="page-item kku-floatLeft"  >
                                    <a class="page-link" href="javascript:ajaxPage('${post_groupno}','${page-1}','10')">&laquo;</a>
                                </li>
                            </c:otherwise>
                        </c:choose>

                        &lt;%&ndash; <li class="page-item active">
                                   <a class="page-link" href="#">1</a>
                               </li>&ndash;%&gt;
                        <c:forEach begin="1" end="${postAllList.size()/10+1}" varStatus="i">
                            <c:choose>
                                <c:when test="${page eq i.index}">
                                    <li class="page-item active kku-floatLeft">
                                        <a class="page-link" href="javascript:ajaxPage('${post_groupno}','${i.index}','10')">${i.index}</a>
                                    </li>
                                </c:when>

                                <c:when test="${page ne i.index}">
                                    <li class="page-item kku-floatLeft">
                                        <a class="page-link" href="javascript:ajaxPage('${post_groupno}','${i.index}','10')">${i.index}</a>
                                    </li>
                                </c:when>
                            </c:choose>
                        </c:forEach>

                        <fmt:parseNumber var="maxPage" value="${postAllList.size()/10+1}" integerOnly="true" scope="page" />
                        <c:choose>
                            <c:when test="${page eq maxPage}">
                                <li class="page-item disabled kku-floatLeft">
                                    <a class="page-link" href="#">&raquo;</a>
                                </li>
                            </c:when>
                            <c:otherwise>
                                <li class="page-item kku-floatLeft">
                                    <a class="page-link" href="javascript:ajaxPage('${post_groupno}','${page+1}','10')">&raquo;</a>
                                </li>
                            </c:otherwise>
                        </c:choose>
                    </ul>
                </div>
            </th>
        </tr>--%>
                </ul>
            </div>
        </th>
    </tr>
    <tr>
            <th colspan="2">
                <input type="text" name="search" id="searchPageList"/>
            </th>
            <th>
                <input type="button" class="btn btn-outline-success" onclick="ajaxsearchPage(${post_groupno},1,10,$('#searchPageList').val())" value="검색" />
            </th>
        <th>
            <button type="button" class="btn btn-outline-success" onclick="createPost()">글쓰기</button>
        </th>
    </tr>


</table>
