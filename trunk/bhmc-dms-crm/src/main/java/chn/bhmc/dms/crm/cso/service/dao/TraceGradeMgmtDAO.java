package chn.bhmc.dms.crm.cso.service.dao;

import java.util.List;

import able.com.mybatis.Mapper;

import chn.bhmc.dms.crm.cso.vo.TraceGradeMgmtSearchVO;
import chn.bhmc.dms.crm.cso.vo.TraceGradeMgmtVO;

/**
 * <pre>
 * 추적 등급별 다음 추적일 설정 관리에 관한 데이터처리 매퍼 클래스
 * </pre>
 *
 * @ClassName   : TraceGradeMgmtDAO.java
 * @Description : TraceGradeMgmtDAO
 * @author Jin Choi
 * @since 2017. 2. 6.
 * @version 1.0
 * @see
 * @Modification Information
 * <pre>
 *     since          author              description
 *  ===========    =============    ===========================
 *  2017. 2. 6.     Jin Choi     최초 생성
 * </pre>
 */
@Mapper("traceGradeMgmtDAO")
public interface TraceGradeMgmtDAO {

    // 추적일이 등록 된 목록수를 조회한다.
    public int selectTraceGradeAssigedMgmtsByCnt(TraceGradeMgmtSearchVO searchVO) throws Exception;

    // 추적일 설정 목록수를 조회한다.
    public int selectTraceGradeMgmtsByCnt(TraceGradeMgmtSearchVO searchVO) throws Exception;

    // 추적일 설정 목록을 조회한다.
    public List<TraceGradeMgmtVO> selectTraceGradeMgmts(TraceGradeMgmtSearchVO searchVO) throws Exception;

    // 추적일 설정 정보를 저장한다.
    public int insertTraceGrade(TraceGradeMgmtVO TraceGradeMgmtVO) throws Exception;

    // 추적일 설정 정보를 업데이트한다.
    public int updateTraceGrade(TraceGradeMgmtVO TraceGradeMgmtVO) throws Exception;

}
