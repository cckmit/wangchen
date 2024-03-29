﻿<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="dms" uri="/WEB-INF/tlds/taglibs-dms"%>
<script type="text/javascript" src="<c:url value='/resources/js/dms/dms.parts-1.0.js' />"></script>

<!-- 날짜, 통화 -->
<dms:configValue code='dateFormat' var="_dateFormat" />
<dms:configValue code='dateTimeFormat' var="_dateTimeFormat" />

<!-- content -->
<section id="content">
    <section id="content_list" class="content_list">
        <div class="content_title conttitlePrev">
            <h2 id="content_list_title"><spring:message code='global.lbl.alarm' /><spring:message code='global.title.list' /></h2>
        </div>
        <div class="listarea">
            <iframe id="mainList" border="0" frameborder="0" width="100%" height=""></iframe>
            <div class="dlistitem bgNone" style="display:none;" id="listarea_noData"><span></span></div>
        </div>
    </section>

    <section id="lay_pop" class="lay_pop">
        <div class="lay_cont">
            <span class="date" id="lay_pop_date">2016-02-20 12:11:33</span>
            <span id="lay_cont_id"></span>
            <span id="lay_cont_url"></span>
        </div>
        <div class="btnarea">
            <span class="btnd1" onclick="layerClose('#lay_pop')"><spring:message code='global.btn.close' /><!-- 닫기 --></span>
        </div>
    </section>

    <div id="docu_prev" ><spring:message code="global.btn.pre" /><!-- 이전 --></div>
</section>




<script>
//시스템 날짜 정보 가져오기.
var vDateTimeFormat = "${_dateTimeFormat}";
var vDtyyyyMMdd = "${_dateFormat}";
$(document).ready(function() {

    $("#header_title").html("<spring:message code='global.title.alarmList' />"); //알람목록
    $("#mainList").attr("src", "<c:url value='/mob/cmm/alarm/selectAlarmList.do' />");
    //$("#mainList").attr("src", "<c:url value='/mob/ser/ro/workAssign/selectWorkAssignList.do' />");

    $("#docu_prev").bind("click", function(){
        goMain();
    });

});

function setPushLayer(date,content,id,viewNm,viewUrlNm,check){
    $("#lay_pop_date").text(date);
    $("#lay_cont_id").text(content);
    if(viewNm !="" && viewNm != null)
        $("#lay_cont_url").text(viewNm);
    if(viewUrlNm !="" && viewUrlNm != null){
        $("#lay_cont_url").bind("click",function () {
            window.open(viewUrlNm, "_self");
        });
    }

    //기존에 읽지 데이터의 경우 데이터베이스 읽음 처리 및 알림건수 1건 삭제
    if("<spring:message code='global.btn.notConfirm' />" == check){
        var data = {};
        data["mesgId"] = id;
        $.ajax({
            url:"<c:url value='/mob/cmm/alarm/updateAlarm.do' />",
            type:'POST',
            dataType:'json',
            contentType:'application/json',
            data:JSON.stringify(data),
            error:function(jqXHR,status,error){
                console.log(jqXHR);
                //mob.notification.error("<spring:message code='global.err.mobSystemError'/>");
            },
            success:function(data){
                var curCnt = parseInt($(".alarm_num").text());
                if(curCnt > 0){
                    $(".alarm_num").text(curCnt -1 );
                }

            }
        });

    }



      pushLayer('#lay_pop');
}

function goToViewUrl(){
    window.open("<c:url value='/mob/cmm/todo/selectTodoMain.do'/>", "_self");
}


//메인화면 가기
function goMain() {
    window.open("<c:url value='/mob/cmm/main/selectMain.do'/>", "_self");
}

</script>