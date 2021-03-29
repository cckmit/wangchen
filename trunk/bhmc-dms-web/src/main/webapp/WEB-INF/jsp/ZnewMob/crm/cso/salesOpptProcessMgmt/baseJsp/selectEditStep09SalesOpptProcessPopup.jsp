<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="dms" uri="/WEB-INF/tlds/taglibs-dms"%>
<%@ page import="org.springframework.context.i18n.LocaleContextHolder"%>
<script type="text/javascript" src="<c:url value='/resources/js/dms/sha256.js' />"></script>
<script type="text/javascript" src="<c:url value='/resources/js/dms/dms.parts-1.0.js' />"></script>

<!-- 날짜, 통화 -->
<dms:configValue code='dateFormat' var="_dateFormat" />
<dms:configValue code='dateTimeFormat' var="_dateTimeFormat" />

<section id="content">

    <div class="content_right" id="salesOpptProcForm">
        <section id="content_detail" class="content_detail">
            <div class="co_group">
                <div class="content_title conttitlePrev">
                    <h1><spring:message code='global.title.basicInfo' /><!-- 기본정보 --></h1>
                </div>
                <div class="co_view">
                    <div class="formarea" id="formarea" >
                        <table class="flist01">
                            <caption><spring:message code="global.lbl.basicInfo" /></caption>
                            <colgroup>
                                <col style="width:30%;">
                                <col style="">
                            </colgroup>
                            <tbody>
                                <tr class="personalTr">
                                    <th scope="row" class="required"><spring:message code="global.lbl.custNm" /><!-- 고객명 --> </th>
                                    <td>
                                        <div class="f_text">
                                            <input id="custNmSearch" name="custNmSearch" type="text" value="" class="form_input" maxlength="30" readonly />
                                            <input id="custNm" name="custNm" type="hidden" value="" class="form_input" maxlength="30" data-json-obj="true" />
                                            <%-- <span class="customer" id="custSearch"><spring:message code="global.lbl.custSearch" /><!-- 고객조회 --></span> --%>
                                        </div>
                                    </td>
                                </tr>
                                <tr class="personalTr">
                                    <th scope="row"><spring:message code="global.lbl.custNo" /><!-- 고객번호 --></th>
                                    <td>
                                        <div class="f_text"><input type="text" id="custNo" name="custNo" data-json-obj="true" readonly /></div>
                                    </td>
                                </tr>
                                <tr class="personalTr">
                                    <th scope="row" class="required"><spring:message code="global.lbl.custTp" /><!-- 고객유형 --></th>
                                    <td>
                                        <div class="f_text"><input type="text" id="custTp" name="custTp" data-json-obj="true" disabled="disabled" readonly /></div>
                                    </td>
                                </tr>
                                <tr class="personalTr">
                                    <th scope="row" class="required"><spring:message code="global.lbl.hpNo" /><!-- 휴대전화 --></th>
                                    <td>
                                        <div class="f_text"><input type="number" id="hpNo" name="hpNo" class="form_input numberic getCustDupByKey" maxlength="11" data-type="mobile" pattern="\d" data-json-obj="true" readonly />
                                    </td>
                                </tr>
                                <tr class="personalTr">
                                    <th scope="row"><spring:message code="global.lbl.homeTelNo" /><!-- 집전화 --></th>
                                    <td>
                                        <div class="f_text"><input type="text" id="telNo" name="telNo" maxlength="20" data-type="tel" data-json-obj="true" readonly /></div>
                                    </td>
                                </tr>
                                <tr class="personalTr">
                                    <th scope="row"><spring:message code="global.lbl.wechatId" /><!-- Wechat ID --></th>
                                    <td>
                                        <div class="f_text"><input type="text" id="wechatId" name="wechatId" maxlength="20" data-json-obj="true" readonly /></div>
                                    </td>
                                </tr>
                                <tr class="personalTr">
                                    <th scope="row"><spring:message code='global.lbl.sex' /><!-- 성별 --></th>
                                    <td>
                                        <div class="f_text"><input type="text" id="sexCd" name="sexCd" data-json-obj="true" disabled="disabled" readonly /></div>
                                    </td>
                                </tr>
                                <tr class="personalTr">
                                    <th scope="row"><spring:message code="global.lbl.emailNm" /><!-- 이메일 --></th>
                                    <td>
                                        <div class="f_text"><input type="text" id="emailNm" name="emailNm" maxlength="40" data-json-obj="true" readonly /></div>
                                    </td>
                                </tr>
                                <tr class="corporateTr">
                                    <th scope="row" class="required"><spring:message code="crm.lbl.corporation" /><!-- 법인명 --></th>
                                    <td>
                                        <div class="f_text">
                                            <input id="custNmSearchC" name="custNmSearchC" type="text" value="" class="form_input" maxlength="30" readonly />
                                        </div>
                                    </td>
                                </tr>
                                <tr class="corporateTr" style="display:none;">
                                    <th scope="row"><spring:message code="global.lbl.custNo" /><!-- 고객번호 --></th>
                                    <td>
                                        <div class="f_text"><input type="text" id="custNoC" name="custNoC" readonly /></div>
                                    </td>
                                </tr>
                                <tr class="corporateTr" style="display:none;">
                                    <th scope="row" class="required"><spring:message code="global.lbl.custTp" /><!-- 고객유형 --></th>
                                    <td>
                                        <div class="f_text"><input type="text" id="custTpC" name="custTpC" disabled="disabled" readonly /></div>
                                    </td>
                                </tr>
                                <tr class="corporateTr" style="display:none;">
                                    <th scope="row" class="required"><spring:message code="crm.lbl.corpPurcMng" /><!-- 구매담당자명 --></th>
                                    <td>
                                        <div class="f_text"><input type="text" id="relCustNm" name="relCustNm" maxlength="20" data-json-obj="true" readonly /></div>
                                    </td>
                                </tr>
                                <tr class="corporateTr" style="display:none;">
                                    <th scope="row" class="required"><spring:message code="global.lbl.hpNo" /><!-- 휴대전화 --></th>
                                    <td>
                                        <div class="f_text"><input type="number" id="relCustHpNo" name="relCustHpNo" class="form_input numberic getCustDupByKey" data-type="mobile" pattern="\d" maxlength="11" data-json-obj="true" readonly /></div>
                                    </td>
                                </tr>
                                <tr class="corporateTr" style="display:none;">
                                    <th scope="row"><spring:message code="global.lbl.bizCondition" /><!-- 업종 --></th>
                                    <td>
                                        <div class="f_text"><input type="text" id="bizcondCdC" disabled="disabled" readonly /></div>
                                    </td>
                                </tr>
                                <tr class="corporateTr" style="display:none;">
                                    <th scope="row" ><spring:message code="global.lbl.mathDocTp" /><!-- 증거유형 --></th>
                                    <td>
                                        <div class="f_text"><input type="text" id="mathDocTpC" name="mathDocTpC" disabled="disabled" readonly/></div>
                                    </td>
                                </tr>
                                <tr class="corporateTr" style="display:none;">
                                    <th scope="row"><spring:message code="global.lbl.ssnCrnNo" /><!-- 증거번호 --></th>
                                    <td>
                                        <div class="f_text">
                                            <input id="ssnCrnNoC" type="text" value="" class="form_input numberandalpha"  pattern="[0-9A-Z]" maxlength="30" readonly />
                                        </div>
                                    </td>
                                </tr>

                                <tr>
                                    <th scope="row"><spring:message code='crm.lbl.addrNm' /><!-- 주소 --></th>
                                    <td>
                                        <div class="f_text f_disabled">
                                            <p id="addrNm" name="addrNm" style="min-height: 38px; box-sizing: border-box; padding: 8px" readonly></p>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row"></th>
                                    <td>
                                        <div class="f_text f_disabled">
                                            <p id="addrNmDetail" name="addrNmDetail" style="min-height: 38px; box-sizing: border-box; padding: 8px" readonly></p>
                                        </div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div><!-- //co_group  -->


            <!-- 주소  -->
            <c:import url="/WEB-INF/jsp/ZnewMob/crm/cif/customerInfo/listJsp/selectCustomerInfoAddressList.jsp"></c:import>
            <!-- // 주소  -->

            <!-- 예상구매정보 -->
            <div class="co_group">
                <div class="content_title">
                    <h2><spring:message code='crm.lbl.expcPurcInfo' /></h2>
                    <div class="title_btn">
                        <span class="co_open co_close"><span>상세내용 접기 </span></span>
                    </div>
                </div>
                <div class="co_view" style=";">
                    <div class="formarea" id="formarea" >
                        <table class="flist01">
                            <caption><spring:message code="global.lbl.basicInfo" /></caption>
                            <colgroup>
                                <col style="width:30%;">
                                <col style="">
                            </colgroup>
                            <tbody>
                                <tr>
                                    <th scope="row" class="required"><spring:message code='crm.lbl.infoType' /><!-- 정보유형 --></th>
                                    <td>
                                        <div class="f_text"><input type="text" id="infoTp" name="infoTp" data-json-obj="true" disabled="disabled" readonly/></div>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row" class="required"><spring:message code='crm.lbl.approchLocation' /><!-- 정보경로 --></th>
                                    <td>
                                        <div class="f_text"><input type="text" id="holdTp" name="holdTp" data-json-obj="true" disabled="disabled" readonly/></div>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row"></th>
                                    <td>
                                        <div class="f_text">
                                        <input type="text" id="holdDetlTpSeq" name="holdDetlTpSeq" data-json-obj="true" disabled="disabled" readonly/>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row"><spring:message code='crm.lbl.payMethod' /><!-- 지불방식 --></th>
                                    <td>
                                        <div class="f_text"><input type="text"  id="payTp" name="payTp" data-json-obj="true" disabled="disabled" readonly/></div>
                                    </td>
                                </tr>
                                <%-- <tr>
                                    <th scope="row"><spring:message code='crm.lbl.expectPureTime' /><!-- 예상구매시간코드/예상구매시간 --></th>
                                    <td>
                                        <div class="f_text"><input type="text" id="expcPurcHmCd" name="expcPurcHmCd" data-json-obj="true" /></div>
                                    </td>
                                </tr> --%>
                                <tr>
                                    <th scope="row"><spring:message code='crm.lbl.intentionCarline' /><!-- 의향차종/의향브랜드 --></th>
                                    <td>
                                        <div class="f_text"><input type="text" id="intrCarlineCd" name="intrCarlineCd" data-json-obj="true" disabled="disabled" readonly /></div>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row"><spring:message code='crm.lbl.intentionVariant' /><!-- 의향차관 --></th>
                                    <td>
                                        <div class="f_text"><input type="text" id="intrFscpModtpCd" name="intrFscpModtpCd" data-json-obj="true" disabled="disabled" readonly /></div>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row"><spring:message code='crm.lbl.intentionColor' /><!-- 의향색상 --></th>
                                    <td>
                                        <div class="f_text"><input type="text" id="intrColorCd" name="intrColorCd" data-json-obj="true" disabled="disabled"  readonly /></div>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row"><spring:message code='crm.lbl.plateNum' /><!-- 현지번호판예정 --></th>
                                    <td>
                                        <div class="form_float">
                                            <div class="form_left" style="width:16%" >
                                                <input id="localCarRegNoYn" name="localCarRegNoYn" type="checkbox" class="f_check" /><label for="localCarRegNoYn"></label>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>


            <!-- 협의정보 -->
            <div class="co_group">
                <div class="content_title">
                    <h2><spring:message code='crm.lbl.agrmntInfo' /></h2>  <!-- 협의정보 -->
                    <div class="title_btn">
                       <span class="co_open co_close"><span>상세내용 접기 </span></span>
                    </div>
                </div>
                <div class="co_view" style=";">
                    <div class="formarea" id="formarea" >
                        <table class="flist01">
                            <caption><spring:message code="global.lbl.basicInfo" /></caption>
                            <colgroup>
                                <col style="width:30%;">
                                <col style="">
                            </colgroup>
                            <tbody>
                                <tr>
                                    <th scope="row"><spring:message code='crm.lbl.estimateInfo' /><!-- 견적정보 --></th>
                                    <td>
                                        <div class="f_text"><input type="text" id="estimateCont" name="estimateCont" maxlength="50" data-json-obj="true" readonly /></div>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row"><spring:message code='crm.lbl.promotionCont' /><!-- 판촉내용 --></th>
                                    <td>
                                        <div class="f_text"><input type="text" id=salesCont name="salesCont" maxlength="100" data-json-obj="true" readonly /></div>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row"><spring:message code='global.lbl.remark' /><!-- 비고설명 --></th>
                                    <td>
                                        <div class="f_text"><input type="text" id="remark" name="remark" maxlength="100" data-json-obj="true" readonly /></div>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row"><spring:message code='crm.lbl.prsn' /><!-- 담당자 --></th>
                                    <td>
                                        <div class="f_text">
                                            <input type="text" id="mngScId" name="mngScId" data-json-obj="true" />
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row"><spring:message code='crm.lbl.leadStat' /><!-- 리드상태 --></th>
                                    <td>
                                        <div class="f_text"><input type="text" id="leadStatCd" name="leadStatCd" data-json-obj="true" readonly /></div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

            <input type="hidden" id="bhmcYn" name="bhmcYn"  value="N" class="form_input" data-json-obj="true" />
            <input type="hidden" id="btnCustSearch" />
            <input type="hidden" id="dlrCd" name="dlrCd"  data-json-obj="true" />
            <input type="hidden" id="seq" name="seq"  data-json-obj="true" />
            <input type="hidden" id="exhvFlakSeq" name="exhvFlakSeq" data-json-obj="true" />
            <input type="hidden" id="salesOpptSeq" />
            <input type="hidden" id="btnStepChange" />
            <input type="hidden" id="befLeadStatCd" />
            <input type="hidden" id="oldLeadStatCd" />
            <input type="hidden" id="leadType" />
            <input type="hidden" id="validGradeCd" />
            <input type="hidden" id="mathDocTp" />
            <input type="hidden" id="beforeMngScId" />

        </section>
    </div><!--  salesOpptProcForm End  -->

    <!-- 버튼 2개  -->
    <div class="con_btnarea btncount2">
        <div><span class="btnd1t2" id="btnCancel"><spring:message code="global.btn.cancel" /><!-- 취소 --></span></div>
        <div><span class="btnd1" id="btnNextStepBefore"><spring:message code="global.btn.save" /><!-- 저장 --></span></div>
        <!-- <input type="hidden" id="btnNextStep" /> -->
    </div>
    <!-- //버튼  -->
    <section class="lay_pop" id="checkPwDiv">
        <div class="lay_title">
            <h1><spring:message code='global.title.addInfo' /><!-- 추가정보 --></h1>
        </div>
        <div class="lay_cont5" id="">
            <div class="formarea">
                <table class="flist01">
                    <caption></caption>
                    <colgroup>
                        <col style="width:35%;">
                        <col style="">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th scope="row"><spring:message code='crm.lbl.prsn' /></th> <!-- 담당자 -->
                            <td>
                                <input id="usersRoleCrmR03" name="usersRoleCrmR03" type="text" class="form_comboBox" />
                            </td>
                        </tr>
                        <tr>
                            <th scope="row"><spring:message code="global.lbl.usrPw" /></th> <!-- 비밀번호 -->
                            <td>
                                <!-- <div class="f_text"><input id="usrPw" name="usrPw" type="password" class=""  data-json-obj="true" /></div> -->
                                <div class="f_text"><input id="usrPw" name="usrPw" type="password" class="form_input form_readonly" readonly /></div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="btnarea">
            <span class="btnd1t2" onclick="layerClose('#checkPwDiv')"><spring:message code='global.btn.cancel' /><!-- 취소 --></span>
            <span class="btnd1" id="btnMngScSet" ><spring:message code='crm.btn.submit' /><!-- 제출 --></span>
        </div>
    </section>

    <section class="lay_pop" id="ctlFailSendBeforeDiv">
        <div class="lay_title">
            <h1><spring:message code='global.title.addInfo' /><!-- 추가정보 --></h1>
        </div>
        <div class="lay_cont5" id="">
            <div class="formarea">
                <table class="flist01">
                    <caption></caption>
                    <colgroup>
                        <col style="width:35%;">
                        <col style="">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th scope="row"><spring:message code='global.lbl.handler' /><!-- 조작인 --></th>
                            <td>
                                ${loginUsrNm} (${loginUsrId})
                            </td>
                        </tr>
                        <tr>
                            <th scope="row"><spring:message code="global.lbl.usrPw" /></th> <!-- 비밀번호 -->
                            <td>
                                <div class="f_text"><input id="usrPwGotoStep04" name="usrPwGotoStep04" type="password" /></div><!--  -->
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="btnarea">
            <span class="btnd1t2" onclick="layerClose('#ctlFailSendBeforeDiv')"><spring:message code='global.btn.cancel' /><!-- 취소 --></span>
            <span class="btnd1" id="btnCtlGotoStep04" ><spring:message code="global.btn.save" /><!-- 저장 --></span>
        </div>
    </section>

</section>

<div id="docu_prev" ><spring:message code="global.btn.pre" /><!-- 이전 --></div>
<div id="docu_top" style="display:none">TOP</div>


 <script type="text/javascript">
 var dlrCd  = "${dlrCd}";    // 딜러코드
 var dlrNm  = "${dlrNm}";    // 딜러
 var userId = "${userId}";   // 사용자코드
 var userNm = "${userNm}";   // 사용자

 var mngScIdCtrl = "${mngScIdCtrl}";
 mngScIdCtrl = "N";
 var salesOpptPwYn = "${salesOpptPwYn}";

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
 var traceMthCdList = [];
 var traceMthCdMap = [];

 var activeGradeCdList = [];
 var activeGradeCdMap = [];

 var custTpList = [];
 var custTpMap = [];
 var infoTpList = [];
 var payTpList = [];
 var expcPurcHmCdList = [];

 var traceGradeCdList = [];
 var traceGradeCdMap = [];
 var validGradeCdList = [];
 var invalidCauCdList = [];
 var validGradeCdMap = [];
 var invalidCauCdMap = [];


 var bizcondCdList   = [];
 var mathDocTpList = [];

 var usersRoleCrmR02 = [];
 var usersRoleCrmR03 = [];
 var usersRoleCrmR17 = [];
 var usersRoleCrmR18 = [];

 var traceGrdMap = [];
 var searchAddr = false;
 var zipCodeSearchPopupWin;

 <c:forEach var="obj" items="${traceGrdList}">
 traceGrdMap["${obj.cmmCd}"] = "${obj.traceIvalDay}";
 </c:forEach>

 <c:forEach var="obj" items="${usersRoleCrmR02}">
 usersRoleCrmR02.push({"usrId":"${obj.usrId}", "usrNm":"${obj.usrNm}"});
 </c:forEach>

 <c:forEach var="obj" items="${usersRoleCrmR03}">
 usersRoleCrmR03.push({"usrId":"${obj.usrId}", "usrNm":"${obj.usrNm}"});
 </c:forEach>

 <c:forEach var="obj" items="${usersRoleCrmR17}">
 usersRoleCrmR17.push({"usrId":"${obj.usrId}", "usrNm":"${obj.usrNm}"});
 </c:forEach>

 <c:forEach var="obj" items="${usersRoleCrmR18}">
 usersRoleCrmR18.push({"usrId":"${obj.usrId}", "usrNm":"${obj.usrNm}"});
 </c:forEach>

 <c:forEach var="obj" items="${mathDocTpList}">
    mathDocTpList.push({"cmmCd":"${obj.cmmCd}", "cmmCdNm":"${obj.cmmCdNm}", "useYn":"${obj.useYn}"});
 </c:forEach>

 <c:forEach var="obj" items="${bizcondCdList}">
    bizcondCdList.push({"cmmCd":"${obj.cmmCd}", "cmmCdNm":"${obj.cmmCdNm}", "useYn":"${obj.useYn}"});
 </c:forEach>

<c:forEach var="obj" items="${traceMthCdList}">
 traceMthCdList.push({"cmmCd":"${obj.cmmCd}", "cmmCdNm":"${obj.cmmCdNm}", "useYn":"${obj.useYn}"});
 traceMthCdMap["${obj.cmmCd}"] = "${obj.cmmCdNm}";
</c:forEach>

<c:forEach var="obj" items="${traceGradeCdList}">
 traceGradeCdList.push({"cmmCd":"${obj.cmmCd}", "cmmCdNm":"${obj.cmmCdNm}", "useYn":"${obj.useYn}"});
 traceGradeCdMap["${obj.cmmCd}"] = "${obj.cmmCdNm}";
</c:forEach>

<c:forEach var="obj" items="${validGradeCdList}">
 validGradeCdList.push({"cmmCd":"${obj.cmmCd}", "cmmCdNm":"${obj.cmmCdNm}", "useYn":"${obj.useYn}"});
 validGradeCdMap["${obj.cmmCd}"] = "${obj.cmmCdNm}";
</c:forEach>

<c:forEach var="obj" items="${invalidCauCdList}">
 invalidCauCdList.push({"cmmCd":"${obj.cmmCd}", "cmmCdNm":"${obj.cmmCdNm}", "useYn":"${obj.useYn}"});
 invalidCauCdMap["${obj.cmmCd}"] = "${obj.cmmCdNm}";
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
     expcPurcHmCdList.push({"cmmCd":"${obj.cmmCd}" , "cmmCdNm":"${obj.cmmCdNm}"});
 </c:forEach>

 <c:forEach var="obj" items="${payTpList}">
     payTpList.push({"cmmCd":"${obj.cmmCd}" , "cmmCdNm":"${obj.cmmCdNm}"});
 </c:forEach>

 <c:forEach var="obj" items="${infoTpList}">
     infoTpList.push({"cmmCd":"${obj.cmmCd}" , "cmmCdNm":"${obj.cmmCdNm}"});
 </c:forEach>

 <c:forEach var="obj" items="${custTpList}">
     custTpList.push({"cmmCd":"${obj.cmmCd}" , "cmmCdNm":"${obj.cmmCdNm}"});
     custTpMap["${obj.cmmCd}"] = "${obj.cmmCdNm}";
 </c:forEach>

 <c:forEach var="obj" items="${leadStatCdList}">
     leadStatCdList.push({"cmmCd":"${obj.cmmCd}" , "cmmCdNm":"${obj.cmmCdNm}"});
     leadStatCdMap["${obj.cmmCd}"] = "${obj.cmmCdNm}";
 </c:forEach>

 <c:forEach var="obj" items="${sexCdList}">
     sexCdList.push({"cmmCd":"${obj.cmmCd}" , "cmmCdNm":"${obj.cmmCdNm}"});
     sexCdMap["${obj.cmmCd}"] = "${obj.cmmCdNm}";
 </c:forEach>

 <c:forEach var="obj" items="${activeGradeCdList}">
     activeGradeCdList.push({"cmmCd":"${obj.cmmCd}" , "cmmCdNm":"${obj.cmmCdNm}"});
     activeGradeCdMap["${obj.cmmCd}"] = "${obj.cmmCdNm}";
 </c:forEach>

 <c:forEach var="obj" items="${infoPathCdList}">
     infoPathCdList.push({"cmmCd":"${obj.cmmCd}" , "cmmCdNm":"${obj.cmmCdNm}"});
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
     addrTpList.push({"cmmCd":"${obj.cmmCd}" , "cmmCdNm":"${obj.cmmCdNm}"});
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
        // 숫자
        var onlyNum = new RegExp("[^0-9]","i");
        $(".numberic").keyup(function(e)
        {
            var content = $(this).val();
            if(content.match(onlyNum)){
                $(this).val('');
            }
        });

        // 숫자와 알파벳
        var onlyNumAlpha = new RegExp("[^A-Z0-9]");
        $(".numberandalpha").keyup(function(e)
        {
            var contents = $(this).val();
            if(onlyNumAlpha.test(contents)){
                $(this).val('');
            }
        });

     // 조직기구코드
        var corpNumChk = new RegExp("[^a-zA-Z0-9-]");
        $(".corpNumChk").keyup(function(e)
        {
            var contents = $(this).val();
            if(corpNumChk.test(contents)){
                $(this).val('');
            }
        });

        // 증거유형 + 증거번호 후 고객 체크 (자동)
        $(".getCustMathDocDupByKey").focusout(function(){
            var idValue = $(this).context.id;
            getCustMathDocDupByKey(idValue);
        });


     // 이메일   /^[A-Za-z0-9+]*$/  /[a-zA-Z0-9]/g;
       $(".form_email").keyup(function(e)
       {
           var onlyEmail = /[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;

           var contents = $(this).val();
           if(onlyEmail.test(contents)){
           }
       });

       // 고객명에서 ObKeyDown
       $(".onKey_down").keydown(function(e){
           if (e.keyCode == 13) {
               if($(this).val() != "") {
                   $(".custSearch").click();
               }
           }
       });

       // 고객명에서 ObKeyDown 연계인 검색
       $(".onKey_down_relCust").keydown(function(e){
           if (e.keyCode == 13) {
               if($(this).val() != "") {
                   $(".relCustSearch").click();
               }
           }
       });

       // 업종                  bizcondCdC
       $("#bizcondCdC").kendoExtDropDownList({
           dataTextField:"cmmCdNm"
           , dataValueField:"cmmCd"
           , optionLabel:"<spring:message code='global.lbl.check'/>"
           , dataSource:dms.data.cmmCdFilter(bizcondCdList)
           , index:0
           , enable:true
       });

       // 신분증유형            mathDocTpC       (CRM024)
       $("#mathDocTpC").kendoExtDropDownList({
           dataTextField:"cmmCdNm"
           , dataValueField:"cmmCd"
           , optionLabel:"<spring:message code='global.lbl.check'/>"
           , dataSource:dms.data.cmmCdFilter(mathDocTpList)
           , index:0
           , enable:true
           , change:function(){
               getCustMathDocDupByKey();
           }
       });

    // 고객확보유형1      holdTp      (CRM008)
       $("#holdTp").kendoExtDropDownList({
          dataTextField:"cmmCdNm"
          , dataValueField:"cmmCd"
          , dataSource:dms.data.cmmCdFilter(holdTpList)
          , optionLabel:"<spring:message code='global.lbl.check'/>"
          , filtering:function(e){
              var filter = e.filter;
          }
          ,select:onSelectSearchHoldTp
      });

       // 고객확보유형2      holdDetlTpSeq   (CRM***)
       $("#holdDetlTpSeq").kendoExtDropDownList({
          dataTextField:"holdDetlTpNm"
          , dataValueField:"holdSeq"
          , optionLabel:"<spring:message code='global.lbl.check'/>"
          , enable:false
       });

       $("#infoTp").kendoExtDropDownList({
           dataTextField:"cmmCdNm"
           , dataValueField:"cmmCd"
           , dataSource:dms.data.cmmCdFilter(infoTpList)
           , index:1
       });

       $("#custTp").kendoExtDropDownList({
           dataTextField:"cmmCdNm"
           , dataValueField:"cmmCd"
           , dataSource:custTpList
           , index:0
           , change:function(){
               var selcmmCd = this.dataItem(this.select()).cmmCd;
               if (selcmmCd == "01"){
                   $("#custTp").data("kendoExtDropDownList").value(selcmmCd);
               } else {
                   $("#custTpC").data("kendoExtDropDownList").value(selcmmCd);
                   $(".personalTr").hide();
                   $(".corporateTr").show();
               }
           }
       });

       $("#custTpC").kendoExtDropDownList({
           dataTextField:"cmmCdNm"
           , dataValueField:"cmmCd"
           , dataSource:dms.data.cmmCdFilter(custTpList)
           , index:0
           , change:function(){
               var selcmmCd = this.dataItem(this.select()).cmmCd;
               if (selcmmCd == "01"){
                   $("#custTp").data("kendoExtDropDownList").value(selcmmCd);
                   $(".personalTr").show();
                   $(".corporateTr").hide();
               } else {
                   $("#custTpC").data("kendoExtDropDownList").value(selcmmCd);
               }
           }
       });

       $("#payTp").kendoExtDropDownList({
           dataTextField:"cmmCdNm"
           , dataValueField:"cmmCd"
           , optionLabel:"<spring:message code='global.lbl.check'/>"
           , dataSource:dms.data.cmmCdFilter(payTpList)
           , index:0
       });

       /**
        * 차종 콤보박스
        */
       $("#intrCarlineCd").kendoExtDropDownList({
           dataTextField:"carlineNm"
          ,dataValueField:"carlineCd"
          ,dataSource:carlineCdList
          ,optionLabel:"<spring:message code='global.lbl.check'/>"
          ,filtering:function(e){
              var filter = e.filter;
          }
          ,select:onSelectSearchCarlineCd
       });

       /**
        * 차관 콤보박스
        */
        $("#intrFscpModtpCd").kendoExtDropDownList({
            dataTextField:"modelNm"
           ,dataValueField:"modelCd"
           //,filter:"contains"
           ,optionLabel:"<spring:message code='global.lbl.check'/>"
        });
        $("#intrFscpModtpCd").data("kendoExtDropDownList").enable(false);


       $("#intrColorCd").kendoExtDropDownList({
           dataTextField:"extColorNm"
           , dataValueField:"extColorCd"
           , optionLabel:"<spring:message code='global.lbl.check'/>"
           , dataSource:colorCdList
           , index:0
       });

       $("#mngScId").kendoExtDropDownList({
           dataTextField:"usrNm"
           , dataValueField:"usrId"
           , optionLabel:"<spring:message code='global.lbl.check'/>"
           , dataSource:mngScIdList
           , index:0
           , filtering:function(e){
               var filter = e.filter;
           }
       });
       $("#mngScId").data("kendoExtDropDownList").enable(false);

       $("#leadStatCd").kendoExtDropDownList({
           dataTextField:"cmmCdNm"
           , dataValueField:"cmmCd"
           , optionLabel:"<spring:message code='global.lbl.check'/>"
           , dataSource:dms.data.cmmCdFilter(leadStatCdList)
           , index:0
       });
       $("#leadStatCd").data("kendoExtDropDownList").enable(false);

       $("#sexCd").kendoExtDropDownList({
           dataTextField:"cmmCdNm"
           , dataValueField:"cmmCd"
           , optionLabel:"<spring:message code='global.lbl.check'/>"
           , dataSource:dms.data.cmmCdFilter(sexCdList)
           , index:0
       });

        $("#usersRoleCrmR03").kendoExtDropDownList({
            dataTextField:"usrNm"
            , dataValueField:"usrId"
            , dataSource:usersRoleCrmR03
            , index:0
            , optionLabel:"<spring:message code='global.lbl.check'/>"
            , filtering:function(e){
                var filter = e.filter;
            }
            , change:function(){
                var sel = this.dataItem(this.select()).usrId;
                var mngScId = $("#mngScId").data("kendoExtDropDownList").value();
                var bhmcYn = $("#bhmcYn").val();
                var beforeMngScId = $("#beforeMngScId").val();
                if (salesOpptPwYn == "Y"){
                    if ((sel != '') && (sel != beforeMngScId )){
                        $("#usrPw").attr("readonly", false);
                        $("#usrPw").removeClass("form_readonly");
                    } else {
                        $("#usrPw").attr("readonly", true);
                        $("#usrPw").addClass("form_readonly");
                    }
                }
            }
        });

        if ( $("#bhmcYn").val() == "Y") {
            //판매기회 실행 (ROLE_CRM_R_03)
              $("#usersRoleCrmR03").data("kendoExtDropDownList").setDataSource(usersRoleCrmR03);
        } else {
              $("#usersRoleCrmR03").data("kendoExtDropDownList").setDataSource(usersRoleCrmR18);
        }


        var options = parent.editCustPopupWindow.options.content.data;

        $("#befLeadStatCd").val(options.leadStatCd); //주의 실재 이전 단계가 아니라 지금 단계입니다. 서비스에서 단계 이력을 남기기 위한 용도임.
        $("#oldLeadStatCd").val(options.befLeadStatCd);
        $("#leadType").val(options.leadType);
        $("#validGradeCd").val(options.validGradeCd);
        setHeaderTitle();

       // 버튼 - 이전
       $("#docu_prev").bind("click", function()
       {
           parent.$("#formarea").show();
           if ($("#content_detail").css("display") == "block") { goMain(); }
       });

       //타이틀
       $("#header_title").html("<spring:message code='crm.menu.failCustomerDB' />"); //잠재고객 DB

       //주소리스트
       $("#btnAddrSearch").click(function(){
           if(!searchAddr){
               /* subListData.read(); */
               searchAddr = true;
           }
        });

       $("#btnCustSearch").click(function(){
           var param = {};
           param["sCustNo"] = $("#custNo").val();

           mob.loading.show();
           $.ajax({
               url:"<c:url value='/crm/cso/salesOpptProcessMgmt/selectSalesOpptProcessMgmt.do' />"
               , data:JSON.stringify(param)
               , type:'POST'
               , dataType:'json'
               , contentType:'application/json'
               , error:function(jqXHR,status,error){
                   mob.loading.hide();
                   console.log(jqXHR);

                   mob.notification.error("<spring:message code='global.err.mobSystemError'/>");

               }
           }).done(function(result) {
               mob.loading.hide();
               var leadStatCd = result.data[0].leadStatCd;
               var bhmcYn = result.data[0].bhmcYn;

               $("#bhmcYn").val(result.data[0].bhmcYn);

               $("#dlrCd").val(result.data[0].dlrCd);

               $("#custCd").val(result.data[0].custCd);
               $("#custNm").val(result.data[0].custNm);
               $("#custNmSearch").val(result.data[0].custNm);
               $("#hpNo").val(result.data[0].hpNo);
               $("#telNo").val(result.data[0].telNo);
               $("#officeTelNo").val(result.data[0].officeTelNo);
               $("#wechatId").val(result.data[0].wechatId);
               $("#emailNm").val(result.data[0].emailNm);
               $("#infoTp").data("kendoExtDropDownList").value(result.data[0].infoTp);

               $("#holdTp").data("kendoExtDropDownList").value(result.data[0].holdTp);
               if ( dms.string.isNotEmpty(result.data[0].holdDetlTpSeq) ) {
                   onSelectSearchHoldTpSet(result.data[0].holdTp);
                   $("#holdDetlTpSeq").data("kendoExtDropDownList").value(result.data[0].holdDetlTpSeq);
               }

               $("#payTp").data("kendoExtDropDownList").value(result.data[0].payTp);
               $("#intrCarlineCd").data("kendoExtDropDownList").value(result.data[0].intrCarlineCd);

               onSelectSearchCarlineCdSet(result.data[0].intrCarlineCd);
               $("#intrFscpModtpCd").data("kendoExtDropDownList").value(result.data[0].intrFscpModtpCd);

               $("#intrColorCd").data("kendoExtDropDownList").value(result.data[0].intrColorCd)
               $("#estimateCont").val(result.data[0].estimateCont);
               $("#salesCont").val(result.data[0].salesCont);
               $("#remark").val(result.data[0].remark);
               $("#mngScId").data("kendoExtDropDownList").value(result.data[0].mngScId);
               $("#beforeMngScId").val(result.data[0].mngScId);
               $("#leadStatCd").data("kendoExtDropDownList").value(leadStatCd);
               $("#befLeadStatCd").val(leadStatCd);
               $("#sexCd").data("kendoExtDropDownList").value(result.data[0].sexCd);
               $("#seq").val(result.data[0].seq);
               $("#exhvFlakSeq").val(result.data[0].exhvFlakSeq);

               if (result.data[0].localCarRegNoYn == 'Y'){
                   $("#localCarRegNoYn").attr("checked", true);
                   $("#localCarRegNoYn").attr("disabled","disabled");
               } else {
                   $("#localCarRegNoYn").attr("checked", false);
                   $("#localCarRegNoYn").attr("disabled","disabled");
               }


               $("#custTp").data("kendoExtDropDownList").value(result.data[0].custTp);
               $("#custTpC").data("kendoExtDropDownList").value(result.data[0].custTp);
               $("#custNmSearchC").val(result.data[0].custNm);
               $("#custNoC").val(result.data[0].custNo);
               console.log("custTp: " + result.data[0].custTp);
               if (result.data[0].custTp == "01") {
                   $(".personalTr").show();
                   $(".corporateTr").hide();
                   $("#mathDocTp").val(result.data[0].mathDocTp);
                   $("#ssnCrnNoC").val(result.data[0].ssnCrnNo);
               } else {
                   $("#mathDocTpC").data("kendoExtDropDownList").value(result.data[0].mathDocTp);
                   $("#mathDocTp").val(result.data[0].mathDocTp);
                   $("#ssnCrnNoC").val(result.data[0].ssnCrnNo);
                   $("#bizcondCdC").data("kendoExtDropDownList").value(result.data[0].bizcondCd);
                   $("#officeTelNoC").val(result.data[0].officeTelNo);
                   $("#wechatIdC").val(result.data[0].wechatId);
                   // 연계인 정보 셋팅
                   $("#relCustNm").val(result.data[0].purcMngNm);
                   $("#relCustHpNo").val(result.data[0].hpNo);

                   $(".personalTr").hide();
                   $(".corporateTr").show();
               }

               if (result.data[0].custCd == "02") {
                   $("#custTp").data("kendoExtDropDownList").enable(false);
                   $("#custTpC").data("kendoExtDropDownList").enable(false);
               }

               // 상태에 따른 처리
               if (leadStatCd == "00"
                   || leadStatCd =="01"
                   || leadStatCd =="02"
                   || leadStatCd =="03"
                   || leadStatCd =="04"
                   || leadStatCd =="08"
                   || leadStatCd =="09"
               ) {
                   $("#mngScId").data("kendoExtDropDownList").enable(true);

                   if (leadStatCd == "01"
                       || leadStatCd == "02"
                   ) {
                       //OB실행 VIEW-D-10322
                       $("#mngScId").data("kendoExtDropDownList").setDataSource(usersRoleCrmR18);
                   } else {
                       //판매기회 실행  VIEW-D-10321
                       $("#mngScId").data("kendoExtDropDownList").setDataSource(usersRoleCrmR03);
                   }

                   if (leadStatCd == "08"
                       || leadStatCd == "09"
                   ) {

                       var loginUsrId = "${loginUsrId}";
                       var mngScIdCtrl = "${mngScIdCtrl}";

                       if (mngScIdCtrl == "Y") {
                           $("#mngScId").data("kendoExtDropDownList").enable(true);
                       } else {
                           $("#mngScId").data("kendoExtDropDownList").enable(false);
                       }
                   }

               }
           });
        });

       // 고객명, 휴대전화 입력 후 고객 체크 (자동)
       $(".getCustDupByKey").focusout(function(){
           var idValue = $(this).context.id;
           getCustDupByKey(idValue);
       });

       // 고객조회
       //var custSearch = function() {
        $(".custSearch").click(function(){

            var custTp = $("#custTp").data("kendoExtDropDownList").value();
            var custNm = $("#custNmSearch").val();
            if (custTp == "02") {
                custNm = $("#custNmSearchC").val();
            }

            popupWindow = dms.window.popup({
                windowId:"customerSearchPopupMain"
                , title:"<spring:message code='global.title.custSearch' />"   // 고객 조회
                , content:{
                    url:"<c:url value='/crm/cif/customerInfo/selectCustSearchPopup.do'/>"
                    , data:{
                        "autoBind":true
                        , "custNm":custNm
                        , "type"  :null
                        , "callbackFunc":function(data){
                            if (data.length >= 1) {


                                if ( dms.string.isNotEmpty(data[0].custNo) ) {
                                    $("#custNo").val(data[0].custNo);
                                }
                                popupWindow.close();
                                $("#btnCustSearch").click();
                            }
                        }
                    }
                }
            })
        });

        // 고객조회
         $(".relCustSearch").click(function(){

             var iframe = "selectEditSalesOpptProcessPopup";
             var autoBind = "Y";
             var type = "";
             var custTp = "01";  // 개인
             var custCd = "";
             var custNm = $("#relCustNmSearch").val();
             var dlrMbrYn = "";

             parent.fn_relCustSearchPopUp(iframe, autoBind, type, custTp, custCd, custNm, dlrMbrYn);

         });

        // 닫기 버튼.
        $("#btnCancel").kendoButton({
            click:function(e){
                // 팝업 닫기.
                parent.$("#formarea").show();
                parent.editCustPopupWindow.close();
            }
        });

        $("#btnNextStepBefore").kendoButton({
            click:function(e) {

                var type = $("#leadType").val();

                if (type == "01") {

                    var custNo = $("#custNo").val();
                    var mngScId = $("#mngScId").data("kendoExtDropDownList").value();
                    var beforeMngScId = $("#beforeMngScId").val();

                    var infoTp = $("#infoTp").data("kendoExtDropDownList").value();
                    var holdTp = $("#holdTp").data("kendoExtDropDownList").value();

                    if ( dms.string.isEmpty(infoTp) ) {
                        mob.notification.warning("<spring:message code='crm.lbl.infoType' var='returnMsg' /><spring:message code='global.info.required.field' arguments='${returnMsg}' />");
                        return false;
                    };

                    if ( dms.string.isEmpty(holdTp) ) {
                        mob.notification.warning("<spring:message code='crm.lbl.approchLocation' var='returnMsg' /><spring:message code='global.info.required.field' arguments='${returnMsg}' />");
                        return false;
                    };

                    // 고객번호
                    if ( dms.string.isEmpty(custNo) ) {
                        mob.notification.info("<spring:message code='global.lbl.customer' var='returnMsg' /><spring:message code='global.info.chkSelectItemMsg' arguments='${returnMsg}' />");
                        return false;
                    };

                    $("#leadStatCd").data("kendoExtDropDownList").value("01");
                    $("#mngScId").data("kendoExtDropDownList").value(' ');
                    $("#btnStepChange").click();

                } else if (type == "02") {

                    var custNo = $("#custNo").val();
                    var mngScId = $("#mngScId").data("kendoExtDropDownList").value();
                    var beforeMngScId = $("#beforeMngScId").val();

                    var infoTp = $("#infoTp").data("kendoExtDropDownList").value();
                    var holdTp = $("#holdTp").data("kendoExtDropDownList").value();

                    if ( dms.string.isEmpty(infoTp) ) {
                        mob.notification.warning("<spring:message code='crm.lbl.infoType' var='returnMsg' /><spring:message code='global.info.required.field' arguments='${returnMsg}' />");
                        return false;
                    };

                    if ( dms.string.isEmpty(holdTp) ) {
                        mob.notification.warning("<spring:message code='crm.lbl.approchLocation' var='returnMsg' /><spring:message code='global.info.required.field' arguments='${returnMsg}' />");
                        return false;
                    };

                    // 고객번호
                    if ( dms.string.isEmpty(custNo) ) {
                        mob.notification.info("<spring:message code='global.lbl.customer' var='returnMsg' /><spring:message code='global.info.chkSelectItemMsg' arguments='${returnMsg}' />");
                        return false;
                    };

                    // 담당자 확인
                    if ( dms.string.isEmpty(mngScId)) {
                       mob.notification.info("<spring:message code='crm.lbl.prsn' var='returnMsg' /><spring:message code='global.info.chkSelectItemMsg' arguments='${returnMsg}' /> ");
                       return false;
                    };

                    $("#leadStatCd").data("kendoExtDropDownList").value("02");
                    // div 띄우기
                    pushLayer('#checkPwDiv');

                } else if (type == "04") {

                    var mngScId = $("#mngScId").data("kendoExtDropDownList").value();
                    var beforeMngScId = $("#beforeMngScId").val();

                    if (salesOpptPwYn == "Y"){
                        if ((beforeMngScId != '') && (mngScId != beforeMngScId)) {
                            pushLayer('#ctlFailSendBeforeDiv');
                        } else {
                            $("#btnCtlGotoStep04").click();
                        }
                    } else {
                        $("#btnCtlGotoStep04").click();
                    }

                }
            }
        });


        //리드상태 - 추적추진
          $("#btnCtlGotoStep04").click(function(e){

              var custNo = $("#custNo").val();
              var mngScId = $("#mngScId").data("kendoExtDropDownList").value();
              var beforeMngScId = $("#beforeMngScId").val();
              var oldLeadStatCd = $("#oldLeadStatCd").val();

              var infoTp = $("#infoTp").data("kendoExtDropDownList").value();
              var holdTp = $("#holdTp").data("kendoExtDropDownList").value();

              var loginUsrId = "${loginUsrId}";
              var mngScIdCtrl = "${mngScIdCtrl}";

              // 비밀번호 체크 시작
              if (salesOpptPwYn == "Y"){

                  if ((beforeMngScId != '') && (mngScId != beforeMngScId )){
                      var usrPwGotoStep04 = $("#usrPwGotoStep04").val();
                      if (dms.string.isEmpty(usrPwGotoStep04)) {
                          mob.notification.info("<spring:message code='crm.info.emptyPw' />");
                          return false;
                      }

                      var fnPasschk = fn_passwdChk(usrPwGotoStep04);
                      if (fnPasschk == false){
                          mob.notification.warning("<spring:message code='crm.err.invalid.pw'/>");
                          return false;
                      }
                  }

              }

              var validGradeCd = $("#validGradeCd").val();

              if (validGradeCd != "02") {
                  // 유효성 판단을 먼저 진행해 주십시요.
                  mob.notification.info("<spring:message code='crm.info.validCheckRequired'/>");
                  return false;
              }

              if ( dms.string.isEmpty(infoTp) ) {
                  mob.notification.warning("<spring:message code='crm.lbl.infoType' var='returnMsg' /><spring:message code='global.info.required.field' arguments='${returnMsg}' />");
                  return false;
              };

              if ( dms.string.isEmpty(holdTp) ) {
                 mob.notification.warning("<spring:message code='crm.lbl.approchLocation' var='returnMsg' /><spring:message code='global.info.required.field' arguments='${returnMsg}' />");
                  return false;
              };

              // 고객번호
              if ( dms.string.isEmpty(custNo) ) {
                  mob.notification.info("<spring:message code='global.lbl.customer' var='returnMsg' /><spring:message code='global.info.chkSelectItemMsg' arguments='${returnMsg}' />");
                  return false;
              };

              // 담당자 확인
              if ( dms.string.isEmpty(mngScId)) {
                  mob.notification.info("<spring:message code='crm.lbl.prsn' var='returnMsg' /><spring:message code='global.info.chkSelectItemMsg' arguments='${returnMsg}' /> ");
                  return false;
              };

              $("#leadStatCd").data("kendoExtDropDownList").value("04");
              $("#btnStepChange").click();

          });


        $("#btnStepChange").click(function(){

            var salesOpptProcParam = {};

            salesOpptProcParam["leadStatCd"] = $("#leadStatCd").data("kendoExtDropDownList").value();
            salesOpptProcParam["befLeadStatCd"] = $("#befLeadStatCd").val(); //주의 실재 이전 단계가 아니라 지금 단계입니다. 서비스에서 단계 이력을 남기기 위한 용도임.
            salesOpptProcParam["mngScId"] = $("#mngScId").data("kendoExtDropDownList").value();
            salesOpptProcParam["seq"] = $("#salesOpptSeq").val();
            salesOpptProcParam["custNo"] = $("#custNo").val();
            salesOpptProcParam["evalCd"] = "01";   // 심사대기(01), 불통과(02)
            salesOpptProcParam["submitDt"] = new Date();

            // 20170511 hg
            if ($("#befLeadStatCd").val() == "09") {
                salesOpptProcParam["reviveOppt"] = "Y";
                salesOpptProcParam["reSetYn"] = "N";
            }

            $.ajax({
                url:"<c:url value='/mob/crm/cso/salesOpptProcessMgmt/updateSalesOpptProcessMgmt.do' />"
                ,data:JSON.stringify(salesOpptProcParam)
                ,type:'POST'
                ,dataType:'json'
                ,contentType:'application/json'
                ,error:function(jqXHR,status,error){
                    mob.notification.error(jqXHR.responseJSON.errors[0].errorMessage);
                    mob.loading.hide();
                },
                success:function(result){
                    mob.loading.hide();

                    mob.notification.success("<spring:message code='global.info.success'/>");

                    parent.$("#formarea").show();

                    var data = [];
                    data.push(result);
                    options.callbackFunc(data);
                    parent.editCustPopupWindow.close();
                }
            }).done(function(result) {

                parent.$("#formarea").show();
            });
        });

        $("#btnCheckPwd").kendoButton({
            click:function(e) {
                var usrPw = $("#usrPw").val();

                if (dms.string.isEmpty(usrPw)) {
                    mob.notification.info("<spring:message code='global.lbl.usrPw' var='returnMsg' /><spring:message code='global.info.chkSelectItemMsg' arguments='${returnMsg}' />");
                    return false;
                }
                var pwParam = {};
                pwParam["sPassword"] = hex_sha2(usrPw);
                $.ajax({
                    url:"<c:url value='/crm/cso/salesOpptProcessMgmt/selectUserPassWordCheck.do' />"
                    ,data:JSON.stringify(pwParam)
                    ,type:'POST'
                    ,dataType:'json'
                    ,contentType:'application/json'
                    ,error:function(jqXHR,status,error){
                        console.log("error !!!");
                        mob.notification.error(jqXHR.responseJSON.errors[0].errorMessage);
                    }
                    ,success:function(result){
                    // success:function(jqXHR, textStatus) {


                        if (result === true) {
                            mob.notification.success("<spring:message code='global.info.success'/>");
                            layerClose("#checkPwDiv");
                            $("#btnStepChange").click();
                        } else {
                            mob.notification.success("<spring:message code='global.err.invalid.idpw'/>");
                        }
                    }
                });
            }
        });


        $("#btnMngScSet").click(function(){
            var usersRoleCrmR03 = $("#usersRoleCrmR03").data("kendoExtDropDownList").value();
            if (dms.string.isEmpty(usersRoleCrmR03)) {
                mob.notification.info("<spring:message code='crm.lbl.prsn' var='returnMsg' /><spring:message code='global.info.chkSelectItemMsg' arguments='${returnMsg}' /> ");
                return false;
            }

            // 비밀번호 체크 시작
            if (salesOpptPwYn == "Y"){

                var mngScId = $("#usersRoleCrmR03").data("kendoExtDropDownList").value();
                var beforeMngScId = $("#beforeMngScId").val();

                if ((beforeMngScId != '') && (mngScId != beforeMngScId )){
                    var usrPw = $("#usrPw").val();
                    if (dms.string.isEmpty(usrPw)) {
                        mob.notification.info("<spring:message code='crm.info.emptyPw' />");
                        return false;
                    }

                    var fnPasschk = fn_passwdChk(usrPw);
                    if (fnPasschk == false){
                        mob.notification.warning("<spring:message code='crm.err.invalid.pw'/>");
                        return false;
                    }
                }
            }

            $("#mngScId").data("kendoExtDropDownList").value(usersRoleCrmR03);
            $("#btnStepChange").click();

        });

        $("#salesOpptSeq").val(options.salesOpptSeq);

        if (options.autoBind) {
            $("#custNo").val(options.custNo);
            $("#btnCustSearch").click();
            subListData.read();
        }

        //버튼 - 주소  추가
        $("#btnAddAddress").click(function(){
              zipCodeSearchPopupWin = mob.window.popup({
                  windowId:"zipCodeSearchPopupMain"
                  , content:{
                      url:"<c:url value='/mob/cmm/sci/commonPopup/selectZipCodePopup.do'/>"
                      , data:{
                          "autoBind":false
                          ,"usrNm":""
                          , "callbackFunc":function(data){
                              if (data != null || data != 'undefined') {
                                  addrAddItemSubList1(data);
                              }
                          }
                      }
                  }
              });
        });
    }); //end document ready


    function fn_passwdChk(pwd){
        // 비밀 번호 체크 시작
        var usrPw = hex_sha2(pwd);
        var pwParam = {};

        pwParam["sPassword"] = usrPw;


        var responseJson = dms.ajax.getJson({
            url:"<c:url value='/crm/cso/salesOpptProcessMgmt/selectUserPassWordCheck.do' />"
            ,data:JSON.stringify(pwParam)
            ,async:false
        });
        return responseJson;
    }

    function setHeaderTitle() {

        var type = $("#leadType").val();


        if (type == "01") {
            $("#btnNextStepBefore").html("<spring:message code='crm.lbl.uploadAdd'/>");
        } else if (type == "02") {
            $("#btnNextStepBefore").html("<spring:message code='crm.lbl.activeAppointment'/>");
        } else if (type == "04") {
            $("#btnNextStepBefore").html("<spring:message code='crm.lbl.activeProcessing'/>");
        } else if (type == "05") {
            $("#btnNextStepBefore").html("<spring:message code='crm.btn.rejectSign'/>");
        }

    }

    /** [조회조건 영역] ComboBox Select() **/
    // 차종에 따른 모델검색
     function onSelectSearchCarlineCd(e){
        $("#intrFscpModtpCd").data("kendoExtDropDownList").setDataSource([]);
        //$("#intrFscpModtpCd").data("kendoExtDropDownList").enable(true);

        var dataItem = this.dataItem(e.item);
        if(dataItem.carlineCd == ""){
            $("#intrFscpModtpCd").data("kendoExtDropDownList").setDataSource([]);
            $("#intrFscpModtpCd").data("kendoExtDropDownList").enable(false);
            return false;
        }

        var responseJson = dms.ajax.getJson({
            url:"<c:url value='/sal/cnt/contractRe/selectModel.do' />"
            ,data:JSON.stringify({"carlineCd":dataItem.carlineCd})
            ,async:false
        });
        $("#intrFscpModtpCd").data("kendoExtDropDownList").setDataSource(responseJson.data);
     }

     /** [조회조건 영역] ComboBox Select() **/
     // 차종에 따른 모델검색
      function onSelectSearchCarlineCdSet(carlineCd){
         $("#intrFscpModtpCd").data("kendoExtDropDownList").setDataSource([]);
         //$("#intrFscpModtpCd").data("kendoExtDropDownList").enable(true);

         if(carlineCd == ""){
             $("#intrFscpModtpCd").data("kendoExtDropDownList").setDataSource([]);
             $("#intrFscpModtpCd").data("kendoExtDropDownList").enable(false);
             return false;
         }

         var responseJson = dms.ajax.getJson({
             url:"<c:url value='/sal/cnt/contractRe/selectModel.do' />"
             ,data:JSON.stringify({"carlineCd":carlineCd})
             ,async:false
         });
         $("#intrFscpModtpCd").data("kendoExtDropDownList").setDataSource(responseJson.data);
      }

     /** [조회조건 영역] ComboBox Select() **/
     // 정보경로에 따른 상세경로 조회
     function onSelectSearchHoldTp(e){
         $("#holdDetlTpSeq").data("kendoExtDropDownList").setDataSource([]);
         $("#holdDetlTpSeq").data("kendoExtDropDownList").enable(true);

         var dataItem = this.dataItem(e.item);

         if(dataItem.cmmCd == ""){
             $("#holdDetlTpSeq").data("kendoExtDropDownList").setDataSource([]);
             $("#holdDetlTpSeq").data("kendoExtDropDownList").enable(false);
             return false;
         }

         var responseJson = dms.ajax.getJson({
             url:"<c:url value='/crm/cso/salesOpptProcessMgmt/selectHoldTpDetl.do' />"
             ,data:JSON.stringify({"sHoldTp":dataItem.cmmCd})
             ,async:false
         });
         $("#holdDetlTpSeq").data("kendoExtDropDownList").setDataSource(responseJson.data);

     }

     /** [조회조건 영역] ComboBox Select() **/
     // 정보경로에 따른 상세경로 조회
     function onSelectSearchHoldTpSet(holdTp){
         $("#holdDetlTpSeq").data("kendoExtDropDownList").setDataSource([]);
         $("#holdDetlTpSeq").data("kendoExtDropDownList").enable(true);

         if(holdTp == ""){
             $("#holdDetlTpSeq").data("kendoExtDropDownList").setDataSource([]);
             $("#holdDetlTpSeq").data("kendoExtDropDownList").enable(false);
             return false;
         }

         var responseJson = dms.ajax.getJson({
             url:"<c:url value='/crm/cso/salesOpptProcessMgmt/selectHoldTpDetl.do' />"
             ,data:JSON.stringify({"sHoldTp":holdTp})
             ,async:false
         });

         if (responseJson.total == 0) {
             $("#holdDetlTpSeq").data("kendoExtDropDownList").enable(false);
         } else {
             $("#holdDetlTpSeq").data("kendoExtDropDownList").setDataSource(responseJson.data);
         }
     }

     function getCustDupByKey(idVal){
         console.log("getCustDupByKey!!!!");
         var custTp = $("#custTp").data("kendoExtDropDownList").value();

         var custNm = $("#custNmSearch").val();
         var custNo = $("#custNo").val();
         var custCd = $("#custCd").val();
         var hpNo = $("#hpNo").val();
         var mathDocTp = $("#mathDocTpC").data("kendoExtDropDownList").value();
         var ssnCrnNo = $("#ssnCrnNoC").val();
         var officeTelNo = $("#officeTelNoC").val();
         var oldCustNm = "";
         var oldHpNo = "";
         var oldMathDocTp = "";
         var oldSsnCrnNo = "";
         var chkContinued = false;

         // 법인연계인 (구매담당자)
         var relCustNm = $("#relCustNm").val();
         var relCustHpNo = $("#relCustHpNo").val();

         if ( dms.string.isEmpty(custCd) ) {
             custCd = "01";
         }

         if (custTp == "02") {
             custNm = $("#custNmC").val();
             mathDocTp = $("#mathDocTpC").data("kendoExtDropDownList").value();
             ssnCrnNo = $("#ssnCrnNoC").val();
             if (relCustHpNo.length > 1 ) {
                 hpNo = relCustHpNo;
                 chkContinued = true;
             }
         } else {
             if (hpNo.length > 1 ) {
                 chkContinued = true;
             }
         }

         if (chkContinued){

             var param = {};
             param["sCustNo"]       = custNo;
             param["sCustCd"]       = custCd;   // 잠재
             param["sCustTp"]       = custTp;
             param["sCustNm"]       = custNm;

             param["sHpNo"]         = hpNo;
             param["sOfficeTelNo"]         = officeTelNo;
             param["sMathDocTp"]         = mathDocTp;
             param["sSsnCrnNo"]         = ssnCrnNo;
             param["sOldCustNm"]         = oldCustNm;
             param["sOldHpNo"]         = oldHpNo;
             param["sOldMathDocTp"]         = oldMathDocTp;
             param["sOldSsnCrnNo"]         = oldSsnCrnNo;

             //console.log(param);

             $.ajax({
                 url:"<c:url value='/crm/cif/customerInfo/selectCustDupScreenByKey.do' />"
                 ,data:JSON.stringify(param)
                 ,type:'POST'
                 ,dataType:'json'
                 ,contentType:'application/json'
                 ,error:function(jqXHR,status,error){
                     mob.notification.info(jqXHR.responseJSON.errors[0].errorMessage);
                 },
                 success:function(result){
                 }
             }).done(function(result) {

                 if (result.total == 0 ){
                     mob.notification.info("<spring:message code='global.info.ableToDo' />");
                 } else {

                     // 이미 존재합니다. 확인 하시겠습니까?
                     var custNo = result.data[0].custNo;
                     var msg = "<spring:message code='crm.info.hpNoDupCustConfirm' />";
                     dms.window.confirm({
                         message:msg
                         ,title :"<spring:message code='global.lbl.info' />"
                         ,callback:function(result){
                             if(result){
                                 parent.window.parent._createOrReloadTabMenu("<spring:message code='crm.menu.custInfo' />", "<c:url value='/crm/cif/customerInfo/selectCustomerInfoMain.do' />?custNo="+custNo, "VIEW-D-10272"); // CUST NO
                             }else{
                                 return false;
                             }
                         }
                     });
                 }

             });
         }
     }

     // 증거유형 증거번호 체크
     function getCustMathDocDupByKey(idVal){

         var custTp = $("#custTp").data("kendoExtDropDownList").value();
         var custCd = $("#custCd").val();
         var custNm = $("#custNm").val();
         var custNo = $("#custNo").val();
         var hpNo = $("#hpNo").val();
         var mathDocTp = $("#mathDocTpC").data("kendoExtDropDownList").value();
         var ssnCrnNo = $("#ssnCrnNoC").val();
         var officeTelNo = "";
         var oldCustNm = $("#oldCustNm").val();
         var oldHpNo = $("#oldHpNo").val();
         var oldMathDocTp = $("#oldMathDocTp").val();
         var oldSsnCrnNo = $("#oldSsnCrnNo").val();
         var chkContinued = false;

         if (custTp == "02") {
             custNm = $("#custNmC").val();
             mathDocTp = $("#mathDocTpC").data("kendoExtDropDownList").value();
             ssnCrnNo = $("#ssnCrnNoC").val();
         }

         if (dms.string.isNotEmpty(mathDocTp) && dms.string.isNotEmpty(ssnCrnNo)){

             var param = {};
             param["sCustNo"]        = custNo;
             param["sCustCd"]        = custCd;
             param["sCustTp"]        = custTp;
             param["sCustNm"]        = custNm;
             param["sHpNo"]          = hpNo;
             param["sOfficeTelNo"]   = officeTelNo;
             param["sMathDocTp"]     = mathDocTp;
             param["sSsnCrnNo"]      = ssnCrnNo;
             param["sOldCustNm"]     = oldCustNm;
             param["sOldHpNo"]       = oldHpNo;
             param["sOldMathDocTp"]  = oldMathDocTp;
             param["sOldSsnCrnNo"]   = oldSsnCrnNo;
             $.ajax({
                 url:"<c:url value='/crm/cif/customerInfo/selectCustMathDocDupByKey.do' />"
                 ,data:JSON.stringify(param)
                 ,type:'POST'
                 ,dataType:'json'
                 ,contentType:'application/json'
                 ,error:function(jqXHR,status,error){
                     mob.notification.info(jqXHR.responseJSON.errors[0].errorMessage);
                 },
                 success:function(result){
                     if (result.total == 0 ){
                         mob.notification.info("<spring:message code='global.info.ableToDo' />");
                     } else {
                         mob.notification.info("<spring:message code='global.info.already' />");
                     }
                 }
             }).done(function(result) {
                 console.log("done!!!!");
             });
         }
     }

    //주소추가 팝업 callback
    function callbackAddr(data){
        document.getElementById("addressList").contentWindow.addItemSubList1(data);
     }

     //addressList change Event Callback
    function saveAddressList(){
        //nothing
    }
 </script>

 <script type="text/javascript">

 function goMain(){
     parent.editCustPopupWindow.close();
 }

</script>