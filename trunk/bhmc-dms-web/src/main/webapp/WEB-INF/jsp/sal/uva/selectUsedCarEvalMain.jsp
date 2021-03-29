﻿<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="dms" uri="/WEB-INF/tlds/taglibs-dms"%>


<!-- 평가관리 -->
<section class="group">
	<div class="header_area">
        <h1 class="title_basic">评价管理</h1><!-- 평가관리 -->
		<div class="btn_right">
            <button id="btnSearch" type="button" class="btn_m btn_search">查询<!-- 조회 --></button>
		</div>
	</div>
	<div class="table_form form_width_100per">
		<table>
			<caption></caption>
			<colgroup>
                <col style="width:10%;">
                <col style="width:24%;">
                <col style="width:10%;">
                <col style="width:23%;">
                <col style="width:10%;">
                <col>
			</colgroup>
			<tbody>
				<tr>
					<th scope="row">文件编号<!-- 문서번호 --></th>
					<td>
                        <input type="text" value="" class="form_input">
                    </td>
					<th scope="row">客户名<!-- 고객명 --></th>
					<td>
                        <input type="text" value="" class="form_input">
                    </td>
					<th scope="row">注册日期<!-- 등록일자 --></th>
                    <td>
                        <div class="form_float">
                            <div class="date_left">
                                <input value="" class="form_datepicker">
                                <span class="txt_from">~</span>
                            </div>
                            <div class="date_right">
                                <input value="" class="form_datepicker">
                            </div>
                        </div>
                    </td>
				</tr>
			</tbody>
		</table>
	</div>
    <div class="table_grid mt10">
        <table class="grid">
            <caption></caption>
            <thead>
                <tr>
                    <th scope="col" data-field="data1">状态<!-- 상태 --></th>
                    <th scope="col" data-field="data2">TradeIn 编号<!-- TradeIn 번호--></th>
                    <th scope="col" data-field="data3">客户名<!-- 고객명 --></th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
            </tbody>
        </table>
    </div>

    <div class="header_area">
        <h2 class="title_basic">基本信息<!-- 기본정보 --></h2>
        <div class="btn_right">
            <button id="btnSave"    type="button" class="btn_s">临时保存</button><!-- 임시저장 -->
            <button id="btnSuccess" type="button" class="btn_s">评价结束<!-- 평가완료 --></button>
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
                <col>
            </colgroup>
            <tbody>
                <tr>
                    <th scope="row">置换编号<!-- 치환번호 -->
                    </th>
                    <td>
                        <input type="text" value="" disabled class="form_input form_disabled">
                    </td>
                    <th scope="row">状态<!-- 상태 --></th>
                    <td>
                        <input value="" disabled class="form_comboBox">
                    </td>
                    <th scope="row">客户名<!-- 고객명 --></th>
                    <td>
                        <input type="text" value="" disabled class="form_input form_disabled">
                    </td>
                    <th scope="row">负责人<!-- 담당자 --></th>
                    <td>
                        <input type="text" value="" disabled class="form_input form_disabled">
                    </td>
                </tr>
                <tr>
                    <th scope="row">新车合同编号<!-- 신차계약번호--></th>
                    <td>
                        <input value="" disabled class="form_comboBox">
                    </td>
                    <th scope="row">新车合同链接<!-- 신차계약링크 --></th>
                    <td>
                        <ul class="tabmenu disabled">
                            <li class="on"><button type="button" disabled>链接</button></li><!-- 연동 -->
                            <li><button type="button" disabled>未连接</button></li><!-- 미연동 -->
                        </ul>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>

    <div class="header_area">
        <h2 class="title_basic">车辆信息<!-- 차량정보 --></h2>
    </div>
    <div class="table_form mt10">
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
                <col>
            </colgroup>
            <tbody>
                <tr>
                    <th scope="row">厂家<!-- 제조사 -->
                    </th>
                    <td colspan="3">
                       <div class="form_float">
                            <div class="form_left" style="width:40%">
                                <input value="" class="form_comboBox">
                            </div>
                            <div class="form_right" style="width:60%">
                                <ul class="tabmenu" >
                                    <li class="on"><button type="button">本公司</button></li><!-- 본사 -->
                                    <li><button type="button">其他公司</button></li><!-- 타사 -->
                                </ul>
                            </div>
                        </div>
                    </td>
                    <th scope="row">是否带有车牌<!-- 번호판여부 --> </th>
                    <td>
                        <input type="checkbox" name="" class="form_check">
                    </td>
                </tr>
                <tr>
                    <th scope="row">车辆<!-- 차량 --></th>
                    <td>
                        <input value="" class="form_comboBox">
                    </td>
                    <th scope="row">车牌号<!-- 번호판号 -->
                    </th>
                    <td>
                        <input type="text" value="" class="form_input">
                    </td>
                    <th scope="row">生产年份<!-- 제조년월 --></th>
                    <td>
                        <input value="" class="form_comboBox">
                    </td>
                    <th scope="row">定额<!-- 최종가격--></th>
                    <td>
                        <input type="number" value="" min="0" max="" class="form_numeric">
                    </td>
                </tr>
                <tr>
                    <th scope="row">车辆识别码<!-- 차량식별번호 -->
                    </th>
                    <td>
                        <div class="form_search">
                            <input type="text" value="" class="form_input">
                            <a href="javascript:;">查询</a><!-- 검색 -->
                        </div>
                    </td>
                    <th scope="row">车种<!-- 차종 -->
                    </th>
                    <td>
                        <input value="" class="form_comboBox">
                    </td>
                    <th scope="row">颜色<!--  --></th>
                    <td>
                        <input value="" class="form_comboBox">
                    </td>
                    <th scope="row">汽缸数<!-- 실린더 --></th>
                    <td>
                        <input type="number" value="" min="0" max="" class="form_numeric">
                    </td>
                </tr>
                <tr>
                    <th scope="row">驱动方式<!-- 구동방식 --></th>
                    <td>
                        <input value="" class="form_comboBox">
                    </td>
                    <th scope="row">使用用途<!-- 사용용도 --></th>
                    <td>
                        <input value="" class="form_comboBox">
                    </td>
                    <th scope="row">燃料<!-- 연료 --></th>
                    <td>
                        <input value="" class="form_comboBox">
                    </td>
                </tr>
            </tbody>
        </table>
    </div>

    <div class="header_area">
        <h2 class="title_basic">评价信息<!-- 평가정보 --></h2>
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
                <col>
            </colgroup>
            <tbody>
                <tr>
                    <th scope="row">评价处<!-- 평가처 --></th>
                    <td>
                        <ul class="tabmenu">
                            <li class="on"><button type="button">自行<!-- 본인 --></button></li>
                            <li><button type="button">代办<!-- 대행 --></button></li>
                        </ul>
                    </td>
                    <th scope="row">评价负责人<!-- 평가담당자 --></th>
                    <td>
                        <input type="text" value="" disabled class="form_input form_disabled">
                    </td>
                    <th scope="row">评价日期<!-- 평가일자 --></th>
                    <td>
                        <input value="" disabled class="form_datepicker">
                    </td>
                    <th scope="row"></th>
                    <td>
                        <button id="btnEval" type="button" class="btn_xs">评价<!-- 평가 --></button>
                    </td>
                </tr>
                <tr>
                    <th scope="row">客户希望价格<!-- 고객희망가격 --></th>
                    <td>
                        <input type="text" value="" class="form_input">
                    </td>
                    <th scope="row">评估师报价<!-- 평가가격 --></th>
                    <td>
                        <input type="text" value="" class="form_input">
                    </td>
                    <th scope="row">最终鉴定价格<!-- 최종가격 --></th>
                    <td>
                        <input type="text" value="" class="form_input">
                    </td>
                    <th scope="row">车牌号评估价格<!-- 번호판평가가격 --></th>
                    <td>
                        <input type="text" value="" disabled class="form_input form_disabled">
                    </td>
                </tr>
            </tbody>
        </table>
    </div>

    <div class="header_area">
        <h2 class="title_basic">备注<!-- 비고 --></h2>
    </div>
        <div class="table_form">
        <table>
            <caption></caption>
            <colgroup>
                <col style="width:10%;">
                <col style="width:65%;">
                <col style="width:10%;">
                <col>
            </colgroup>
            <tbody>
                <tr>
                    <th scope="row">备注<!-- 비고 --></th>
                    <td>
                        <input type="text" value="" class="form_input">
                    </td>
                    <th scope="row">车辆状况<!-- 차량状况 --></th>
                    <td>
                        <input value="" class="form_comboBox">
                    </td>
                </tr>
            </tbody>
        </table>
    </div>


    <div class="header_area">
        <h2 class="title_basic">委托记录<!-- 위탁기록 --></h2>
        <div class="btn_right">
            <button id="btnAdd" type="button" class="btn_s">新加行<!-- 행추가 --></button>
            <button id="btnDel" type="button" class="btn_s">删除行<!-- 행삭제 --></button>
        </div>
    </div>

    <div class="table_grid">
        <table class="grid">
            <caption></caption>
            <thead>
                <tr>
                    <th scope="col" data-field="data1">VIN码<!-- 차량식별번호 --></th>
                    <th scope="col" data-field="data2">CC<!-- 배기량 --></th>
                    <th scope="col" data-field="data3">被委托方<!--  --></th>
                    <th scope="col" data-field="data4">申请日期<!-- 신청일자 --></th>
                    <th scope="col" data-field="data5">拍卖价格<!-- 경매가격 --></th>
                    <th scope="col" data-field="data6">精品<!-- 용품 --></th>
                    <th scope="col" data-field="data7">车辆是否 已经提走<!-- 차량인도여부 --></th>
                    <th scope="col" data-field="data8">预计 结款日期<!-- 예정입금일자 --></th>
                    <th scope="col" data-field="data9">备注（随车用品等）<!-- 비고（차량악세사리등） --></th>
                </tr>
            </thead>
            <tbody></tbody>
        </table>
    </div>

</section>
<!-- //평가관리 -->


<script>
$(document).ready(function() {

    $("#btnSearch").kendoButton({  // 조회
        click:function(e){
            // 개발진행 예정중입니다.
            dms.notification.info("<spring:message code='global.info.developIng' />");
        }
    });

    $("#btnSave").kendoButton({  // 임시저장
        click:function(e){
            // 개발진행 예정중입니다.
            dms.notification.info("<spring:message code='global.info.developIng' />");
        }
    });

    $("#btnSuccess").kendoButton({  // 평가완료
        click:function(e){
            // 개발진행 예정중입니다.
            dms.notification.info("<spring:message code='global.info.developIng' />");
        }
    });

    $("#btnEval").kendoButton({  // 평가
        click:function(e){
            // 개발진행 예정중입니다.
            dms.notification.info("<spring:message code='global.info.developIng' />");
        }
    });

    $("#btnAdd").kendoButton({  // 행추가
        click:function(e){
            // 개발진행 예정중입니다.
            dms.notification.info("<spring:message code='global.info.developIng' />");
        }
    });

    $("#btnDel").kendoButton({  // 행삭제
        click:function(e){
            // 개발진행 예정중입니다.
            dms.notification.info("<spring:message code='global.info.developIng' />");
        }
    });

    $(".form_datepicker").kendoDatePicker({
        format:"yyyy-MM-dd"
    });
    $(".grid").kendoGrid({
        height:104
    });
    $(".form_comboBox").kendoExtDropDownList();
    $(".btn_m").kendoButton();
    $(".form_numeric").kendoExtNumericTextBox();
});
</script>