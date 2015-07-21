/**
 * @功能 公告的服务层
 */

package carss.service;




import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import carss.dao.BaseDao;
import carss.po.Cooperation;









@Scope("prototype")						
@Service				
public class CooperationService extends BaseService<Cooperation>{

	@Resource(name="cooperationDao")
	private  BaseDao<Cooperation> cooperationDao;
	
	@Override
	protected BaseDao<Cooperation> getDAO() {
		return cooperationDao;
	}



}
