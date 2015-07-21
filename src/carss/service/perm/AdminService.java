/**
 * @���� ����Ա�ķ����
 */

package carss.service.perm;




import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import carss.dao.BaseDao;
import carss.dao.perm.AdminDao;
import carss.po.auth.Admin;
import carss.service.BaseService;







@Scope("prototype")						
@Service				
public class AdminService extends BaseService<Admin>{

	@Resource(name="adminDao")
	private  BaseDao<Admin> adminDao;
	
	@Override
	protected BaseDao<Admin> getDAO() {
		return adminDao;
	}

	/**
	 * @���� �����û�����ö���
	 */
	public Admin getByLoginName(String loginName){
		return ((AdminDao)adminDao).getByLoginName(loginName);
		
	}
	
	

}
