package carss.dao;




import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;

import carss.po.CarBrand;




@Scope("prototype")			  
@Repository      
public class CarBrandDao extends BaseDao<CarBrand>{
	

}

