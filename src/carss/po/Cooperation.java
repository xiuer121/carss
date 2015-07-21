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
@Table(name = "cooperation")
public class Cooperation implements java.io.Serializable {

	private static final long serialVersionUID = 1L; 

	private Integer id;					//编号
 
	private String title;				//标题 
	private Admin admin;				//作者 
	private Date commitDate;			//时间
	
	private String urlLink;  			//网址
	private String logoPath;				//logo地址
 
	
	private Integer imgType;			//类型 10合作品牌 20轮播
	
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
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="admin_id")
	public Admin getAdmin() {
		return admin;
	}
	public void setAdmin(Admin admin) {
		this.admin = admin;
	}
	  
	
	
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "commit_date")
	public Date getCommitDate() {
		return commitDate;
	}
	public void setCommitDate(Date commitDate) {
		this.commitDate = commitDate;
	}
	public String getUrlLink() {
		return urlLink;
	}
	public void setUrlLink(String urlLink) {
		this.urlLink = urlLink;
	}
	public String getLogoPath() {
		return logoPath;
	}
	public void setLogoPath(String logoPath) {
		this.logoPath = logoPath;
	}
	public Integer getImgType() {
		return imgType;
	}
	public void setImgType(Integer imgType) {
		this.imgType = imgType;
	}
 
	
	
	
}