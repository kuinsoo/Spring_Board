package kr.or.ddit.board.model;

import lombok.Data;

import java.util.Date;

/**
 * kr.or.ddit.user.board.model
 * null.java
 * Desc :
 *
 * @Author : Mr.KKu
 * @Date : 2018-11-13 / 오후 12:16
 * @Version :
 */
public class BoardVo {

	private String bd_no;
	private String bd_name;
	private String bd_use;
	private String bd_creator;
	private Date bd_rdate;
	public String getBd_no() {
		return bd_no;
	}
	public void setBd_no(String bd_no) {
		this.bd_no = bd_no;
	}
	public String getBd_name() {
		return bd_name;
	}
	public void setBd_name(String bd_name) {
		this.bd_name = bd_name;
	}
	public String getBd_use() {
		return bd_use;
	}
	public void setBd_use(String bd_use) {
		this.bd_use = bd_use;
	}
	public String getBd_creator() {
		return bd_creator;
	}
	public void setBd_creator(String bd_creator) {
		this.bd_creator = bd_creator;
	}
	public Date getBd_rdate() {
		return bd_rdate;
	}
	public void setBd_rdate(Date bd_rdate) {
		this.bd_rdate = bd_rdate;
	}
	public BoardVo(String bd_no, String bd_name, String bd_use, String bd_creator, Date bd_rdate) {
		super();
		this.bd_no = bd_no;
		this.bd_name = bd_name;
		this.bd_use = bd_use;
		this.bd_creator = bd_creator;
		this.bd_rdate = bd_rdate;
	}
	public BoardVo() {
		super();
	}
	
	
}
