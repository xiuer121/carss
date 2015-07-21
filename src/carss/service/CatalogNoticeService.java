/**
 * @功能 公告的服务层
 */

package carss.service;




import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import carss.dao.BaseDao;
import carss.po.CatalogNotice;









@Scope("prototype")						
@Service				
public class CatalogNoticeService extends BaseService<CatalogNotice>{

	@Resource(name="catalogNoticeDao")
	private  BaseDao<CatalogNotice> catalogNoticeDao;
	
	@Override
	protected BaseDao<CatalogNotice> getDAO() {
		return catalogNoticeDao;
	}



}
