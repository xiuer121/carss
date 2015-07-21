/**
 * @功能 公告表
 */

package carss.po;

import static javax.persistence.GenerationType.IDENTITY;

 

import javax.persistence.Column;
import javax.persistence.Entity; 
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
 
import javax.persistence.Table;
 
 

@Entity
@org.hibernate.annotations.Entity(dynamicUpdate = true, dynamicInsert = true)
@Table(name = "ad_rool")
public class AdRoll implements java.io.Serializable {

	private static final long serialVersionUID = 1L;

	private Integer id; // 编号
	private String adUrl; // 滚动广告地址
	private String imgPaht; // 滚动图片地址

	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "id", unique = true, nullable = false)
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getAdUrl() {
		return adUrl;
	}

	public void setAdUrl(String adUrl) {
		this.adUrl = adUrl;
	}

	public String getImgPaht() {
		return imgPaht;
	}

	public void setImgPaht(String imgPaht) {
		this.imgPaht = imgPaht;
	}

}