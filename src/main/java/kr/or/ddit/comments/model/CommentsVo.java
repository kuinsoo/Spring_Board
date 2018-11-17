package kr.or.ddit.comments.model;

import java.util.Date;

/**
 * kr.or.ddit.board.model
 * null.java
 * Desc :
 *
 * @Author : Mr.KKu
 * @Date : 2018-10-18 / 오후 4:02
 * @Version :
 */
public class CommentsVo {

	private String cmt_no;
	private String cmt_postno;
	private String cmt_content;
	private String cmt_writer;
	private Date cmt_rdate;

	public CommentsVo() {
	}

	public CommentsVo(String cmt_no, String cmt_postno, String cmt_content, String cmt_writer, Date cmt_rdate) {
		this.cmt_no = cmt_no;
		this.cmt_postno = cmt_postno;
		this.cmt_content = cmt_content;
		this.cmt_writer = cmt_writer;
		this.cmt_rdate = cmt_rdate;
	}

	public String getCmt_no() {
		return cmt_no;
	}

	public void setCmt_no(String cmt_no) {
		this.cmt_no = cmt_no;
	}

	public String getCmt_postno() {
		return cmt_postno;
	}

	public void setCmt_postno(String cmt_postno) {
		this.cmt_postno = cmt_postno;
	}

	public String getCmt_content() {
		return cmt_content;
	}

	public void setCmt_content(String cmt_content) {
		this.cmt_content = cmt_content;
	}

	public String getCmt_writer() {
		return cmt_writer;
	}

	public void setCmt_writer(String cmt_writer) {
		this.cmt_writer = cmt_writer;
	}

	public Date getCmt_rdate() {
		return cmt_rdate;
	}

	public void setCmt_rdate(Date cmt_rdate) {
		this.cmt_rdate = cmt_rdate;
	}

	@Override
	public String toString() {
		return "CommentsVo{" +
				"cmt_no='" + cmt_no + '\'' +
				", cmt_postno='" + cmt_postno + '\'' +
				", cmt_content='" + cmt_content + '\'' +
				", cmt_writer='" + cmt_writer + '\'' +
				", cmt_rdate=" + cmt_rdate +
				'}';
	}
}

