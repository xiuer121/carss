/**
 * @功能 注册投资商
 */

package carss.action;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import carss.po.CarInfo;
import carss.po.Cooperation;
import carss.service.CarInfoService;
import carss.service.CooperationService;

import com.opensymphony.xwork2.ActionSupport;

@Controller
@Scope("prototype")
@Results({ @Result(location = "index.jsp") })
public class IndexAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	@Resource
	private CarInfoService carInfoService;
	
	@Resource
	private CooperationService cooperationService;


 
	private List<CarInfo> listJiao = new ArrayList<CarInfo>();
	private List<CarInfo> listPao = new ArrayList<CarInfo>();
	private List<CarInfo> listSuv = new ArrayList<CarInfo>();
	private List<CarInfo> listSwc = new ArrayList<CarInfo>();
	private List<CarInfo> listRec = new ArrayList<CarInfo>();
	private List<CarInfo> listHot = new ArrayList<CarInfo>();

	
	private List<Cooperation> listCoo = new ArrayList<Cooperation>();
	private List<Cooperation> listAd = new ArrayList<Cooperation>();
	private Integer jiaoNum;
	private Integer paoNum;
	private Integer suvNum;
	private Integer swcNum;
	private Integer hotNum;

	@Override
	public String execute() throws Exception {

		String where = " where o.carType = 10 and o.sellState=10";

		listJiao = carInfoService.getListByNum(where, null, 8);
		jiaoNum = carInfoService.getCount(where, null).intValue();

		where = "where o.carType = 20 and o.sellState=10";

		listPao = carInfoService.getListByNum(where, null, 8);
		paoNum = carInfoService.getCount(where, null).intValue();
		where = "where o.carType = 30 and o.sellState=10";

		listSuv = carInfoService.getListByNum(where, null, 8);
		suvNum = carInfoService.getCount(where, null).intValue();
		where = "where o.carType = 40 and o.sellState=10";

		listSwc = carInfoService.getListByNum(where, null, 8);
		swcNum = carInfoService.getCount(where, null).intValue();

		where = "where o.recState = 10 and o.sellState=10";
		listRec = carInfoService.getListByNum(where, null, 8);

		where = "where o.hotState = 10 and o.sellState=10";
		listHot = carInfoService.getListByNum(where, null, 8);
		hotNum = carInfoService.getCount(where, null).intValue(); 
		where = "where o.imgType = 10";
		listCoo = cooperationService.getListByNum(where,null,20);
		where = "where o.imgType = 20 ";
		listAd = cooperationService.getListByNum(where,null,4);
		return SUCCESS;
	}

	public List<CarInfo> getListJiao() {
		return listJiao;
	}

	public void setListJiao(List<CarInfo> listJiao) {
		this.listJiao = listJiao;
	}

	public List<CarInfo> getListPao() {
		return listPao;
	}

	public void setListPao(List<CarInfo> listPao) {
		this.listPao = listPao;
	}

	public List<CarInfo> getListSuv() {
		return listSuv;
	}

	public void setListSuv(List<CarInfo> listSuv) {
		this.listSuv = listSuv;
	}

	public List<CarInfo> getListSwc() {
		return listSwc;
	}

	public void setListSwc(List<CarInfo> listSwc) {
		this.listSwc = listSwc;
	}

	public List<CarInfo> getListRec() {
		return listRec;
	}

	public void setListRec(List<CarInfo> listRec) {
		this.listRec = listRec;
	}

	public List<CarInfo> getListHot() {
		return listHot;
	}

	public void setListHot(List<CarInfo> listHot) {
		this.listHot = listHot;
	}

	public Integer getJiaoNum() {
		return jiaoNum;
	}

	public void setJiaoNum(Integer jiaoNum) {
		this.jiaoNum = jiaoNum;
	}

	public Integer getPaoNum() {
		return paoNum;
	}

	public void setPaoNum(Integer paoNum) {
		this.paoNum = paoNum;
	}

	public Integer getSuvNum() {
		return suvNum;
	}

	public void setSuvNum(Integer suvNum) {
		this.suvNum = suvNum;
	}

	public Integer getSwcNum() {
		return swcNum;
	}

	public void setSwcNum(Integer swcNum) {
		this.swcNum = swcNum;
	}

	public Integer getHotNum() {
		return hotNum;
	}

	public void setHotNum(Integer hotNum) {
		this.hotNum = hotNum;
	}

	public List<Cooperation> getListCoo() {
		return listCoo;
	}

	public void setListCoo(List<Cooperation> listCoo) {
		this.listCoo = listCoo;
	}

	public List<Cooperation> getListAd() {
		return listAd;
	}

	public void setListAd(List<Cooperation> listAd) {
		this.listAd = listAd;
	}
	
	

	
}
