package kr.or.ddit.member.model;

import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import javax.servlet.http.HttpSessionBindingListener;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * kr.or.ddit.user.model
 * null.java
 * Desc :
 *
 * @Author : Mr.KKu
 * @Date : 2018-11-13 / 오전 10:16
 * @Version :
 */
public class MemberVo implements HttpSessionBindingListener {
	private String mem_id;
	private String mem_name;
	private String mem_pass;
	private String mem_tel;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date   mem_birth;
	private String mem_email;
	private String mem_zipcode;
	private String mem_addr1;
	private String mem_addr2;
	private String mem_profile;

	private int rnum;
	public String getFormattedBirth() {
		if(mem_birth  != null) {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			return sdf.format(mem_birth);
		}
		return "2018-08-09";
	}


	public String getMem_id() {
		return mem_id;
	}


	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}


	public String getMem_name() {
		return mem_name;
	}


	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}


	public String getMem_pass() {
		return mem_pass;
	}


	public void setMem_pass(String mem_pass) {
		this.mem_pass = mem_pass;
	}


	public String getMem_tel() {
		return mem_tel;
	}


	public void setMem_tel(String mem_tel) {
		this.mem_tel = mem_tel;
	}


	public Date getMem_birth() {
		return mem_birth;
	}


	public void setMem_birth(Date mem_birth) {
		this.mem_birth = mem_birth;
	}


	public String getMem_email() {
		return mem_email;
	}


	public void setMem_email(String mem_email) {
		this.mem_email = mem_email;
	}


	public String getMem_zipcode() {
		return mem_zipcode;
	}


	public void setMem_zipcode(String mem_zipcode) {
		this.mem_zipcode = mem_zipcode;
	}


	public String getMem_addr1() {
		return mem_addr1;
	}


	public void setMem_addr1(String mem_addr1) {
		this.mem_addr1 = mem_addr1;
	}


	public String getMem_addr2() {
		return mem_addr2;
	}


	public void setMem_addr2(String mem_addr2) {
		this.mem_addr2 = mem_addr2;
	}


	public String getMem_profile() {
		return mem_profile;
	}


	public void setMem_profile(String mem_profile) {
		this.mem_profile = mem_profile;
	}


	public int getRnum() {
		return rnum;
	}


	public void setRnum(int rnum) {
		this.rnum = rnum;
	}


	public MemberVo() {
	}

	public MemberVo(String mem_id, String mem_name, String mem_pass, String mem_tel, Date mem_birth, String mem_email, String mem_zipcode, String mem_addr1, String mem_addr2, String mem_profile) {
		this.mem_id = mem_id;
		this.mem_name = mem_name;
		this.mem_pass = mem_pass;
		this.mem_tel = mem_tel;
		this.mem_birth = mem_birth;
		this.mem_email = mem_email;
		this.mem_zipcode = mem_zipcode;
		this.mem_addr1 = mem_addr1;
		this.mem_addr2 = mem_addr2;
		this.mem_profile = mem_profile;
	}

	@Override
	public String toString() {
		return "MemberVo{" +
				"mem_id='" + mem_id + '\'' +
				", mem_name='" + mem_name + '\'' +
				", mem_pass='" + mem_pass + '\'' +
				", mem_tel='" + mem_tel + '\'' +
				", mem_birth=" + mem_birth +
				", mem_email='" + mem_email + '\'' +
				", mem_zipcode='" + mem_zipcode + '\'' +
				", mem_addr1='" + mem_addr1 + '\'' +
				", mem_addr2='" + mem_addr2 + '\'' +
				", mem_profile='" + mem_profile + '\'' +
				'}';
	}
}
