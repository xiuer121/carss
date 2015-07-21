package carss.dao;




import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;

import carss.po.Notice;




@Scope("prototype")			  
@Repository      
public class NoticeDao extends BaseDao<Notice>{
	

}

