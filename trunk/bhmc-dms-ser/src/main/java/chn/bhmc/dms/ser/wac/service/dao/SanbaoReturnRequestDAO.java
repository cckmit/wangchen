package chn.bhmc.dms.ser.wac.service.dao;

import java.util.List;

import able.com.mybatis.Mapper;

import chn.bhmc.dms.ser.wac.vo.SanbaoReturnSearchVO;
import chn.bhmc.dms.ser.wac.vo.SanbaoReturnVO;

/**
 * <pre>
 * Statements
 * </pre>
 *
 * @ClassName   : SanbaoReturnDAO.java
 * @Description : 삼보반품신청 데이터 access
 * @author Kwon ki hyun
 * @since 2016. 7. 26.
 * @version 1.0
 * @see
 * @Modification Information
 * <pre>
 *     since          author              description
 *  ===========    =============    ===========================
 *  2016. 7. 26.     Kwon ki hyun     최초 생성
 * </pre>
 */
@Mapper("sanbaoReturnRequestDAO")
public interface SanbaoReturnRequestDAO {

    /**
     *
     * 삼포반품신청 등록
     *
     * @param returnVO
     * @return
     * @throws Exception
     */
    public int insertSanbaoReturnRequest(SanbaoReturnVO returnVO)throws Exception;

    /**
     *
     * 삼포반품신청 수정
     *
     * @param returnVO
     * @return
     * @throws Exception
     */
    public int updateSanbaoReturnRequest(SanbaoReturnVO returnVO)throws Exception;

    /**
     *
     * 삼포반품신청 상세 조회
     *
     * @param searchVO
     * @return
     * @throws Exception
     */
    public SanbaoReturnVO selectSanbaoReturnRequestByKey(SanbaoReturnSearchVO searchVO)throws Exception;

    /**
     *
     * 삼포 반품승인 그리드 목록수 조회
     *
     * @return
     * @throws Exception
     */
    public int selectSanbaoReturnApproveByConditionCnt(SanbaoReturnSearchVO searchVO)throws Exception;

    /**
     *
     * 삼포 반품승인 그리드 조회
     *
     * @return
     * @throws Exception
     */
    public List<SanbaoReturnVO> selectSanbaoReturnApproveByCondition(SanbaoReturnSearchVO searchVO)throws Exception;


    /**
     *
     * 삼포반품신청 목록 조회
     *
     * @param searchVO
     * @return
     * @throws Exception
     */
    public List<SanbaoReturnVO> selectSanbaoReturnRequestByCondition(SanbaoReturnSearchVO searchVO)throws Exception;
    /**
     *
     * 삼포반품신청 목록수
     *
     * @param searchVO
     * @return
     * @throws Exception
     */
    public int selectSanbaoReturnRequestByConditionCnt(SanbaoReturnSearchVO searchVO)throws Exception;

    /**
     *
     * 삼보 return 요청을 Temp로 저장.
     *
     * @param sanbaoVO - 삼보 요청  목록을 포함하는 sanbaoVO
     * @return bindingResult
     * @throws Exception
     */
    public int insertSanBaoReturnToIf(SanbaoReturnVO sanbaoReturnVO) throws Exception;

    /**
     *
     * 삼보 return 요청  ROLLBACK
     *
     * @param sanbaoVO - 삼보 요청  목록을 포함하는 sanbaoVO
     * @return bindingResult
     * @throws Exception
     */
    public int insertSanBaoReturnToRollBack(SanbaoReturnVO sanbaoReturnVO) throws Exception;

    /**
     *
     * 삼보 return 요청 인터페이스 등록
     *
     * @param sanbaoVO - 삼보 return 요청 인터페이스 등록 목록을 포함하는 sanbaoVO
     * @return bindingResult
     * @throws Exception
     */
    public int insertSanbaoReturnRequestIf(SanbaoReturnVO sanbaoReturnVO) throws Exception;

    /**
     *
     * 삼보 return 요청 인터페이스 삭제
     *
     * @param sanbaoVO - 삼보 return 요청 인터페이스 삭제 목록을 포함하는 sanbaoVO
     * @return bindingResult
     * @throws Exception
     */
    public int deleteSanbaoReturnRequestIf(SanbaoReturnVO sanbaoReturnVO) throws Exception;

    /**
     *
     * 삼보 return 요청 인터페이스 정보 조회
     *
     * @param sanbaoVO - 삼보 return 요청 인터페이스 정보  목록을 포함하는 sanbaoVO
     * @return bindingResult
     * @throws Exception
     */
    public int selectSanbaoReturnRequestIfSendByConditionCnt(SanbaoReturnVO sanbaoReturnVO) throws Exception;

    /**
     *
     * 삼보 return 요청 상태 정보 조회
     *
     * @param sanbaoVO - 삼보 return 요청 상태  정보  목록을 포함하는 sanbaoVO
     * @return bindingResult
     * @throws Exception
     */
    public String selectSanbaoReturnRequestStatCdByKey(SanbaoReturnVO sanbaoReturnVO) throws Exception;

    /**
    *
    * 삼포 반품 승인 사용 여부 수정.
    *
    * @param sanbaoReturnVO
    * @return
    * @throws Exception
    */
    public int updateSanbaoReturnApprovePWA(SanbaoReturnVO sanbaoReturnVO)throws Exception;
}
