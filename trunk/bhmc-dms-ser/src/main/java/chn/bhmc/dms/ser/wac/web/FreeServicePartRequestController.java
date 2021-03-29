package chn.bhmc.dms.ser.wac.web;

import java.util.Calendar;
import java.util.Date;

import javax.annotation.Resource;

import able.com.web.HController;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import chn.bhmc.dms.cmm.sci.service.CommonCodeService;
import chn.bhmc.dms.cmm.sci.service.FileMgrService;
import chn.bhmc.dms.cmm.sci.service.SystemConfigInfoService;
import chn.bhmc.dms.cmm.sci.vo.FileDocVO;
import chn.bhmc.dms.core.datatype.SearchResult;
import chn.bhmc.dms.core.support.camel.CamelClientFactory;
import chn.bhmc.dms.core.util.DateUtil;
import chn.bhmc.dms.core.util.LoginUtil;
import chn.bhmc.dms.ser.wac.service.FreeServicePartService;
import chn.bhmc.dms.ser.wac.vo.FreeServicePartSearchVO;
import chn.bhmc.dms.ser.wac.vo.FreeServicePartVO;

/**
 * <pre>
 * Statements
 * </pre>
 *
 * @ClassName   : FreeServicePartRequestController.java
 * @Description : 클래스 설명을 기술합니다.
 * @author Kwon Ki Hyun
 * @since 2016. 6. 13.
 * @version 1.0
 * @see
 * @Modification Information
 * <pre>
 *     since          author              description
 *  ===========    =============    ===========================
 *  2016. 6. 13.     Kwon Ki Hyun     최초 생성
 * </pre>
 */
@Controller
public class FreeServicePartRequestController extends HController{


    @Autowired
    CommonCodeService commonCodeService;

    @Resource(name="freeServicePartService")
    FreeServicePartService freeServicePartService;

    @Resource(name="camelClientFactory")
    CamelClientFactory camelClientFactory;

    /**
     * 파일관리 서비스
     */
    @Autowired
    FileMgrService fileMgrService;

    /**
     *  시스템 설정정보
     */
    @Resource(name="systemConfigInfoService")
    SystemConfigInfoService systemConfigInfoService;

    /**
    *
    * 면비보양부품 요청 화면 메인
    *
    * @param model
    * @return 면비보양부품 요청 화면
    * @throws Exception
    */
   @RequestMapping(value="/ser/wac/freeServicePart/selectFreeServicePartReqeustMain.do", method = RequestMethod.GET)
   public String selectFreeServicePartReqeustMain(Model model)throws Exception{

       String langCd = LocaleContextHolder.getLocale().getLanguage();
       String dateFormat = systemConfigInfoService.selectStrValueByKey("dateFormat");

       model.addAttribute("sToDt", DateUtil.getDate(dateFormat));
       model.addAttribute("sFromDt", DateUtil.getDate(DateUtil.add(new Date(), Calendar.DATE, -15), dateFormat) );

       //공통코드 : 면비부품상태
       model.addAttribute("freeItemStatDs", commonCodeService.selectCommonCodesByCmmGrpCd("SER112", null, langCd));
       //공통코드 : 면비부품유형
       model.addAttribute("freeItemTp", commonCodeService.selectCommonCodesByCmmGrpCd("SER113", null, langCd));
       model.addAttribute("preFixId", "DLR");

       return "/ser/wac/freeServicePart/selectFreeServicePartReqeustMain";

   }

   /**
    *
    * 면비부품 목록 조회
    *
    * @param searchVO
    * @return
    * @throws Exception
    */
   @RequestMapping(value="/ser/wac/freeServicePart/selectFreeServiceParts.do", method = RequestMethod.POST)
   @ResponseBody
   public SearchResult selectFreeServiceParts(@RequestBody FreeServicePartSearchVO searchVO)throws Exception{

       SearchResult result = new SearchResult();

       result.setTotal(freeServicePartService.selectFreeServicePartByConditionCnt(searchVO));
       if(result.getTotal() != 0){
           result.setData(freeServicePartService.selectFreeServicePartByCondition(searchVO));
       }

       return result;

   }

   /**
    *
    * 면비부품 상세 조회
    *
    * @param searchVO
    * @return
    * @throws Exception
    */
   @RequestMapping(value="/ser/wac/freeServicePart/selectFreeServicePartByKey.do", method = RequestMethod.POST)
   @ResponseBody
   public FreeServicePartVO selectFreeServicePartByKey(@RequestBody FreeServicePartSearchVO searchVO)throws Exception{

       return freeServicePartService.selectFreeServicePartByKey(searchVO);

   }

   /**
    *
    * 면비부품 등록 / 수정
    *
    * @param freeServicePartVO
    * @return
    * @throws Exception
    */
   @RequestMapping(value="/ser/wac/freeServicePart/multiFreeServicePart.do", method = RequestMethod.POST)
   @ResponseBody
   public String multiFreeServicePart(@RequestBody @Validated FreeServicePartVO freeServicePartVO)throws Exception{
       String freeItemDocNo = freeServicePartService.multiFreeServicePart(freeServicePartVO);

       String fileNo = freeServicePartVO.getFileKeyNm();
       if(StringUtils.isNotBlank(fileNo)){
           fileMgrService.updateFileDocEnabled(new FileDocVO(fileNo, LoginUtil.getUserId()));
       }


       return freeItemDocNo;
   }

   /**
    *
    * 면비부품  삭제
    *
    * @param freeServicePartVO
    * @return
    * @throws Exception
    */
   @RequestMapping(value="/ser/wac/freeServicePart/deleteFreeServicePart.do", method = RequestMethod.POST)
   @ResponseBody
   public int deleteFreeServicePart(@RequestBody @Validated FreeServicePartVO freeServicePartVO)throws Exception{

       return freeServicePartService.deleteFreeServicePart(freeServicePartVO);
   }

}