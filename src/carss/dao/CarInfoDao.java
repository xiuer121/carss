package carss.dao;




import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;

import carss.po.CarInfo;




@Scope("prototype")			  
@Repository      
public class CarInfoDao extends BaseDao<CarInfo>{
	

}

