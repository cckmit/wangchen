<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="dms" uri="/WEB-INF/tlds/taglibs-dms"%>

<div class="fsearch_area">

    <div class="header_area">
        <div class="btn_right">
            <%-- <dms:access viewId="VIEW-D-12870" hasPermission="${dms:getPermissionMask('READ')}"> --%>
            <button type="button" class="btn_s btn_search" id="btnSearch" ><spring:message code='global.btn.search' /><!-- 조회 --></button>
            <%-- </dms:access> --%>
        </div>
    </div>

    <div class="table_form">
        <table>
            <caption></caption>
            <colgroup>
                <col style="width:10%;">
                <col style="width:15%;">
                <col style="width:10%;">
                <col style="width:15%;">
                <col style="width:10%;">
                <col style="width:15%;">
                <col style="width:10%;">
                <col style="width:15%;">
            </colgroup>
            <tbody>
                <tr>
                    <th scope="row"><spring:message code='ser.lbl.reportTime' /></th> <!-- 리포트 시간 -->
                    <td>
                        <input id="sStartDt" class="form_datepicker" />
                    </td>
                    <%-- <th scope="row"><spring:message code='ser.lbl.reportDivision' /></th><!-- 리포트 구분 -->
                    <td>
                        <input id="sCarlineCd" class="form_comboBox" />
                    </td> --%>
                    <td>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</div>

<div class="table_info table_info_v1">
    <form id="frmTotalStatus" method="post">
        <iframe id="iframeSubTotalStatus" src="" frameborder="0" scrolling="no" width="100%" height="600"></iframe>
    </form>
</div>

<!-- script -->
<script type="text/javascript">

var userId = "${userId}";
var userNm = "${userNm}";
var dlrCd  = "${dlrCd}";

var toDay = "${toDay}";         // 현재일자
var oneDay = "${oneDay}";       // 해당월 1일
var sevenDay = "${sevenDay}";   // 현재일의 7일전
var lastDay = "${lastDay}";     // 해당월 마지막일자
var nextMonthDay = "${nextMonthDay}";   // 현재일 기준 한달후

//주요인증문서유형(신분증유형):CRM024
var ssnCrnTpPList = [];
<c:forEach var="obj" items="${mathDocTpDS}">
    ssnCrnTpPList.push({"cmmCd":"${obj.cmmCd}", "cmmCdNm":"${obj.cmmCdNm}", "useYn":"${obj.useYn}"});
</c:forEach>

//주문유형(오더유형)
var ordTpList = [];
<c:forEach var="obj" items="${ordTpInfo}">
ordTpList.push({"cmmCd":"${obj.cmmCd}", "cmmCdNm":"${obj.cmmCdNm}", "useYn":"${obj.useYn}"});
</c:forEach>

$(document).ready(function() {

    /*
    // 전체화면보기 - 버튼
    $("#btnCycleSet").kendoButton({
        click:function(e) {
            var newWindow=open("/bhmc-dms-web/ReportServer?formlet=/mis/selectSaleTotalResultDate.frm","",'top=0,left=0,width='+(screen.availWidth)+',height='+(screen.availHeight)+',toolbar=0,location=0,directories=0,status=0,menubar=0,resizable=1,scrolling=0,scrollbars=1');
           }
    });
    */

    // 조회 - 버튼
    $("#btnSearch").kendoButton({
        click:function(e){
            subTotalStatusCall();
        }
    });

    //시작일(년도)
    $("#sStartDt").kendoDatePicker({
        value:oneDay
        ,start:"decade"
        ,depth:"decade"
        ,format:"yyyy"
        ,dateValidMessage:"<spring:message code='global.lbl.date' var='dateMsg' /><spring:message code='global.err.invalid' arguments='${dateMsg}' />"
        ,parseFormats:["yyyy"]
    });

    /* //종료일(년도)
    $("#sEndDt").kendoDatePicker({
        value:toDay
        ,start:"decade"
        ,depth:"decade"
        ,format:"yyyy"
        ,dateValidMessage:"<spring:message code='global.lbl.date' var='dateMsg' /><spring:message code='global.err.invalid' arguments='${dateMsg}' />"
        ,parseFormats:["yyyy"]
    });
    */

    subTotalStatusCall();

});

// 레포트화면 호출
function subTotalStatusCall(){
    var subTotalStatusUrl = "<c:url value='/ReportServer?reportlet=ser/selectRoRepairOrderManReport.cpt' />"
      , param = "";

    param += "&sDlrCd="+dlrCd;
    param += "&sStartDt="+$("#sStartDt").val();
    /* param += "&sDlrCd="+dlrCd;
    param += "&sCustNm="+$("#sContractCustNm").val();
    param += "&sHpNo="+$("#sHpNo").val();
    param += "&sMathDocTp="+$("#sMathDocTp").data("kendoExtDropDownList").value();
    param += "&sSsnCrnNo="+$("#sSsnCrnNo").val();
    param += "&sCarRegStartDt="+$("#sStartDt").data("kendoExtMaskedDatePicker").value();
    param += "&sCarRegStartDt="+$("#sEndDt").data("kendoExtMaskedDatePicker").value();
    param += "&sVinNo="+$("#sVinNo").val();
    param += "&sCarRegNo="+$("#sCarRegNo").val();
    param += "&sOrdTp="+$("#sOrdTp").data("kendoExtDropDownList").value();
    param += "&sCarlineCd="+$("#sCarlineCd").data("kendoExtDropDownList").value();
    param += "&sModelCd="+$("#sModelCd").data("kendoExtDropDownList").value();
    param += "&sOcnCd="+$("#sOcnCd").data("kendoExtDropDownList").value();
    param += "&sExtColorCd="+$("#sExtColorCd").data("kendoExtDropDownList").value();
    param += "&sIntColorCd="+$("#sIntColorCd").data("kendoExtDropDownList").value(); */

    $("#iframeSubTotalStatus").attr("src", subTotalStatusUrl + param);
}
</script>