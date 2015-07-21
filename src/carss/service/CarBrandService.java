/**
 * @功能 公告的服务层
 */

package carss.service;




import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import carss.dao.BaseDao;
import carss.po.CarBrand;









@Scope("prototype")						
@Service				
public class CarBrandService extends BaseService<CarBrand>{

	@Resource(name="carBrandDao")
	private  BaseDao<CarBrand> carBrandDao;
	
	@Override
	protected BaseDao<CarBrand> getDAO() {
		return carBrandDao;
	}



}
