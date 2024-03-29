package chn.bhmc.dms.crm.dmm.service.dao;

import java.util.List;

import able.com.mybatis.Mapper;

import chn.bhmc.dms.crm.dmm.vo.BlueMembershipJoinSearchVO;
import chn.bhmc.dms.crm.dmm.vo.BlueMembershipJoinVO;

/**
 * <pre>
 * Statements
 * </pre>
 *
 * @ClassName   : BlueMembershipJoinHistoryDAO.java
 * @Description : 블루멤버십 인증 히스토리 DAO
 * @author Lee In Moon
 * @since 2016.09.28.
 * @version 1.0
 * @see
 * @Modification Information
 * <pre>
 *     since          author              description
 *  ===========    =============    ===========================
 *  2016.09.28.     Lee In Moon     최초 생성
 * </pre>
 */

@Mapper("blueMembershipJoinHistorySupportDAO")
public interface BlueMembershipJoinHistorySupportDAO {

    /**
     * 조회 조건에 해당하는 블루멤버십 가입 총 인원수를 조회한다.
     * @param searchVO - 조회 조건을 포함하는 MembershipCardSearchVO
     * @return
     */
    public int selectBlueMembershipJoinHistorysByConditionCnt(BlueMembershipJoinSearchVO searchVO) throws Exception;

    /**
     * 조회 조건에 해당하는 블루멤버십 가입정보를 조회한다.
     * @param searchVO - 조회 조건을 포함하는 BlueMembershipSearchVO
     * @return 조회 목록
     */
    public List<BlueMembershipJoinVO> selectBlueMembershipJoinHistorysByCondition(BlueMembershipJoinSearchVO searchVO) throws Exception;

}
