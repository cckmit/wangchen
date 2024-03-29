<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="dms" uri="/WEB-INF/tlds/taglibs-dms"%>
<link rel="stylesheet" href="<c:url value="/resources/js/jquery-ui-1.11.4.custom/jquery-ui.min.css"/>" />
<script type="text/javascript" src="<c:url value="/resources/js/jquery-ui-1.11.4.custom/jquery-ui.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/resources/js/jquery.form.js"/>"></script>
<script type="text/javascript" src="<c:url value="/resources/js/dms/jquery.ui.ext-1.0.js"/>"></script>
<style type="text/css">
    .progress_section {background-color:#ffffff;border:1px solid #ddd;padding:5px;position:absolute;width:600px;top:150px;z-index:1500;margin-left:-300px;left:50%;display:none;}
    #progressMessage {height:20px;}
    #progressbar {height:25px;}
</style>

<section id="windows" class="pop_wrap">
    <div class="header_area">
        <div class="btn_right">
            <button id="btnFileDownload" class="btn_s"><spring:message code="global.btn.templateDownload" /></button>
            <button id="btnDel" class="btn_s"><spring:message code='global.btn.rowDel' /></button>
            <button id="btnSave" class="btn_s"><spring:message code="global.btn.save" /></button>
        </div>
    </div>

    <div class="table_form" role="search" data-btnid="btnSearch">
        <form id="uploadForm" name="uploadForm" method="post" enctype="multipart/form-data" action="<c:url value="/crm/cif/customerCoupon/insertUploadFileCouponCust.do"/>" >
        <table>
            <caption></caption>
            <colgroup>
                <col style="width:70%;">
                <col>
            </colgroup>
            <tbody>
                <tr>
                    <td>
                        <input type="file" id="uploadFile" name="uploadFile" class="form_file" />
                    </td>
                    <td></td>
                </tr>
            </tbody>
        </table>
        </form>
    </div>

    <div id="progressSection"></div>

    <div class="table_grid mt10">
        <div id="grid" class="grid"></div>
    </div>
</section>

<script type="text/javascript">
//그리드 목록 번호
var rowNumber = 0;
var localData = {"data":[], "total":0}

/**
 * 팝업 옵션
 */
 var options = parent.custCouponMainUploadPopupCouponCust.options.content.data;

$(document).ready(function() {
	
	//파일업로드 
	$("#uploadFile").change(function(){
		if(dms.string.isEmpty($(this).val())) {
     		dms.notification.show("<spring:message code='global.lbl.file' var='fileMsg' /><spring:message code='global.info.chkSelectItemMsg' arguments='${fileMsg}' />", "popup");
     		return;
 		}
 		$("#progressSection").excelUpload("upload");
	});
	
    //버튼 - 파일 다운로드
    $("#btnFileDownload").kendoButton({
        click:function(e){
            location.href = "<c:url value='/cmm/sci/selectExcelTemplateDownload.do' />" + "?fileNm=CouponCust_Tpl.xlsx";
        }
    });
    
  	//버튼 - 행삭제
	$("#btnDel").kendoButton({
    	click:function(e){
    		var grid = $("#grid").data("kendoExtGrid");
			var rows = grid.select();

            rows.each(function(index, row) {
				grid.removeRow(row);
			});
   		}
	});

    //버튼 - 저장
    $("#btnSave").kendoButton({
        click:function(e){
            var grid = $("#grid").data("kendoExtGrid");
            var saveData = grid.dataSource.data();
            if(saveData.length == 0) {
                //변경된 정보가 없습니다.
                dms.notification.info("<spring:message code='global.info.required.change'/>");
                return;
            }

            var sd = [];
            $.each(saveData, function(idx, obj){
               if (obj.errorCount != "1"){
                   sd.push(obj);
               }
            });
            saveData = sd;
           options.callbackFunc(saveData);
           parent.custCouponMainUploadPopupCouponCust.close();
       }
    });

    $("#progressSection").excelUpload({
        progressId :"UPLOAD_FILE_COUPONCUST"
        ,uploadForm :"uploadForm"
        ,uploadStatusUrl:"<c:url value='/cmm/excelUpload/selectExcelUploadStatus.do' />"
        ,interval:300
        ,messages:{
            fileUpload:"<spring:message code='global.info.fileUpload.processing' />"
            ,fileUploadComplete:"<spring:message code='global.info.fileUpload.complete' />"
            ,dataExtract:"<spring:message code='global.info.excelUpload.dataExtract.complete' />"
            ,dataExtractComplate:"<spring:message code='global.info.excelUpload.dataExtract.processing' />"
            ,uploadComplete:"<spring:message code='global.info.excelUpload.complete' />"
        }
        ,callback:function(obj){
            localData = obj;
            $('#grid').data('kendoExtGrid').dataSource.read();
        }
    });

    //그리드 설정
    $("#grid").kendoExtGrid({
    	gridId:"G-CRM-0628-171806"
        ,dataSource:{
            data:localData
            ,transport:{
                read:function (options) {
                    options.success(localData);
                }
            }
            ,serverPaging:false
            ,serverSorting:false
            ,schema:{
                model:{
                    fields:{
                        custNo:{type:"string", validation:{required:true},editable:false}
                        ,custNm:{type:"string", validation:{required:true},editable:false}
                        ,errorCount:{type:"string", editable:false}
                        ,errors:{type:"object", editable:false}
                    }
                }
            }
        }
        ,height:414
        ,pageable:{
            info:true
        }
        ,dataBinding:function(e){
            var grid = e.sender;
            var page = grid.dataSource.page()? this.dataSource.page():1;
            var pageSize = grid.dataSource.pageSize()? this.dataSource.pageSize():0;

            rowNumber = (page-1)*pageSize;
        }
        ,indvColumnVisible:false           //컬럼 보이기/감추기 개인화 적용. default:true
		,indvColumnReorderable:false       //컬럼순서 변경 개인화 적용. default:true
        ,editable:false
        ,columns:[
            {_field:"rowNumber", title:"<spring:message code='global.lbl.no' />", width:60, sortable:false
                ,attributes:{"class":"ac"}
                ,template:"#= ++rowNumber #"
            }
            ,{field:"errorCount", title:"<spring:message code='global.lbl.errYn' />", width:80
                ,attributes:{"class":"ac"}
                ,template:function(dataItem){
                    if(dataItem.errorCount == 0){
                        return "N";
                    }
                    return "Y";
                }
            }
            ,{field:"errors", title:"<spring:message code='global.lbl.errMesgTxt' />", width:100
                ,template:function(dataItem) {  //에러메세지
                    var str = "";
                    $.each(dataItem.errors, function(idx, obj){
                        str += "<div>" + obj.errorMessage + "</div>";
                    });

                    return str;
                }
            }
            ,{field:"custNo", title:"<spring:message code='global.lbl.custNo' />", width :150 , attributes:{"class":"ac"}}  // 고객번호
            ,{field:"custNm" , title:"<spring:message code='global.lbl.custNm' />",  width:120, attributes:{"class":"ac"}}   // 고객명
            , {field:"membershipYn"  , title:"<spring:message code='crm.lbl.mbrShipTpYn' />", width:90, sortable:false
                , attributes:{"class":"ac"}
                ,template:function(dataItem){
                    var spanObj = "";
                        if (dataItem.membershipYn == 'Y') {   //
                        spanObj = "<span class='icon_ok'></span>";
                    }
                    return spanObj;
                }
            }  // 딜러멤버십
            , {field:"blueMembershipYn"  , title:"<spring:message code='crm.lbl.blueMembershipYn' />", width:90, sortable:false
                , attributes:{"class":"ac"}
                ,template:function(dataItem){
                    var spanObj = "";
                        if (dataItem.blueMembershipYn == 'Y') {   //
                        spanObj = "<span class='icon_ok'></span>";
                    }
                    return spanObj;
                }
            }  // 블루멤버십 BLUE_MEMBERSHIP_NO

        ]
    });

    $("#grid").data("kendoExtGrid").dataSource.data([]);
});
</script>