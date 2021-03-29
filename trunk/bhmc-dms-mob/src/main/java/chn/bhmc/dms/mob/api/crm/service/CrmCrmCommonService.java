package chn.bhmc.dms.mob.api.crm.service;

import java.util.List;

import chn.bhmc.dms.mob.api.crm.vo.UserVO;

/**
 * <pre>
 * Statements
 * </pre>
 *
 * @ClassName   : CrmCommonService.java
 * @Description : Crm 공통 Service
 * @author In Moon Lee
 * @since 2016.06.02.
 * @version 1.0
 * @see
 * @Modification Information
 * <pre>
 *     since          author              description
 *  ===========    =============    ===========================
 *  2016.06.02.     In Moon Lee     최초 생성
 * </pre>
 */

public interface CrmCrmCommonService {


    /**
     * 판매고문 목록 리스트
     * @param sSysCd 시스템구분 'D':딜러, 'I':법인
     * @param sDlrCd 로그인 사용자 딜러
     * @param sRoleId 역할ID
     * @return
     * @throws Exception
     */
    public List<UserVO> selectMngScIdListByCondition() throws Exception;

    /**
     * 화면-사용자  매핑 목록에서 주어진 퍼미션중 한개라도 있는 사용자 목록을 조회한다.
     * @param listTp 리스트타입 (V:화면, R:롤)
     * @param viewId
     * @param role
     * @param permissionName 퍼미션
     * @param permissionNames 퍼미션 ex) "READ,SEARCHIND,SEARCHALL"
     * @return
     */
    public List<UserVO> selectCrmViewAndRoleMappingUsers(String listType, String viewId, String role, String permissionName, String[] permissionNames) throws Exception;


}
