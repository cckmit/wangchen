package chn.bhmc.dms.crm.crq.vo;

import java.util.Date;

import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;

import chn.bhmc.dms.core.datatype.BaseVO;
import chn.bhmc.dms.core.support.databind.JsonDateDeserializer;
import chn.bhmc.dms.core.web.bind.annotation.ValidDescriptor;
import chn.bhmc.dms.core.web.bind.annotation.ValidField;

/**
 * 고객케어미션 VO
 *
 * @ClassName   : CustomerCareVO.java
 * @Description : CustomerCareVO.Class
 * @author in moon lee
 * @since 2016.05.02.
 * @version 1.0
 * @see
 * @Modification Information
 * <pre>
 *     since          author              description
 *  ===========    =============    ===========================
 *  2016.05.02     in moon lee     최초 생성
 * </pre>
 */

@ValidDescriptor({

     @ValidField(field="dlrCd"            , mesgKey="global.lbl.dlrCd")               // 딜러코드
    ,@ValidField(field="custCareSeq"      , mesgKey="crm.lbl.custCareSeq")          // 고객캐어일련번호
    ,@ValidField(field="custCareNm"       , mesgKey="crm.lbl.custCareNm")           // 고객케어명
    ,@ValidField(field="activeTpCd"       , mesgKey="crm.lbl.activeTpCd")           // 실행유형
    ,@ValidField(field="autoActiveYn"     , mesgKey="crm.lbl.autoActiveYn")         // 자동발송여부
    ,@ValidField(field="activeTmplId"     , mesgKey="crm.lbl.activeTmplId")         // SMS템플릿
    ,@ValidField(field="custExtrTermCd"   , mesgKey="crm.lbl.custExtrTermCd")       // 고객추출조건
    ,@ValidField(field="custExtrAutoYn"   , mesgKey="crm.lbl.custExtrAutoYn")       // 대상자자동추출
    ,@ValidField(field="custExtrTermPrid", mesgKey="crm.lbl.custExtrTermPrid")        // 고객추출주기 일(기간)
    ,@ValidField(field="custCareCont"     , mesgKey="crm.lbl.custCareCont")         // 고객케어내용
    ,@ValidField(field="fileDocNo"        , mesgKey="global.lbl.fileDoNo")          // 파일문서번호
    ,@ValidField(field="useYn"            , mesgKey="crm.lbl.useYn")                // 사용여부
    ,@ValidField(field="regUsrId"         , mesgKey="global.lbl.regUsrId")            // 등록자
    ,@ValidField(field="regDt"            , mesgKey="global.lbl.regDt")               // 등록일
    ,@ValidField(field="updtUsrId"        , mesgKey="global.lbl.updtUsrId")           // 수정자
    ,@ValidField(field="updtDt"           , mesgKey="global.lbl.updtDt")              // 수정일

    ,@ValidField(field="extrDgreCnt"          , mesgKey="crm.lbl.extrDgreCnt")          // 추출차수
    ,@ValidField(field="lastExtrDt"           , mesgKey="crm.lbl.lastExtrDt")           // 마지막추출일
    ,@ValidField(field="startDt"              , mesgKey="crm.lbl.startDt")              // 시작일
    ,@ValidField(field="endDt"                , mesgKey="crm.lbl.endDt")                // 종료일

    ,@ValidField(field="smsResvHm"                , mesgKey="crm.lbl.smsResvHm")                // 문자예약발송시분


})

public class CustomerCareVO extends BaseVO {

    /**
     * Statements
     * (long)serialVersionUID
     */
    private static final long serialVersionUID = 823167658930758120L;

    /**
     * 딜러코드
     **/
    private  String            dlrCd;

    /**
     * 고객케어일련번호
     **/
    private  int               custCareSeq;

    /**
     * 고객케어명
     **/
    @NotEmpty
    private  String            custCareNm;

    /**
     * 실행유형코드
     **/
    @NotEmpty
    private  String            activeTpCd;

    /**
     * 자동실행여부
     **/
    private  String            autoActiveYn;

    /**
     * 실행템플릿ID
     **/
    private  String            activeTmplId;

    /**
     * 고객추출조건번호
     **/
    @NotEmpty
    private  String            custExtrTermCd;

    /**
     * 대상자자동추출
     **/
    @NotEmpty
    private  String            custExtrAutoYn;
    private  String            tmpCustExtrAutoYn;       // 기존값 비교하기 위해 변수 추가

    /**
     * 고객추출주기 기간
     **/
    @NotEmpty
    private  String            custExtrTermPrid;

    /**
     * 고객케어내용
     **/
    private  String            custCareCont;

    /**
     * 첨부파일문서번호
     **/
    private  String            fileDocNo;

    /**
     * 사용여부
     **/
    @NotEmpty
    private  String            useYn;

    /**
     * 등록자ID
     **/
    private  String            regUsrId;
    private  String            regUsrNm;

    /**
     * 등록일자
     **/
    @JsonDeserialize(using=JsonDateDeserializer.class)
    private  Date              regDt;

    /**
     * 수정자ID
     **/
    private  String            updtUsrId;

    /**
     * 수정일자
     **/
    @JsonDeserialize(using=JsonDateDeserializer.class)
    private  Date              updtDt;

    /**
     * 추출차수
     **/
    private  int                   extrDgreCnt;

    /**
     * 최종추출일자
     **/
    @JsonDeserialize(using=JsonDateDeserializer.class)
    private  Date                  lastExtrDt;

    /**
     * 시작일자
     **/
    @NotNull
    @JsonDeserialize(using=JsonDateDeserializer.class)
    private  Date                  startDt;

    /**
     * 종료일자
     **/
    @NotNull
    @JsonDeserialize(using=JsonDateDeserializer.class)
    private  Date                  endDt;


    private String activeTpCdNm;            //실행유형코드
    private String custExtrTermCdNm;        //고객추출조건코드
    private String activeTmplIdNm;              //메시지템플릿

    private String result;                  //고객케어프로시저호출 결과

    private String smsResvHm;                  //문자예약발송시분




    /**
     * @return the dlrCd
     */
    public String getDlrCd() {
        return dlrCd;
    }

    /**
     * @param dlrCd the dlrCd to set
     */
    public void setDlrCd(String dlrCd) {
        this.dlrCd = dlrCd;
    }

    /**
     * @return the custCareSeq
     */
    public int getCustCareSeq() {
        return custCareSeq;
    }

    /**
     * @param custCareSeq the custCareSeq to set
     */
    public void setCustCareSeq(int custCareSeq) {
        this.custCareSeq = custCareSeq;
    }

    /**
     * @return the custCareNm
     */
    public String getCustCareNm() {
        return custCareNm;
    }

    /**
     * @param custCareNm the custCareNm to set
     */
    public void setCustCareNm(String custCareNm) {
        this.custCareNm = custCareNm;
    }

    /**
     * @return the activeTpCd
     */
    public String getActiveTpCd() {
        return activeTpCd;
    }

    /**
     * @param activeTpCd the activeTpCd to set
     */
    public void setActiveTpCd(String activeTpCd) {
        this.activeTpCd = activeTpCd;
    }

    /**
     * @return the autoActiveYn
     */
    public String getAutoActiveYn() {
        return autoActiveYn;
    }

    /**
     * @param autoActiveYn the autoActiveYn to set
     */
    public void setAutoActiveYn(String autoActiveYn) {
        this.autoActiveYn = autoActiveYn;
    }

    /**
     * @return the activeTmplId
     */
    public String getActiveTmplId() {
        return activeTmplId;
    }

    /**
     * @param activeTmplId the activeTmplId to set
     */
    public void setActiveTmplId(String activeTmplId) {
        this.activeTmplId = activeTmplId;
    }

    /**
     * @return the custExtrTermCd
     */
    public String getCustExtrTermCd() {
        return custExtrTermCd;
    }

    /**
     * @param custExtrTermCd the custExtrTermCd to set
     */
    public void setCustExtrTermCd(String custExtrTermCd) {
        this.custExtrTermCd = custExtrTermCd;
    }

    /**
     * @return the custExtrAutoYn
     */
    public String getCustExtrAutoYn() {
        return custExtrAutoYn;
    }

    /**
     * @param custExtrAutoYn the custExtrAutoYn to set
     */
    public void setCustExtrAutoYn(String custExtrAutoYn) {
        this.custExtrAutoYn = custExtrAutoYn;
    }

    /**
     * @return the custCareCont
     */
    public String getCustCareCont() {
        return custCareCont;
    }

    /**
     * @param custCareCont the custCareCont to set
     */
    public void setCustCareCont(String custCareCont) {
        this.custCareCont = custCareCont;
    }

    /**
     * @return the fileDocNo
     */
    public String getFileDocNo() {
        return fileDocNo;
    }

    /**
     * @param fileDocNo the fileDocNo to set
     */
    public void setFileDocNo(String fileDocNo) {
        this.fileDocNo = fileDocNo;
    }

    /**
     * @return the useYn
     */
    public String getUseYn() {
        return useYn;
    }

    /**
     * @param useYn the useYn to set
     */
    public void setUseYn(String useYn) {
        this.useYn = useYn;
    }

    /**
     * @return the regUsrId
     */
    public String getRegUsrId() {
        return regUsrId;
    }

    /**
     * @param regUsrId the regUsrId to set
     */
    public void setRegUsrId(String regUsrId) {
        this.regUsrId = regUsrId;
    }
    /**
     * @return the regUsrNm
     */
    public String getRegUsrNm() {
        return regUsrNm;
    }

    /**
     * @param regUsrNm the regUsrNm to set
     */
    public void setRegUsrNm(String regUsrNm) {
        this.regUsrNm = regUsrNm;
    }

    /**
     * @return the regDt
     */
    public Date getRegDt() {
        return regDt;
    }

    /**
     * @param regDt the regDt to set
     */
    public void setRegDt(Date regDt) {
        this.regDt = regDt;
    }

    /**
     * @return the updtUsrId
     */
    public String getUpdtUsrId() {
        return updtUsrId;
    }

    /**
     * @param updtUsrId the updtUsrId to set
     */
    public void setUpdtUsrId(String updtUsrId) {
        this.updtUsrId = updtUsrId;
    }

    /**
     * @return the updtDt
     */
    public Date getUpdtDt() {
        return updtDt;
    }

    /**
     * @param updtDt the updtDt to set
     */
    public void setUpdtDt(Date updtDt) {
        this.updtDt = updtDt;
    }

    /**
     * @return the extrDgreCnt
     */
    public int getExtrDgreCnt() {
        return extrDgreCnt;
    }

    /**
     * @param extrDgreCnt the extrDgreCnt to set
     */
    public void setExtrDgreCnt(int extrDgreCnt) {
        this.extrDgreCnt = extrDgreCnt;
    }

    /**
     * @return the lastExtrDt
     */
    public Date getLastExtrDt() {
        return lastExtrDt;
    }

    /**
     * @param lastExtrDt the lastExtrDt to set
     */
    public void setLastExtrDt(Date lastExtrDt) {
        this.lastExtrDt = lastExtrDt;
    }

    /**
     * @return the startDt
     */
    public Date getStartDt() {
        return startDt;
    }

    /**
     * @param startDt the startDt to set
     */
    public void setStartDt(Date startDt) {
        this.startDt = startDt;
    }

    /**
     * @return the endDt
     */
    public Date getEndDt() {
        return endDt;
    }

    /**
     * @param endDt the endDt to set
     */
    public void setEndDt(Date endDt) {
        this.endDt = endDt;
    }

    /**
     * @return the custExtrTermPrid
     */
    public String getCustExtrTermPrid() {
        return custExtrTermPrid;
    }

    /**
     * @param custExtrTermPrid the custExtrTermPrid to set
     */
    public void setCustExtrTermPrid(String custExtrTermPrid) {
        this.custExtrTermPrid = custExtrTermPrid;
    }

    /**
     * @return the tmpCustExtrAutoYn
     */
    public String getTmpCustExtrAutoYn() {
        return tmpCustExtrAutoYn;
    }

    /**
     * @param tmpCustExtrAutoYn the tmpCustExtrAutoYn to set
     */
    public void setTmpCustExtrAutoYn(String tmpCustExtrAutoYn) {
        this.tmpCustExtrAutoYn = tmpCustExtrAutoYn;
    }

    /**
     * @return the activeTpCdNm
     */
    public String getActiveTpCdNm() {
        return activeTpCdNm;
    }

    /**
     * @param activeTpCdNm the activeTpCdNm to set
     */
    public void setActiveTpCdNm(String activeTpCdNm) {
        this.activeTpCdNm = activeTpCdNm;
    }

    /**
     * @return the custExtrTermCdNm
     */
    public String getCustExtrTermCdNm() {
        return custExtrTermCdNm;
    }

    /**
     * @param custExtrTermCdNm the custExtrTermCdNm to set
     */
    public void setCustExtrTermCdNm(String custExtrTermCdNm) {
        this.custExtrTermCdNm = custExtrTermCdNm;
    }



    /**
     * @return the activeTmplIdNm
     */
    public String getActiveTmplIdNm() {
        return activeTmplIdNm;
    }

    /**
     * @param activeTmplIdNm the activeTmplIdNm to set
     */
    public void setActiveTmplIdNm(String activeTmplIdNm) {
        this.activeTmplIdNm = activeTmplIdNm;
    }

    /**
     * @return the result
     */
    public String getResult() {
        return result;
    }

    /**
     * @param result the result to set
     */
    public void setResult(String result) {
        this.result = result;
    }

    /**
     * @return the smsResvHm
     */
    public String getSmsResvHm() {
        return smsResvHm;
    }

    /**
     * @param smsResvHm the smsResvHm to set
     */
    public void setSmsResvHm(String smsResvHm) {
        this.smsResvHm = smsResvHm;
    }

    /*
     * @see java.lang.Object#toString()
     */
    @Override
    public String toString() {
        return "CustomerCareVO [dlrCd=" + dlrCd + ", custCareSeq=" + custCareSeq + ", custCareNm=" + custCareNm
                + ", activeTpCd=" + activeTpCd + ", autoActiveYn=" + autoActiveYn + ", activeTmplId=" + activeTmplId
                + ", custExtrTermCd=" + custExtrTermCd + ", custExtrAutoYn=" + custExtrAutoYn + ", tmpCustExtrAutoYn="
                + tmpCustExtrAutoYn + ", custExtrTermPrid=" + custExtrTermPrid + ", custCareCont=" + custCareCont
                + ", fileDocNo=" + fileDocNo + ", useYn=" + useYn + ", regUsrId=" + regUsrId + ", regUsrNm=" + regUsrNm
                + ", regDt=" + regDt + ", updtUsrId=" + updtUsrId + ", updtDt=" + updtDt + ", extrDgreCnt="
                + extrDgreCnt + ", lastExtrDt=" + lastExtrDt + ", startDt=" + startDt + ", endDt=" + endDt
                + ", activeTpCdNm=" + activeTpCdNm + ", custExtrTermCdNm=" + custExtrTermCdNm + ", activeTmplIdNm="
                + activeTmplIdNm + ", result=" + result + ", smsResvHm=" + smsResvHm + "]";
    }

}