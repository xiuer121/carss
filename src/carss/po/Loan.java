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
@Table(name = "loan")
public class Loan implements java.io.Serializable {

	private static final long serialVersionUID = 1L; 

	private Integer id;					//编号
	private Double dkjr;
	private String ch;
	private String sjhm;
	private String ppcx;
	private String clnf;
	private String qcpl;
	private String xslc;
	private String clszd;
	private String dkfs; 
 
	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "id", unique = true, nullable = false)
	public Integer getId() {
		return this.id;
	}
	public void setId(Integer id) {
		this.id = id;
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

	 
	
	
	
}