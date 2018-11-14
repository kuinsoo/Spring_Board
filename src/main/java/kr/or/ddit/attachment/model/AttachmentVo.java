package kr.or.ddit.attachment.model;

import lombok.Data;

/**
 * kr.or.ddit.board.model
 * null.java
 * Desc : 첨부파일
 *
 * @Author : Mr.KKu
 * @Date : 2018-10-18 / 오후 3:58
 * @Version :
 */
@Data
public class AttachmentVo {

	private String att_no;
	private String att_postno;
	private String att_att;

	public AttachmentVo() {
	}

	public AttachmentVo(String att_no, String att_postno, String att_att) {
		this.att_no = att_no;
		this.att_postno = att_postno;
		this.att_att = att_att;
	}

	@Override
	public String toString() {
		return "AttachmentVo{" +
				"att_no='" + att_no + '\'' +
				", att_postno='" + att_postno + '\'' +
				", att_att='" + att_att + '\'' +
				'}';
	}
}
