/**
 * @功能 公告的服务层
 */

package carss.service;




import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import carss.dao.BaseDao;
import carss.po.Notice;









@Scope("prototype")						
@Service				
public class NoticeService extends BaseService<Notice>{

	@Resource(name="noticeDao")
	private  BaseDao<Notice> noticeDao;
	
	@Override
	protected BaseDao<Notice> getDAO() {
		return noticeDao;
	}



}
