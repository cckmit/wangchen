package chn.bhmc.dms.ser.ro.service.impl;

import org.joda.time.LocalDate;

import chn.bhmc.dms.core.support.idgen.AbstractIdGnrStrategyImpl;

/**
 * <pre>
 * Statements
 * </pre>
 *
 * @ClassName   : CarCheckIdGenStrategy.java
 * @Description : 클래스 설명을 기술합니다.
 * @author KyungMok Kim
 * @since 2016. 5. 25.
 * @version 1.0
 * @see
 * @Modification Information
 * <pre>
 *     since          author              description
 *  ===========    =============    ===========================
 *  2016. 5. 25.     KyungMok Kim     최초 생성
 * </pre>
 */

public class CarCheckIdGenStrategy extends AbstractIdGnrStrategyImpl{

     
    @Override
    public String buildPrefix(String prefix) {
        return prefix + LocalDate.now().toString("yyyyMM");
    }
    

}
