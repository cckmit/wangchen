package chn.bhmc.dms.mob.api.repair.service.impl;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.apache.commons.lang.StringUtils;
import org.jxls.common.Context;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.stereotype.Service;

import able.com.service.HService;
import able.com.util.fmt.StringUtil;
import able.com.vo.HMap;
import chn.bhmc.dms.core.support.excel.JxlsSupport;
import chn.bhmc.dms.core.util.DateUtil;
import chn.bhmc.dms.core.util.LoginUtil;
import chn.bhmc.dms.core.util.ObjectUtil;
import chn.bhmc.dms.mob.api.repair.dao.RepairPartReservationDAO;
import chn.bhmc.dms.mob.api.repair.service.RepairPartReservationService;
import chn.bhmc.dms.mob.api.repair.vo.PartReservationSearchVO;
import chn.bhmc.dms.mob.api.repair.vo.PartReservationVO;


/**
 * <pre>
 * Statements
 * </pre>
 *
 * @ClassName   : PartReservationServiceImpl.java
 * @Description : 부품예약 ServiceImpl
 * @author KyungMok Kim
 * @since 2016. 5. 19.
 * @version 1.0
 * @see
 * @Modification Information
 * <pre>
 *     since          author              description
 *  ===========    =============    ===========================
 *  2016. 5. 19.   KyungMok Kim     최초 생성
 * </pre>
 */

@Service("RepairPartReservationService")
public class RepairPartReservationServiceImpl extends HService implements RepairPartReservationService, JxlsSupport  {

    @Resource(name="RepairPartReservationDAO")
    RepairPartReservationDAO RepairPartReservationDAO;

    @Override
    public int selectPartReservationByConditionCnt(PartReservationSearchVO searchVO) throws Exception {

        if( StringUtil.nullConvert(searchVO.getsDlrCd()).equals("")){
            searchVO.setsDlrCd(LoginUtil.getDlrCd());
        }
        return RepairPartReservationDAO.selectPartReservationByConditionCnt(searchVO);
    }

    /*
     * {@inheritDoc}
     */
    @Override
    public List<PartReservationVO> selectPartReservationByCondition(PartReservationSearchVO searchVO) throws Exception {

        String dlrCd = LoginUtil.getDlrCd();
        searchVO.setsDlrCd(dlrCd);
        searchVO.setsLangCd(LocaleContextHolder.getLocale().getLanguage());
        List<PartReservationVO> resvList = RepairPartReservationDAO.selectPartReservationByCondition(searchVO);

        return resvList;
    }

    @Override
    public void initJxlsContext(Context context, HMap params) throws Exception {

        PartReservationSearchVO searchVO = new PartReservationSearchVO();
        searchVO.setsLangCd(LocaleContextHolder.getLocale().getLanguage());

        if(!StringUtils.isBlank(params.get("sParResvStartDt").toString())){
            String sSerResvStartFromDt = params.get("sParResvStartDt").toString();
            Date dSerResvStartFromDt = DateUtil.convertToDate(sSerResvStartFromDt);
            searchVO.setsParResvStartDt(dSerResvStartFromDt);
        }
        if(!StringUtils.isBlank(params.get("sParResvEndDt").toString())){
            String sSerResvStartToDt = params.get("sParResvEndDt").toString();
            Date dSerResvStartToDt = DateUtil.convertToDate(sSerResvStartToDt);
            searchVO.setsParResvEndDt(dSerResvStartToDt);
        }
        searchVO.setsLangCd(LocaleContextHolder.getLocale().getLanguage());
        searchVO.setsDlrCd(LoginUtil.getDlrCd());
        ObjectUtil.convertMapToObject(params, searchVO, "beanName", "templateFile", "fileName");

        List<PartReservationVO> list = selectPartReservationByCondition(searchVO);
        context.putVar("items", list);

    }
}