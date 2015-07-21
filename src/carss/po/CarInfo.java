/**
 * @���� �����
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

import org.springframework.transaction.annotation.Transactional;

import carss.po.auth.Admin;

@Entity
@org.hibernate.annotations.Entity(dynamicUpdate = true, dynamicInsert = true)
@Table(name = "car_info")
public class CarInfo implements java.io.Serializable {

	private static final long serialVersionUID = 1L;

	private Integer id; // ���
	private Integer carType; // �������� 10�ܳ� 20 �γ� 30 suv 40 ����
	private String title; // ��������
	private String condition; // ����
	private String travel; // �г�
	private String discharge;		//����
	private String creabox; // ������
	private String driveMode; // ����ģʽ
	private String color; // ������ɫ
	private String used; // ����ԭ��;
	private String colorIn; // ������ɫ
	private String procedures; // ����
	private String seatNum; // ��λ��
	private String chair; // ����
	private String place; // ����
	private String fuel; // ȼ��
	private Date commitDate; // ¼��ʱ��
	private Date updateDate; // �޸�ʱ��
	private String description; //����
	private String imagePath;    //�����ַ
	
	private CarBrand brandId; // Ʒ��
	private Admin commitAdmin; // ¼����
	private Admin updateAdmin; // �޸���

	private Double price; // �۸�
	private Integer commission; // Ӷ��
	
	
	private Double originalPrice;  //ԭ�۸�
	private String recState;		//�Ƽ�			10��20��
	private String hotState;		//����			10��20��
	
	private Integer priceInt;		//�۸���������*10000
	
	private Integer sellState;		// Ĭ��10  20�¼� ������ʶ100 
	
	
	private Integer yueNum;			//ԤԼ����
	private Integer cangNum;		//�ղ�����
	
	private Date xianDate;
	
	private Integer xianState;         //�Ƿ���ʱ        10��20��
	
	
 

	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "id", unique = true, nullable = false)
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Integer getCarType() {
		return carType;
	}

	public void setCarType(Integer carType) {
		this.carType = carType;
	}
	@Column(name = "conditions")
	public String getCondition() {
		return condition;
	}

	public void setCondition(String condition) {
		this.condition = condition;
	}

	public String getTravel() {
		return travel;
	}

	public void setTravel(String travel) {
		this.travel = travel;
	}

	public String getDischarge() {
		return discharge;
	}

	public void setDischarge(String discharge) {
		this.discharge = discharge;
	}

	public String getCreabox() {
		return creabox;
	}

	public void setCreabox(String creabox) {
		this.creabox = creabox;
	}

	public String getDriveMode() {
		return driveMode;
	}

	public void setDriveMode(String driveMode) {
		this.driveMode = driveMode;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public String getUsed() {
		return used;
	}

	public void setUsed(String used) {
		this.used = used;
	}

	public String getColorIn() {
		return colorIn;
	}

	public void setColorIn(String colorIn) {
		this.colorIn = colorIn;
	}

	public String getProcedures() {
		return procedures;
	}

	public void setProcedures(String procedures) {
		this.procedures = procedures;
	}

	public String getSeatNum() {
		return seatNum;
	}

	public void setSeatNum(String seatNum) {
		this.seatNum = seatNum;
	}

	public String getChair() {
		return chair;
	}

	public void setChair(String chair) {
		this.chair = chair;
	}

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	public String getFuel() {
		return fuel;
	}

	public void setFuel(String fuel) {
		this.fuel = fuel;
	}

	public Date getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}
 

	public Integer getCommission() {
		return commission;
	}

	public void setCommission(Integer commission) {
		this.commission = commission;
	}

	
	
	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	
	

	public String getImagePath() {
		return imagePath;
	}

	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "brand_id")
	public CarBrand getBrandId() {
		return brandId;
	}

	public void setBrandId(CarBrand brandId) {
		this.brandId = brandId;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "admin_id")
	public Admin getCommitAdmin() {
		return commitAdmin;
	}

	public void setCommitAdmin(Admin commitAdmin) {
		this.commitAdmin = commitAdmin;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "update_admin_id")
	public Admin getUpdateAdmin() {
		return updateAdmin;
	}

	public void setUpdateAdmin(Admin updateAdmin) {
		this.updateAdmin = updateAdmin;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "commit_date")
	public Date getCommitDate() {
		return commitDate;
	}

	public void setCommitDate(Date commitDate) {
		this.commitDate = commitDate;
	}
 
	public String getRecState() {
		return recState;
	}

	public void setRecState(String recState) {
		this.recState = recState;
	}

	public String getHotState() {
		return hotState;
	}

	public void setHotState(String hotState) {
		this.hotState = hotState;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public Double getOriginalPrice() {
		return originalPrice;
	}

	public void setOriginalPrice(Double originalPrice) {
		this.originalPrice = originalPrice;
	}

	public Integer getPriceInt() {
		return priceInt;
	}

	public void setPriceInt(Integer priceInt) {
		this.priceInt = priceInt;
	}

	public Integer getSellState() {
		return sellState;
	}

	public void setSellState(Integer sellState) {
		this.sellState = sellState;
	}

	public Integer getYueNum() {
		return yueNum;
	}

	public void setYueNum(Integer yueNum) {
		this.yueNum = yueNum;
	}

	public Integer getCangNum() {
		return cangNum;
	}

	public void setCangNum(Integer cangNum) {
		this.cangNum = cangNum;
	}

	public Date getXianDate() {
		return xianDate;
	}

	public void setXianDate(Date xianDate) {
		this.xianDate = xianDate;
	}

	public Integer getXianState() {
		return xianState;
	}

	public void setXianState(Integer xianState) {
		this.xianState = xianState;
	}

	
	
 
	
	
	
}