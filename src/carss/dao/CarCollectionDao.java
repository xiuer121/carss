package carss.dao;




import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;

import carss.po.CarCollection;




@Scope("prototype")			  
@Repository      
public class CarCollectionDao extends BaseDao<CarCollection>{
	

}

