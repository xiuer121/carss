/**
 * @功能 公告的服务层
 */

package carss.service;




import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import carss.dao.BaseDao;
import carss.po.AdRoll;









@Scope("prototype")						
@Service				
public class AdRollService extends BaseService<AdRoll>{

	@Resource(name="adRollDao")
	private  BaseDao<AdRoll> adRollDao;
	
	@Override
	protected BaseDao<AdRoll> getDAO() {
		return adRollDao;
	}



}
