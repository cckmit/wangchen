package chn.bhmc.dms.crm.mcm.service.impl;

import org.joda.time.LocalDate;

import chn.bhmc.dms.core.support.idgen.TableNameStrategy;
import chn.bhmc.dms.core.util.LoginUtil;

/**
 * <pre>
 * Statements
 * </pre>
 *
 * @ClassName   : MakNoTableNameStrategy.java
 * @Description : 클래스 설명을 기술합니다.
 * @author Ju Won Lee
 * @since 2016. 1. 25.
 * @version 1.0
 * @see
 * @Modification Information
 * <pre>
 *     since          author              description
 *  ===========    =============    ===========================
 *  2016. 2. 16.     In Bo Shim     최초 생성
 * </pre>
 */

public class MakNoTableNameStrategy implements TableNameStrategy {

    /*
     * @see chn.bhmc.dms.core.support.idgen.TableNameStrategy#makeTableName(java.lang.String)
     */
    @Override
    public String makeTableName(String originalTableName) {
        return originalTableName + "M" + LoginUtil.getDlrCd() + LocalDate.now().toString("yyyyMM");
    }
}
