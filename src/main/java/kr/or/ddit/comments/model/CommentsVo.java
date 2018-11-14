package kr.or.ddit.comments.model;

import lombok.Data;

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
@Data
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

