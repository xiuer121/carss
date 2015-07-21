/**
 * @功能 公告的服务层
 */

package carss.service;




import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import carss.dao.BaseDao;
import carss.po.Loan;









@Scope("prototype")						
@Service				
public class LoanService extends BaseService<Loan>{

	@Resource(name="loanDao")
	private  BaseDao<Loan> loanDao;
	
	@Override
	protected BaseDao<Loan> getDAO() {
		return loanDao;
	}



}
