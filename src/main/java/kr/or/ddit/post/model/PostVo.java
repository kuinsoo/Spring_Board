package kr.or.ddit.post.model;

import lombok.Data;

import java.util.Date;

/**
 * kr.or.ddit.board.model
 * null.java
 * Desc :
 *
 * @Author : Mr.KKu
 * @Date : 2018-10-18 / 오후 4:03
 * @Version :
 */
@Data
public class PostVo {

	private String post_no;
	private String post_title;
	private String post_content;
	private Date   post_rdate;
	private String post_writer;
	private String post_boardno;
	private String post_recursion;
	private String post_groupno;
	private String post_sub;
	private int post_rnum;

	public PostVo() {
	}

	public PostVo(String post_no, String post_title, String post_content, Date post_rdate, String post_writer, String post_boardno, String post_recursion, String post_groupno, String post_sub, int post_rnum) {
		this.post_no = post_no;
		this.post_title = post_title;
		this.post_content = post_content;
		this.post_rdate = post_rdate;
		this.post_writer = post_writer;
		this.post_boardno = post_boardno;
		this.post_recursion = post_recursion;
		this.post_groupno = post_groupno;
		this.post_sub = post_sub;
		this.post_rnum = post_rnum;
	}

	@Override
	public String toString() {
		return "PostVo{" +
				"post_no='" + post_no + '\'' +
				", post_title='" + post_title + '\'' +
				", post_content='" + post_content + '\'' +
				", post_rdate=" + post_rdate +
				", post_writer='" + post_writer + '\'' +
				", post_boardno='" + post_boardno + '\'' +
				", post_recursion='" + post_recursion + '\'' +
				", post_groupno='" + post_groupno + '\'' +
				", post_sub='" + post_sub + '\'' +
				", post_rnum=" + post_rnum +
				'}';
	}
}
