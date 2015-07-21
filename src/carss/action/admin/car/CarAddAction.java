/**
 * @���� ע��Ͷ����
 */

package carss.action.admin.car;

import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import carss.po.CarBrand;
import carss.po.CarImg;
import carss.po.CarInfo;
import carss.po.auth.Admin;
import carss.service.CarBrandService;
import carss.service.CarImgService;
import carss.service.CarInfoService;
import carss.service.perm.AdminService;
import carss.util.FileTool;
import carss.vo.LoginAdmin;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@Controller
@Scope("prototype")
@Results({ @Result(type = "redirectAction", location = "car-list"),
		@Result(name = "input", location = "car-info-add.jsp") })
public class CarAddAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	@Resource
	private CarInfoService carInfoService;
	@Resource
	private CarImgService carImgService;
	@Resource
	private AdminService adminService;

	@Resource
	private CarBrandService carBrandService;

	private Integer id;
	private Double price; // �۸�
	private Integer commission; // Ӷ��

	private List<CarBrand> list = new ArrayList<CarBrand>();

	private Integer carType; // �������� 10�ܳ� 20 �γ� 30 suv 40 ����

	private String title; // ��������
	private String condition; // ����
	private String travel; // �г�
	private String discharge;
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
	private String description; // ����

	private File file; // �ļ�����
	private String fileFileName; // �ļ�����
	private String fileContentType; // �ļ�����
	private String ext; // ��׺��

	private Double originalPrice; // ԭ�۸�
	private String recState; // �Ƽ� 10��
	private String hotState; // ���� 10��

	private Integer xianNum; // ��ʱ����

	private Integer brandId;

	// ��������

	public String show() {
		// �ȱ����Ʒ����
		CarInfo one = new CarInfo();
		LoginAdmin loginAdmin = (LoginAdmin) ActionContext.getContext()
				.getSession().get("loginAdmin");

		Admin commitAdmin = adminService.get(loginAdmin.getId());
		one.setCommitAdmin(commitAdmin);

		list = carBrandService.getList();

		this.carInfoService.save(one);
		this.id = one.getId();
		return this.INPUT;
	}

	/**
	 * @���� ����Ͷ����
	 */
	public String add() {

		CarBrand carBrand = carBrandService.get(brandId);

		CarInfo one = carInfoService.get(id);
		one.setPrice(this.price); // �۸�
		Integer priceInt = (int) (price * 10000);
		one.setPriceInt(priceInt);
		one.setCommission(commission);
		one.setTitle(title);
		one.setDescription(this.description); // ����
		one.setCarType(carType);
		one.setCommitDate(new Date()); // ����ʱ��
		one.setCondition(condition);
		one.setTravel(travel);
		one.setCreabox(creabox);
		one.setDriveMode(driveMode);
		one.setColor(color);
		one.setProcedures(procedures);
		one.setSeatNum(seatNum);
		one.setChair(chair);
		one.setPlace(place);
		one.setFuel(fuel);
		one.setDischarge(discharge);
		one.setColorIn(colorIn);
		one.setHotState(hotState);
		one.setRecState(recState);
		one.setOriginalPrice(originalPrice);
		one.setBrandId(carBrand);
		one.setUsed(used);
		one.setSellState(10);

		// ����ǰ̨�������ʱ��������ȡ��ʱʱ��
		if (xianNum != null) {
			Calendar calendar = Calendar.getInstance();
			calendar.set(calendar.DATE, calendar.get(calendar.DATE) + xianNum);
			one.setXianDate(calendar.getTime());
		}

		// �ж���û��ͼƬ�ϴ�
		if (file != null) {
			// ��ʾ����

			// ��ƷͼƬ
			CarImg img = new CarImg();
			img.setCarInfo(one);
			this.carImgService.save(img);
			FileTool fileTool = new FileTool();
			String imgPath = fileTool.saveProductImg(this.file,
					this.fileFileName);
			img.setImgPath(imgPath);
			one.setImagePath(imgPath);
		}
		this.carInfoService.update(one);
		return SUCCESS;

	}

	/**
	 * @���� ����Ͷ����У��
	 */
	public void validateAdd() {

		// ������ϴ���ʽ�������ʽ�Ƿ���ȷ
		if (file != null) {
			// ��׺��
			this.ext = this.fileFileName.substring(
					this.fileFileName.lastIndexOf('.') + 1).toLowerCase();

			List<String> arrowType = Arrays.asList("image/gif", "image/jpg",
					"image/jpeg", "image/pjpeg", "image/png", "image/bmp",
					"image/x-png");
			List<String> arrowExt = Arrays.asList("gif", "jpg", "jpeg", "png",
					"bmp");

			if (!(arrowType.contains(fileContentType.toLowerCase()) && arrowExt
					.contains(this.ext))) {
				this.addActionError("�ϴ��ļ�ֻ����gif/jpg/jpeg/png/bmp����,�����ļ�����Ϊ��"
						+ fileContentType);
			}

			if (this.file.length() > (5 * 1024 * 1024)) {
				this.addActionError("ͼƬ��С���ܴ���5M!");
			}

		}

	}

	public Integer getCommission() {
		return commission;
	}

	public void setCommission(Integer commission) {
		this.commission = commission;
	}

	public Integer getCarType() {
		return carType;
	}

	public void setCarType(Integer carType) {
		this.carType = carType;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

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

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public File getFile() {
		return file;
	}

	public void setFile(File file) {
		this.file = file;
	}

	public String getFileFileName() {
		return fileFileName;
	}

	public void setFileFileName(String fileFileName) {
		this.fileFileName = fileFileName;
	}

	public String getFileContentType() {
		return fileContentType;
	}

	public void setFileContentType(String fileContentType) {
		this.fileContentType = fileContentType;
	}

	public String getExt() {
		return ext;
	}

	public void setExt(String ext) {
		this.ext = ext;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public List<CarBrand> getList() {
		return list;
	}

	public void setList(List<CarBrand> list) {
		this.list = list;
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

	public Integer getBrandId() {
		return brandId;
	}

	public void setBrandId(Integer brandId) {
		this.brandId = brandId;
	}

	public Integer getXianNum() {
		return xianNum;
	}

	public void setXianNum(Integer xianNum) {
		this.xianNum = xianNum;
	}

}
