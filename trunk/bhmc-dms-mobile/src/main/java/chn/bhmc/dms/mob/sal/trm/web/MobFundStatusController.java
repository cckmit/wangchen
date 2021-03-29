package chn.bhmc.dms.mob.sal.trm.web;

import able.com.web.HController;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import chn.bhmc.dms.mob.cmm.util.MobUtil;
import chn.bhmc.dms.mob.cmm.vo.MobLoginVO;

import chn.bhmc.dms.core.util.LoginUtil;

import chn.bhmc.dms.core.util.DateUtil;

/**
 * <pre>
 * Statements
 * </pre>
 *
 * @ClassName   : MobDayFundStatusController.java
 * @Description : 클래스 설명을 기술합니다.
 * @author HG
 * @since 2017. 2. 19.
 * @version 1.0
 * @see
 * @Modification Information
 * <pre>
 *     since          author              description
 *  ===========    =============    ===========================
 *  2017. 2. 19.     HG                 최초 생성
 * </pre>
 */

@Controller
@RequestMapping(value = "/mob/sal/trm/fundStatus")
public class MobFundStatusController extends HController{

     /**
     * 월자금현황 View 을 출력한다.
     * @return
     */
    @RequestMapping(value = "/selectFundStatusMain.do", method = RequestMethod.GET)
    public String selectFundStatusMain(Model model) throws Exception {

        MobLoginVO mobLoginVO = MobUtil.getLoginVO();
        model.addAttribute("userId", LoginUtil.getUserId());
        model.addAttribute("userNm", LoginUtil.getUserNm());
        model.addAttribute("dlrCd", LoginUtil.getDlrCd());
        model.addAttribute("dlrNm", mobLoginVO.getDlrNm());

       // 현재일자 DateUtil
        String sysDate      = DateUtil.getDate("yyyy-MM-dd");
        model.addAttribute("toDay", sysDate);
        model.addAttribute("userId", LoginUtil.getUserId());
        model.addAttribute("dlrCd", LoginUtil.getDlrCd());

        model.addAttribute("_urlBaseJsp", "/WEB-INF/jsp/ZnewMob/sal/trm/fundStatus/baseJsp/selectFundStatusMain.jsp");

        return "/ZnewMob/templatesNewMob/mobTemplateA";
    }

     /**
     * 월자금현황 LIST 을 출력한다.
     * @return
     */
    @RequestMapping(value = "/selectFundStatusList.do", method = RequestMethod.GET)
    public String selectFundStatusList(Model model) throws Exception {
        return "/mob/sal/trm/fundStatus/selectFundStatusList";
    }

     /**
     * 월자금현황 HEAD LIST 을 출력한다.
     * @return
     */
    @RequestMapping(value = "/selectFundStatusHeadList.do", method = RequestMethod.GET)
    public String selectFundStatusHeadList(Model model) throws Exception {
        return "/mob/sal/trm/fundStatus/selectFundStatusHeadList";
    }

}
