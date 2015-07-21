/**
 * @���� ����ķ����
 */

package carss.service;




import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import carss.dao.BaseDao;
import carss.po.CarInfo;









@Scope("prototype")						
@Service				
public class CarInfoService extends BaseService<CarInfo>{

	@Resource(name="carInfoDao")
	private  BaseDao<CarInfo> carInfoDao;
	
	@Override
	protected BaseDao<CarInfo> getDAO() {
		return carInfoDao;
	}



}
