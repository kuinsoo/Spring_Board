<%--
  Created by IntelliJ IDEA.
  User: Mr.KKu
  Date: 2018-11-13
  Time: 오후 3:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<table class="kku-tableCenter">
    <tr>
        <th><input type="text" name="bd_name" placeholder="게시판이름입력"/></th>
        <th>
            <select>
                <option value="Y">Y</option>
                <option value="N">N</option>
            </select>
        </th>
        <th> <input type="button" id="create" value="생성" ></th>
    </tr>


</table>
<hr/>
<table class="kku-tableCenter">
    <c:forEach items="${listBoard}" var="boardVo" varStatus="i">
        <tr>
            <th><input type="text" value="${boardVo.bd_name}"/></th>
            <c:choose>
                <c:when test="${boardVo.bd_use == 'Y'}">
                    <th>
                        <select>
                            <option value="Y" selected>Y</option>
                            <option value="N">N</option>
                        </select>
                    </th>
                </c:when>
                <c:otherwise>
                    <th>
                        <select>
                            <option value="Y">Y</option>
                            <option value="N" selected>N</option>
                        </select>
                    </th>
                </c:otherwise>
            </c:choose>
        </tr>
    </c:forEach>
</table>

