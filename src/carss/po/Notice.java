/**
 * @功能 公告表
 */

package carss.po;

import static javax.persistence.GenerationType.IDENTITY;



import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import carss.po.auth.Admin;







@Entity
@org.hibernate.annotations.Entity(dynamicUpdate=true,dynamicInsert=true)
@Table(name = "notice")
public class Notice implements java.io.Serializable {

	private static final long serialVersionUID = 1L; 

	private Integer id;					//编号
	private Integer top;				//置顶
	private String title;				//标题
	private String content;				//正文
	private Admin admin;				//作者
	private Integer fileNum;			//附件数
	private String operIp;				//IP地址
	private Date commitDate;			//时间
	private Date newDate;				//标志时间

	private CatalogNotice catalogNotice; 
	
	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "id", unique = true, nullable = false)
	public Integer getId() {
		return this.id;
	}
	public void setId(Integer id) {
		this.id = id;
	}

	@Column(name = "title")
	public String getTitle() {
		return this.title;
	}
	public void setTitle(String title) {
		this.title = title;
	}

	@Column(name = "content", length = 65535)
	public String getContent() {
		return this.content;
	}
	public void setContent(String content) {
		this.content = content;
	}

	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="admin_id")
	public Admin getAdmin() {
		return admin;
	}
	public void setAdmin(Admin admin) {
		this.admin = admin;
	}
	
	@Column(name = "oper_ip")
	public String getOperIp() {
		return this.operIp;
	}
	public void setOperIp(String operIp) {
		this.operIp = operIp;
	}

	
	@Column(name = "file_num")
	public Integer getFileNum() {
		return fileNum;
	}
	public void setFileNum(Integer fileNum) {
		this.fileNum = fileNum;
	}
	
	@Column(name = "top")
	public Integer getTop() {
		return top;
	}
	public void setTop(Integer top) {
		this.top = top;
	}
	
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "commit_date")
	public Date getCommitDate() {
		return commitDate;
	}
	public void setCommitDate(Date commitDate) {
		this.commitDate = commitDate;
	}
	
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "new_date")
	public Date getNewDate() {
		return newDate;
	}
	public void setNewDate(Date newDate) {
		this.newDate = newDate;
	}
	
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="catalog_id")
	public CatalogNotice getCatalogNotice() {
		return catalogNotice;
	}
	public void setCatalogNotice(CatalogNotice catalogNotice) {
		this.catalogNotice = catalogNotice;
	}
	
	
	
}