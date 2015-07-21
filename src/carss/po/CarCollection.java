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
@Table(name = "car_collection")
public class CarCollection implements java.io.Serializable {

	private static final long serialVersionUID = 1L; 

	private Integer id;					//编号  
	private Member member;				//作者
	private CarInfo carInfo;			//车辆
	private Date commitDate;			//时间
	
	
	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "id", unique = true, nullable = false)
	public Integer getId() {
		return this.id;
	}
	public void setId(Integer id) {
		this.id = id;
	}

 
	
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "commit_date")
	public Date getCommitDate() {
		return commitDate;
	}
	public void setCommitDate(Date commitDate) {
		this.commitDate = commitDate;
	}
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="member_id")
	public Member getMember() {
		return member;
	}
	public void setMember(Member member) {
		this.member = member;
	}
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="car_info_id")
	public CarInfo getCarInfo() {
		return carInfo;
	}
	public void setCarInfo(CarInfo carInfo) {
		this.carInfo = carInfo;
	}
 
	
	
	
}