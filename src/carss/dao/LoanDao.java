package carss.dao;




import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;

import carss.po.Loan;




@Scope("prototype")			  
@Repository      
public class LoanDao extends BaseDao<Loan>{
	

}

