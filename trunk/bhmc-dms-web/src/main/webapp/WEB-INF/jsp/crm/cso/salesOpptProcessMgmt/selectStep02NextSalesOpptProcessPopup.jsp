<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="dms" uri="/WEB-INF/tlds/taglibs-dms"%>
<script type="text/javascript" src="<c:url value='/resources/js/dms/sha256.js' />"></script>
    <!-- 그룹선택 팝업 -->
    <section id="windows" class="pop_wrap">

        <!-- 탭메뉴 전체 영역 -->
        <div> <!-- 탭메뉴 시작-->
            <div class="header_area">
                <span class="btn_right">
                        <button type="button" id="btnNextStepBefore" class="btn_m"><spring:message code="crm.btn.visitReservation" /><!-- 방문|면담으로 제출 --></button>
                        <button type="button" id="btnCtlSave" class="btn_m" style="display:none;"><spring:message code="global.btn.save" /><!-- 저장 --></button>
                        <button type="button" id="btnCancel" class="btn_m btn_Cancel"><spring:message code="global.btn.cancel" /></button> <!-- 취소 -->
                        <input type="hidden" id="btnNextStep" />
                        <input type="hidden" id="validGradeCd" class="hidden" />
                </span>
            </div>
            <div id="custInfoTabDiv"> <!-- custInfoTabDiv Start -->
                    <!-- 조회 조건 타이틀 시작 -->
                    <div class="table_form form_width_100per mt5"> <!-- 기본정보 시작-->
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
                                    <th scope="row"><spring:message code="crm.lbl.visitAppointDt" /></th> <!-- //  방문예약시간  预约到店时间 -->
                                    <td colspan="2">
                                        <input id="vsitResvDt" name="vsitResvDt" class="form_datetimepicker" data-json-obj="true" />
                                    </td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                            </tbody>
                        </table>
                    </div> <!-- 기본정보 끝-->
                    <div class="header_area">
                        <h2 class="title_basic"><spring:message code='global.title.basicInfo' /></h2> <!-- 기본정보 -->
                    </div>
                    <!--  salesOpptProcForm Start -->
                    <jsp:include page="/WEB-INF/jsp/crm/cso/salesOpptProcessMgmt/selectIncludeSalesOpptProcess.jsp"></jsp:include>
                    <!--  salesOpptProcForm End -->
            </div> <!-- custInfoTabDiv End -->
        </div><!-- //탭메뉴 끝-->
    </section>
    <!-- //그룹선택 팝업 -->

<!--  ************************** checkPwDiv **************************** -->
        <section id="checkPwDiv" class="pop_wrap"> <!-- checkPwDiv Start -->
            <div class="header_area">
                <div class="btn_right">
                    <button type="button" id="btnCheckPwd" class="btn_m"><spring:message code="crm.lbl.activeAppointmentSend" /><!-- 제출 --></button>
                </div>
            </div>
            <div>
                <div class="table_form form_width_100per">
                    <table>
                        <caption></caption>
                        <colgroup>
                            <col style="width:10%;">
                            <col style="width:15%;">
                        </colgroup>
                        <tbody>
                            <tr>
                                <th scope="row"><spring:message code="global.lbl.usrPw" /></th> <!-- 비밀번호 -->
                                <td>
                                    <input id="usrPw" name="usrPw" type="password" class="form_input"  data-json-obj="true" />
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </section>
<!--  ************************** checkPwDiv **************************** -->

 <script type="text/javascript">

     var addrTpList = [];
     var addrTpMap = [];
     var chgBuyYnDS = [];
     var chgBuyYnMap = [];
     var carlineCdList = [];
     var carlineCdMap = [];
     var colorCdList = [];
     var colorCdMap = [];
     var mngScIdList = [];
     var mngScIdMap = [];
     var infoPathCdList = [];
     var infoPathCdMap = [];

     var holdTpList = [];
     var holdTpMap = [];
     var holdDetlTpSeqList = [];
     var holdDetlTpSeqMap = [];

     var leadStatCdList = [];
     var leadStatCdMap = [];
     var sexCdList = [];
     var sexCdMap = [];
     var modelCdList = [];
     var modelCdMap = [];
     var activeGradeCdList = [];
     var activeGradeCdMap = [];

     var custTpList = [];
     var custTpMap = [];
     var infoTpList = [];
     var payTpList = [];
     var expcPurcHmCdList = [];

     var validGradeCdList = [];
     var validGradeCdMap = [];

     <c:forEach var="obj" items="${validGradeCdList}">
         validGradeCdList.push({"cmmCd":"${obj.cmmCd}", "cmmCdNm":"${obj.cmmCdNm}", "useYn":"${obj.useYn}"});
         validGradeCdMap["${obj.cmmCd}"] = "${obj.cmmCdNm}";
     </c:forEach>

     <c:forEach var="obj" items="${holdTpList}">
         holdTpList.push({"cmmCd":"${obj.cmmCd}", "cmmCdNm":"${obj.cmmCdNm}", "useYn":"${obj.useYn}"});
         holdTpMap["${obj.cmmCd}"] = "${obj.cmmCdNm}";
     </c:forEach>

     <c:forEach var="obj" items="${holdDetlTpSeqList}">
         holdDetlTpSeqList.push({"cmmCd":"${obj.holdSeq}" , "cmmCdNm":"${obj.holdDetlTpNm}", "useYn":"${obj.delYn}"});
         holdDetlTpSeqMap["${obj.holdSeq}"] = "${obj.holdDetlTpNm}";
     </c:forEach>

     <c:forEach var="obj" items="${expcPurcHmCdList}">
         expcPurcHmCdList.push({"cmmCd":"${obj.cmmCd}", "cmmCdNm":"${obj.cmmCdNm}", "useYn":"${obj.useYn}"});
     </c:forEach>

     <c:forEach var="obj" items="${payTpList}">
         payTpList.push({"cmmCd":"${obj.cmmCd}", "cmmCdNm":"${obj.cmmCdNm}", "useYn":"${obj.useYn}"});
     </c:forEach>

     <c:forEach var="obj" items="${infoTpList}">
         infoTpList.push({"cmmCd":"${obj.cmmCd}", "cmmCdNm":"${obj.cmmCdNm}", "useYn":"${obj.useYn}"});
     </c:forEach>

     <c:forEach var="obj" items="${custTpList}">
         custTpList.push({"cmmCd":"${obj.cmmCd}", "cmmCdNm":"${obj.cmmCdNm}", "useYn":"${obj.useYn}"});
         custTpMap["${obj.cmmCd}"] = "${obj.cmmCdNm}";
     </c:forEach>

     <c:forEach var="obj" items="${leadStatCdList}">
         leadStatCdList.push({"cmmCd":"${obj.cmmCd}", "cmmCdNm":"${obj.cmmCdNm}", "useYn":"${obj.useYn}"});
         leadStatCdMap["${obj.cmmCd}"] = "${obj.cmmCdNm}";
     </c:forEach>

     <c:forEach var="obj" items="${sexCdList}">
         sexCdList.push({"cmmCd":"${obj.cmmCd}", "cmmCdNm":"${obj.cmmCdNm}", "useYn":"${obj.useYn}"});
         sexCdMap["${obj.cmmCd}"] = "${obj.cmmCdNm}";
     </c:forEach>

     <c:forEach var="obj" items="${activeGradeCdList}">
         activeGradeCdList.push({"cmmCd":"${obj.cmmCd}", "cmmCdNm":"${obj.cmmCdNm}", "useYn":"${obj.useYn}"});
         activeGradeCdMap["${obj.cmmCd}"] = "${obj.cmmCdNm}";
     </c:forEach>

     <c:forEach var="obj" items="${infoPathCdList}">
         infoPathCdList.push({"cmmCd":"${obj.cmmCd}", "cmmCdNm":"${obj.cmmCdNm}", "useYn":"${obj.useYn}"});
         infoPathCdMap["${obj.cmmCd}"] = "${obj.cmmCdNm}";
     </c:forEach>

     <c:forEach var="obj" items="${mngScIdList}">
         mngScIdList.push({"usrId":"${obj.usrId}", "usrNm":"${obj.usrNm}"});
         mngScIdMap["${obj.usrId}"] = "${obj.usrNm}";
     </c:forEach>

     chgBuyYnDS.push({"cmmCd":"Y" , "cmmCdNm":"<spring:message code='global.lbl.yes' />"});
     chgBuyYnDS.push({"cmmCd":"N" , "cmmCdNm":"<spring:message code='global.lbl.n' />"});
     chgBuyYnMap["Y"] = "<spring:message code='global.lbl.yes' />";
     chgBuyYnMap["N"] = "<spring:message code='global.lbl.n' />";

     <c:forEach var="obj" items="${addrTpList}">
         <c:if test="${obj.remark1 ne 'SA'}">
              addrTpList.push({"cmmCd":"${obj.cmmCd}", "cmmCdNm":"${obj.cmmCdNm}", "useYn":"${obj.useYn}"});
         </c:if>
         addrTpMap["${obj.cmmCd}"] = "${obj.cmmCdNm}";
     </c:forEach>

     //차종조회
     <c:forEach var="obj" items="${carlineCdList}">
         carlineCdList.push({carlineNm:"${obj.carlineNm}", carlineCd:"${obj.carlineCd}"});
         carlineCdMap["${obj.carlineCd}"] = "${obj.carlineNm}";
     </c:forEach>

     //색상조회
     <c:forEach var="obj" items="${colorCdList}">
         colorCdList.push({extColorNm:"${obj.extColorNm}", extColorCd:"${obj.extColorCd}"});
         colorCdMap["${obj.extColorCd}"] = "${obj.extColorNm}";
     </c:forEach>

    $(document).ready(function() {


        $("#vsitResvDt").kendoExtMaskedDateTimePicker({
            format:"<dms:configValue code='dateFormat' /> HH:mm"
            ,dateValidMessage:"<spring:message code='global.lbl.date' var='dateMsg' /><spring:message code='global.err.invalid' arguments='${dateMsg}' />"
            , minTime:"08:00"
            , maxTime:"24:00"
        });

//         $("#validGradeCd").kendoExtDropDownList({
//             dataTextField:"cmmCdNm"
//             , dataValueField:"cmmCd"
//             , optionLabel:" "
//             , dataSource:dms.data.cmmCdFilter(validGradeCdList)
//             , index:0
//         });

       var options = parent.editCustPopupWindow.options.content.data;

       $("#leadStatCd").data("kendoExtDropDownList").value(options.leadStatCd);

        // 닫기 버튼.
        $("#btnCancel").kendoButton({
            click:function(e){
                // 팝업 닫기.
                parent.editCustPopupWindow.close();
            }
        });

        $("#checkPwDiv").kendoWindow({
            animation:false
            ,draggable:true
            ,modal:false
            ,resizable:false
            ,visible:false
            ,title:"<spring:message code='global.lbl.usrPw' />"      // 비밀번호
            ,width:"300px"
            ,height:"50px"
        }).data("kendoWindow");

        $("#btnNextStepBefore").kendoButton({
            click:function(e) {
                var custNo = $("#custNo").val();
                var mngScId = $("#mngScId").data("kendoExtDropDownList").value();
                var beforeMngScId = $("#beforeMngScId").val();
                var vsitResvDt = $("#vsitResvDt").data("kendoExtMaskedDateTimePicker").value();
//                 var onDutyYn = "${onDutyYn}";

                var infoTp = $("#infoTp").data("kendoExtDropDownList").value();
                var holdTp = $("#holdTp").data("kendoExtDropDownList").value();

                // 고객번호
                if ( dms.string.isEmpty(custNo) ) {
                    dms.notification.info("<spring:message code='global.lbl.customer' var='returnMsg' /><spring:message code='global.info.chkSelectItemMsg' arguments='${returnMsg}' />");
                    return false;
                };

                // 내방예약시간 여부
                if ( dms.string.isEmpty(vsitResvDt)) {
                    dms.notification.info("<spring:message code='crm.lbl.visitAppointDt' var='returnMsg' /><spring:message code='global.info.chkSelectItemMsg' arguments='${returnMsg}' /> ");
                    return false;
                };

                if ( dms.string.isEmpty(infoTp) ) {
                    dms.notification.warning("<spring:message code='crm.lbl.infoType' var='returnMsg' /><spring:message code='global.info.required.field' arguments='${returnMsg}' />");
                    return false;
                };

                if ( dms.string.isEmpty(holdTp) ) {
                    dms.notification.warning("<spring:message code='crm.lbl.approchLocation' var='returnMsg' /><spring:message code='global.info.required.field' arguments='${returnMsg}' />");
                    return false;
                };

                var param = {};

                param["sVsitResvDt"] = $("#vsitResvDt").data("kendoExtMaskedDateTimePicker").value();
//                 param["sOndutyYn"] = onDutyYn;

                console.log("selectOnDutyMngScId of Request Info. !!");
                console.log(param);

                $.ajax({
                    url:"<c:url value='/crm/cso/salesOpptProcessMgmt/selectSalesOpptScAssign.do' />"
                    ,data:JSON.stringify(param)
                    ,type:'POST'
                    ,dataType:'json'
                    ,contentType:'application/json'
                    ,error:function(jqXHR,status,error){
                        console.log("error !!!");
                        dms.notification.error(jqXHR.responseJSON.errors[0].errorMessage);
                    },
                    success:function(result){
                        console.log(result);
                        console.log("selectOnDutyMngScId success!!!!");
                        if (result.total >= 1) {  //당직자에서 자동으로 배정
                            console.log("assign MngScId:" + result.data[0].ondutyUsrId);
                            $("#mngScId").data("kendoExtDropDownList").value(result.data[0].ondutyUsrId);
                        } else {  //당직자 조회 결과가 없는 경우
//                             $("#onDutyYn").val("N");
                        }

                        var mngScId = $("#mngScId").data("kendoExtDropDownList").value();
                        console.log("mngScId Assign:" + mngScId);
                        // 담당자지정
                        if ( dms.string.isEmpty(mngScId) ) {
                            dms.notification.info("<spring:message code='crm.lbl.prsn' var='returnMsg' /><spring:message code='global.info.chkSelectItemMsg' arguments='${returnMsg}' />");
                            return false;
                        };
                        $("#btnNextStep").click();

                    }

                });

            }
        });

        // 다음 스탭으로 저장 버튼.
        $("#btnNextStep").kendoButton({
            click:function(e){
                console.log("btnNextStep Call !!");
                var custNo = $("#custNo").val();
                var mngScId = $("#mngScId").data("kendoExtDropDownList").value();
                var validGradeCd = $("#validGradeCd").data("kendoExtDropDownList").value();

                console.log("mngScId Check:" + mngScId);
                if (validGradeCd != "02") {
                    // 유효성 판단을 먼저 진행해 주십시요.
                    dms.notification.info("<spring:message code='crm.info.validCheckRequired'/>");
                    return false;
                }

                // 고객번호
                if ( dms.string.isEmpty(custNo) ) {
                    dms.notification.info("<spring:message code='global.lbl.customer' var='returnMsg' /><spring:message code='global.info.chkSelectItemMsg' arguments='${returnMsg}' />");
                    return false;
                };

                // 담당자 확인
                if ( dms.string.isEmpty(mngScId)) {
                    dms.notification.info("<spring:message code='crm.lbl.prsn' var='returnMsg' /><spring:message code='global.info.chkSelectItemMsg' arguments='${returnMsg}' /> ");
                    return false;
                };

                var salesOpptProcParam =
                    $("#salesOpptProcForm").serializeObject(
                            $("#salesOpptProcForm").serializeArrayInSelector("[data-json-obj='true']")
                    );

                var addrParam = {};

                var grid = $("#addrGrid").data("kendoExtGrid");
                var addrGridData = grid.getCUDData("insertList", "updateList", "deleteList");

                if (grid.cudDataLength > 0) {
                    $.each(addrGridData.insertList, function(idx, row){
                        if(row.addrTp == ""){
                           // 선택하지 않은 주소요형이 있습니다.
                           dms.notification.info("<spring:message code='global.lbl.type' var='globalLblAddress' /><spring:message code='global.info.nonSelectItem' arguments='${globalLblAddress}' />");
                           //dataValidate = true;
                           return false;
                        }
                    });
                }

                // enable data Assign
                salesOpptProcParam["leadStatCd"] = "03";
                salesOpptProcParam["custTp"] = $("#custTp").data("kendoExtDropDownList").value();
                salesOpptProcParam["custNm"] = $("#custNmSearch").val();
                salesOpptProcParam["vsitResvDt"] = $("#vsitResvDt").data("kendoExtMaskedDateTimePicker").value();
                salesOpptProcParam["mngScId"] = mngScId;
                // salesOpptProcParam["onDutyYn"] = $("#onDutyYn").val();
                salesOpptProcParam["intrFscpModtpCd"] = $("#intrFscpModtpCd").data("kendoExtDropDownList").value();
                salesOpptProcParam["holdDetlTpSeq"] = $("#holdDetlTpSeq").data("kendoExtDropDownList").value();

                var saveData = $.extend(
                    {"salesOpptProcessMgmtVO":salesOpptProcParam }
                    , {"addressInfoVOList":addrGridData}
                );

                console.log("Saving of Request Info. !!");
                console.log(saveData);

                $.ajax({
                    url:"<c:url value='/crm/cso/salesOpptProcessMgmt/multiSalesOpptProcess.do' />"
                    ,data:JSON.stringify(saveData)
                    ,type:'POST'
                    ,dataType:'json'
                    ,contentType:'application/json'
                    ,error:function(jqXHR,status,error){
                        console.log("error !!!");
                        dms.notification.error(jqXHR.responseJSON.errors[0].errorMessage);
                        //dms.notification.error(jqXHR.responseJSON.errors[0].errorMessage);
                    },
                    success:function(result){
                        console.log(result);
                        console.log("success!!!!");
                        dms.notification.success("<spring:message code='global.info.success'/>");

                        var data = [];
                        data.push(result);
                        options.callbackFunc(data);
                        parent.editCustPopupWindow.close();
                    }
                }).done(function(result) {
                    console.log("Done!!!!");
                });

            }
        });

        $("#btnCheckPwd").kendoButton({
            click:function(e) {
				var usrPw = hex_sha2($("#usrPw").val());

                if (dms.string.isEmpty($("#usrPw").val())) {
                    dms.notification.info("<spring:message code='crm.info.emptyPw' />");
                    return false;
                }

                var pwParam = {};

                pwParam["sPassword"] = usrPw;

                console.log("pwParam !!! ");
                console.log(pwParam);

                $.ajax({
                    url:"<c:url value='/crm/cso/salesOpptProcessMgmt/selectUserPassWordCheck.do' />"
                    ,data:JSON.stringify(pwParam)
                    ,type:'POST'
                    ,dataType:'json'
                    ,contentType:'application/json'
                    ,error:function(jqXHR,status,error){
                        console.log("error !!!");
                        dms.notification.error(jqXHR.responseJSON.errors[0].errorMessage);
                    }
                    ,success:function(result){
                    // success:function(jqXHR, textStatus) {
                        console.log(result);
                        console.log("btnCheckPwd success!!!!");

                        if (result === true) {
                            dms.notification.success("<spring:message code='global.info.success'/>");
                            var checkPwDiv = $("#checkPwDiv").data("kendoWindow");
                            checkPwDiv.close();

                            $("#btnNextStep").click();
                        } else {
                            dms.notification.success("<spring:message code='global.err.invalid.idpw'/>");
                        }
                    }
                });
            }
        });

        if (options.autoBind) {
            $("#custNo").val(options.custNo);
            $("#btnCustSearch").click();
        }

    });


 </script>

