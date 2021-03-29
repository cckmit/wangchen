package chn.bhmc.dms.bat.crm.cso;

import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.springframework.beans.factory.annotation.Autowired;

import chn.bhmc.dms.bat.crm.cso.service.BatIfShowRoomDmsDcsService;
import chn.bhmc.dms.bat.mgr.service.BaseJobBean;

/**
 * <pre>
 * Statements
 * </pre>
 *
 * @ClassName   : SalesOpptDmsDcsInterfaceBatchJobBean
 * @Description : DMS-DCS 고객정보전송을 위한 데이터 수집
 * @author LEE KYOJIN
 * @since 2016. 5. 19.
 * @version 1.0
 * @see
 * @Modification Information
 * <pre>
 *     since          author              description
 *  ===========    =============    ===========================
 *  2016. 5. 19.     LEE KYOJIN     최초 생성
 * </pre>
 */

public class ShowRoomDmsDcsInterfaceBatchJobBean extends BaseJobBean {
    
	@Autowired
    BatIfShowRoomDmsDcsService batIfShowRoomDmsDcsService;

    @Override
    protected void executeJob(JobExecutionContext context)
            throws JobExecutionException {
        try {
            //배치 업무로직을 구현한 서비스 객체를 구한다.
            //BatIfShowRoomDmsDcsService batIfShowRoomDmsDcsService = getBean(BatIfShowRoomDmsDcsService.class);
            
        	//배치 업무로직을 구현한 서비스 객체의 메소드를 실행하여 작업을 수행한다.
            //int cntChk =
            batIfShowRoomDmsDcsService.selectShowRoomDmsDcs();
        } catch (Exception e){
            throw new JobExecutionException(e.getMessage(), e);
        }
    }
}