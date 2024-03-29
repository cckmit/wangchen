package chn.bhmc.dms.sal.cnt.service.impl;

import org.joda.time.LocalDate;

import chn.bhmc.dms.core.support.idgen.TableNameStrategy;

/**
 * 소매 집단판매 키 구현 클래스
 *
 * @author Jin Suk Kim
 * @since 2016. 5. 25.
 * @version 1.0
 * @see <pre>
 *  == 개정이력(Modification Information) ==
 *
 *      수정일           수정자                     수정내용
 *  ===========    =============    ===========================
 *  2016. 5. 25.    Jin Suk Kim      최초 생성
 * </pre>
 */
public class RetailContractPackageTableNameStrategy implements TableNameStrategy {

    /*
     * @see chn.bhmc.dms.core.support.idgen.TableNameStrategy#makeTableName(java.lang.String)
     */
    @Override
    public String makeTableName(String originalTableName) {
        return originalTableName + LocalDate.now().toString("yyyy");
    }

}
