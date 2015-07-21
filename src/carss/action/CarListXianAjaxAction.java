/**
 * @���� ע��Ͷ����
 */

package carss.action;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import carss.po.CarBrand;
import carss.po.CarInfo;
import carss.service.CarBrandService;
import carss.service.CarInfoService;
import carss.vo.CarInfoVo;
import carss.vo.View;

import com.opensymphony.xwork2.ActionSupport;

@Controller
@Scope("prototype")
@ParentPackage("json-default")
@Results({ @Result(type = "json") })
public class CarListXianAjaxAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	@Resource
	private CarInfoService carInfoService;

 

	private View<CarInfo> viwJiao = new View<CarInfo>();
 
	
	private List<CarInfoVo> listVo = new ArrayList<CarInfoVo>();

	private Integer brandId; // Ʒ��ID
	private Integer carType; // �������� 10�ܳ� 20 �γ� 30 suv 40 ����
	
	
	private Integer currentPage;

	@Override
	public String execute() throws Exception {

		String where = " where 1 = 1 and  o.sellState =10 and xianState =10  ";
		
		List<Object> params = new ArrayList<Object>();
		if (carType != null) {
			where = where + " and  o.carType = ?";
			params.add(carType);
		}
		
		if (brandId != null) {
			where = where + " and   o.brandId.id = ?";
			params.add(brandId);
		} 
		 
		if(currentPage!=null){
			viwJiao.setCurrentPage(currentPage);
		}
		where = where + "order by id asc";
		viwJiao.setRecorderPage(10);
		
		viwJiao = carInfoService.getView(where, viwJiao,params.toArray());
	    for(CarInfo o :viwJiao.getRecords()){
	    
	    	CarInfoVo civ  = new CarInfoVo();
	    	Calendar calendar = Calendar.getInstance();
			civ.setId(o.getId());
			civ.setTitle(o.getTitle());
			civ.setImagePath(o.getImagePath());
			civ.setOriginalPrice(o.getOriginalPrice());
			civ.setCondition(o.getCondition());
			civ.setPrice(o.getPrice());
			civ.setTravel(o.getTravel());
			civ.setYueNum(o.getYueNum());
			civ.setCangNum(o.getCangNum());

			long nowTime = calendar.getTimeInMillis();
			calendar.setTime(o.getXianDate());
			long xianTime =calendar.getTimeInMillis();
			civ.setXianMil((xianTime-nowTime)/1000); 
	    	listVo.add(civ);
	    }

	 
		return SUCCESS;
	}

 
	public Integer getBrandId() {
		return brandId;
	}

	public void setBrandId(Integer brandId) {
		this.brandId = brandId;
	}

	public Integer getCarType() {
		return carType;
	}

	public void setCarType(Integer carType) {
		this.carType = carType;
	}


	public List<CarInfoVo> getListVo() {
		return listVo;
	}


	public void setListVo(List<CarInfoVo> listVo) {
		this.listVo = listVo;
	}


	public Integer getCurrentPage() {
		return currentPage;
	}


	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}
	
	
	
	
	

}
