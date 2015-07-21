/**
 * @功能 公告的服务层
 */

package carss.service;




import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import carss.dao.BaseDao;
import carss.po.CarCollection;
import carss.po.CarImg;









@Scope("prototype")						
@Service				
public class CarCollectionService extends BaseService<CarCollection>{

	@Resource(name="carCollectionDao")
	private  BaseDao<CarCollection> carCollectionDao;
	
	@Override
	protected BaseDao<CarCollection> getDAO() {
		return carCollectionDao;
	}



}
