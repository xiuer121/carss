/**
 * @功能 注册投资商
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
	private Double price; // 价格
	private Integer commission; // 佣金

	private List<CarBrand> list = new ArrayList<CarBrand>();

	private Integer carType; // 车辆类型 10跑车 20 轿车 30 suv 40 商务车

	private String title; // 车辆标题
	private String condition; // 车况
	private String travel; // 行程
	private String discharge;
	private String creabox; // 变速箱
	private String driveMode; // 驱动模式
	private String color; // 车辆颜色
	private String used; // 车辆原用途
	private String colorIn; // 车辆内色
	private String procedures; // 手续
	private String seatNum; // 座位数
	private String chair; // 座椅
	private String place; // 产地
	private String fuel; // 燃油
	private String description; // 描述

	private File file; // 文件对象
	private String fileFileName; // 文件名称
	private String fileContentType; // 文件类型
	private String ext; // 后缀名

	private Double originalPrice; // 原价格
	private String recState; // 推荐 10是
	private String hotState; // 热门 10是

	private Integer xianNum; // 限时天数

	private Integer brandId;

	// 所属类型

	public String show() {
		// 先保存产品资料
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
	 * @功能 新增投资商
	 */
	public String add() {

		CarBrand carBrand = carBrandService.get(brandId);

		CarInfo one = carInfoService.get(id);
		one.setPrice(this.price); // 价格
		Integer priceInt = (int) (price * 10000);
		one.setPriceInt(priceInt);
		one.setCommission(commission);
		one.setTitle(title);
		one.setDescription(this.description); // 描述
		one.setCarType(carType);
		one.setCommitDate(new Date()); // 创建时间
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

		// 根据前台传入的限时天数，获取限时时间
		if (xianNum != null) {
			Calendar calendar = Calendar.getInstance();
			calendar.set(calendar.DATE, calendar.get(calendar.DATE) + xianNum);
			one.setXianDate(calendar.getTime());
		}

		// 判断有没有图片上传
		if (file != null) {
			// 显示名称

			// 产品图片
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
	 * @功能 新增投资商校验
	 */
	public void validateAdd() {

		// 如果有上传格式，则检查格式是否正确
		if (file != null) {
			// 后缀名
			this.ext = this.fileFileName.substring(
					this.fileFileName.lastIndexOf('.') + 1).toLowerCase();

			List<String> arrowType = Arrays.asList("image/gif", "image/jpg",
					"image/jpeg", "image/pjpeg", "image/png", "image/bmp",
					"image/x-png");
			List<String> arrowExt = Arrays.asList("gif", "jpg", "jpeg", "png",
					"bmp");

			if (!(arrowType.contains(fileContentType.toLowerCase()) && arrowExt
					.contains(this.ext))) {
				this.addActionError("上传文件只接收gif/jpg/jpeg/png/bmp类型,您的文件类型为！"
						+ fileContentType);
			}

			if (this.file.length() > (5 * 1024 * 1024)) {
				this.addActionError("图片大小不能大于5M!");
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
