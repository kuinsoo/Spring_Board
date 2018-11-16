
<%--
  Created by IntelliJ IDEA.
  User: Mr.KKu
  Date: 2018-11-13
  Time: 오전 11:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link rel="stylesheet" href="/css/ui.css">
<link rel="stylesheet" href="/css/commons.css">
<style>
    body {
        min-width: 520px;
        font-size: 13px;
        font-family: D2Coding;
    }
    .kku-boarderUl {
        border: 0.5px solid indianred;
        text-align: center;
        width: 100%;
        height: 150px;
    }
    .column {
        width: 170px;
        float: left;
        padding-bottom: 100px;
    }

    .portlet {
        margin: 0 1em 1em 0;
        padding: 0.3em;
    }
    .portlet-header {
        padding: 0.2em 0.3em;
        margin-bottom: 0.5em;
        position: relative;
    }
    .portlet-toggle {
        position: absolute;
        top: 50%;
        right: 0;
        margin-top: -8px;
    }
    .portlet-content {
        padding: 0.4em;
    }
    .portlet-placeholder {
        border: 1px dotted black;
        margin: 0 1em 1em 0;
        height: 50px;
    }
</style>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>


	$( function() {
		var tabs = $("#planList").tabs();
		tabs.find(".column" ).sortable({
			connectWith: ".column",
			handle: ".portlet-header",
			cancel: ".portlet-toggle",
			placeholder: "portlet-placeholder ui-corner-all",
			stop      : function(event, ui){
				//alert(ui.item.prev().index());
				//alert(ui.item.prev().text()) //전값
				//alert(ui.item.text()) //현재값
				//alert(ui.item.next().text()) //다음값
				tabs.tabs("refresh");
			}
		});

		$( ".portlet" )
			.addClass( "ui-widget ui-widget-content ui-helper-clearfix ui-corner-all" )
			.find( ".portlet-header" )
			.addClass( "ui-widget-header ui-corner-all" )
			.prepend( "<span class='ui-icon ui-icon-minusthick portlet-toggle'></span>");

		$( ".portlet-toggle" ).on( "click", function() {
			var icon = $( this );
			icon.toggleClass( "ui-icon-minusthick ui-icon-plusthick" );
			icon.closest( ".portlet" ).find( ".portlet-content" ).toggle();
		});
	} );
</script>
<div class="kku-floatLeft kku-boarder kku-mainPage" id="planList">

    <div class="column">
        <label >아이디어</label>
        <c:forEach items="${cardList}" var="cardVo" >
            <c:if test="${cardVo.card_group eq '1'}">
                <div class="portlet">
                    <div class="portlet-header">${cardVo.card_title}</div>
                    <div class="portlet-content">
                            ${cardVo.card_content}
                    </div>
                </div>
            </c:if>
        </c:forEach>
    </div>

    <div class="column">
        <label >검색중</label>
        <c:forEach items="${cardList}" var="cardVo" >
            <c:if test="${cardVo.card_group eq '2'}">
                <div class="portlet">
                    <div class="portlet-header">${cardVo.card_title}</div>
                    <div class="portlet-content">
                            ${cardVo.card_content}
                    </div>
                </div>
            </c:if>
        </c:forEach>
    </div>

    <div class="column">
        <label >진행중</label>
        <c:forEach items="${cardList}" var="cardVo" >
            <c:if test="${cardVo.card_group eq '3'}">
                <div class="portlet">
                    <div class="portlet-header">${cardVo.card_title}</div>
                    <div class="portlet-content">
                            ${cardVo.card_content}
                    </div>
                </div>
            </c:if>
        </c:forEach>
    </div>

    <div class="column">
        <label >완료</label>
        <c:forEach items="${cardList}" var="cardVo" >
            <c:if test="${cardVo.card_group eq '4'}">
                <div class="portlet">
                    <div class="portlet-header">${cardVo.card_title}</div>
                    <div class="portlet-content">
                            ${cardVo.card_content}
                    </div>
                </div>
            </c:if>
        </c:forEach>
    </div>

    <div class="column">
        <label >적용</label>
        <c:forEach items="${cardList}" var="cardVo" >
            <c:if test="${cardVo.card_group eq '5'}">
                <div class="portlet">
                    <div class="portlet-header">${cardVo.card_title}</div>
                    <div class="portlet-content">
                            ${cardVo.card_content}
                    </div>
                </div>
            </c:if>
        </c:forEach>
    </div>

</div>
