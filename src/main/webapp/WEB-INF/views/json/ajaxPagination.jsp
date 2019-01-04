<%--
  Created by IntelliJ IDEA.
  User: Mr.KKu
  Date: 2018-11-16
  Time: 오후 2:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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

                <%-- <li class="page-item active">
                           <a class="page-link" href="#">1</a>
                       </li>--%>
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
