package chn.bhmc.dms.cmm.ath.service.dao;

import able.com.mybatis.Mapper;

import chn.bhmc.dms.cmm.ath.vo.MobileMainMappingVO;

/**
 * <pre>
 * Statements
 * </pre>
 *
 * @ClassName   : MobileMainMappingDAO.java
 * @Description : 클래스 설명을 기술합니다.
 * @author Kang Seok Han
 * @since 2017. 5. 18.
 * @version 1.0
 * @see
 * @Modification Information
 * <pre>
 *     since          author              description
 *  ===========    =============    ===========================
 *  2017. 5. 18.   Kang Seok Han    최초 생성
 * </pre>
 */

@Mapper("mobileMainMappingDAO")
public interface MobileMainMappingDAO {

    /**
     * 모바일메인화면-사용자 매핑 정보를 등록한다.
     *
     * @param mobleMainMappingVO 등록할 정보가 담긴 MobileMainMappingVO
     * @return
     * @throws Exception
     */
    public int insertMobileMainMapping(MobileMainMappingVO mobleMainMappingVO);

    /**
     * 모바일메인화면-사용자 매핑 정보를 수정한다.
     *
     * @param mobleMainMappingVO 수정할 정보가 담긴 MobileMainMappingVO
     * @return
     * @throws Exception
     */
    public int updateMobileMainMapping(MobileMainMappingVO mobleMainMappingVO);

    /**
     * 모바일메인화면-사용자 매핑 정보를 삭제한다.
     * @param usrId 사용자 ID
     * @return
     * @throws Exception
     */
    public int deleteMobileMainMapping(String usrId);

    /**
     * 사용자ID에 해당하는 모바일메인화면 정보를 조회한다.
     *
     * @param usrId 사용자ID
     * @return
     * @throws Exception
     */
    public MobileMainMappingVO selectMobileMainMapping(String usrId);
}