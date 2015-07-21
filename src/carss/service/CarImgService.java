/**
 * @功能 公告的服务层
 */

package carss.service;




import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import carss.dao.BaseDao;
import carss.po.CarImg;









@Scope("prototype")						
@Service				
public class CarImgService extends BaseService<CarImg>{

	@Resource(name="carImgDao")
	private  BaseDao<CarImg> carImgDao;
	
	@Override
	protected BaseDao<CarImg> getDAO() {
		return carImgDao;
	}



}
