<%--
  Created by IntelliJ IDEA.
  User: Mr.KKu
  Date: 2018-11-13
  Time: 오후 3:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript">
	$(document).ready(function () {
		$('#submitEditBoard').on('click',function () {
			$('#editBoardFrm').submit();
		}) ;
	});

		function editBoard(bd_no) {
			var select = $('#editBoardSelect'+bd_no).val();
			var name = $('#editBoardText'+bd_no).val();
			location.href = '/editBoard?bd_name='+name+'&bd_use='+select+'&bd_no='+bd_no;
		}

</script>
<table class="kku-tableCenter">
    <form action="/createBoard" method="post">
        <tr>
            <th><input type="text" name="bd_name" placeholder="게시판이름입력"/></th>
            <th>
                <select name="bd_use">
                    <option value="Y">Y</option>
                    <option value="N">N</option>
                </select>
            </th>
            <th> <input type="submit" value="생성" ></th>
        </tr>
    </form>

</table>
<hr/>
<table class="kku-tableCenter" id="ajax-listBoard">
    <c:forEach items="${listBoard}" var="boardVo" varStatus="i">
        <tr>
            <th><input type="text" value="${boardVo.bd_name}" id="editBoardText${boardVo.bd_no}"/></th>
            <th>
                <select id="editBoardSelect${boardVo.bd_no}">
                    <c:choose>
                        <c:when test="${boardVo.bd_use == 'Y'}">
                            <option value="Y" selected>Y</option>
                            <option value="N">N</option>
                        </c:when>
                        <c:otherwise>
                            <option value="Y">Y</option>
                            <option value="N" selected>N</option>
                        </c:otherwise>
                    </c:choose>
                </select>
            </th>
            <th><button onclick="editBoard('${boardVo.bd_no}')">수정</button> </th>
        </tr>

    </c:forEach>
    </form>
</table>

