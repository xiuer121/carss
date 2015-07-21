/**
 * @功能 注册投资商
 */

package carss.action;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import carss.po.Loan;
import carss.service.LoanService;

import com.opensymphony.xwork2.ActionSupport;

@Controller
@Scope("prototype")
@Results({ @Result(location = "loan.jsp") })
public class LoanAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	@Resource
	private LoanService loanService;

	private Double dkjr;
	private String ch;
	private String sjhm;
	private String ppcx;
	private String clnf;
	private String qcpl;
	private String xslc;
	private String clszd;
	private String dkfs;

	
	private boolean msg =false;
	@Override
	public String execute() throws Exception {
		Loan one = new Loan();
		one.setDkjr(dkjr); 
		one.setSjhm(sjhm);
		one.setCh(ch);
		one.setPpcx(ppcx);
		one.setClnf(clnf);
		one.setQcpl(qcpl);
		one.setXslc(xslc);
		one.setClszd(clszd);
		one.setDkfs(dkfs);
		System.out.println("111");
		loanService.save(one);
		msg = true;
		return SUCCESS;
	}

	public Double getDkjr() {
		return dkjr;
	}

	public void setDkjr(Double dkjr) {
		this.dkjr = dkjr;
	}

	public String getCh() {
		return ch;
	}

	public void setCh(String ch) {
		this.ch = ch;
	}

	public String getSjhm() {
		return sjhm;
	}

	public void setSjhm(String sjhm) {
		this.sjhm = sjhm;
	}

	public String getPpcx() {
		return ppcx;
	}

	public void setPpcx(String ppcx) {
		this.ppcx = ppcx;
	}

	public String getClnf() {
		return clnf;
	}

	public void setClnf(String clnf) {
		this.clnf = clnf;
	}

	public String getQcpl() {
		return qcpl;
	}

	public void setQcpl(String qcpl) {
		this.qcpl = qcpl;
	}

	public String getXslc() {
		return xslc;
	}

	public void setXslc(String xslc) {
		this.xslc = xslc;
	}

	public String getClszd() {
		return clszd;
	}

	public void setClszd(String clszd) {
		this.clszd = clszd;
	}

	public String getDkfs() {
		return dkfs;
	}

	public void setDkfs(String dkfs) {
		this.dkfs = dkfs;
	}

	public boolean isMsg() {
		return msg;
	}

	public void setMsg(boolean msg) {
		this.msg = msg;
	}

 
	
	

}
