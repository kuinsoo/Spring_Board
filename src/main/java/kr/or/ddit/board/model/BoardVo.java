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
@Data
public class BoardVo {

	private String bd_no;
	private String bd_name;
	private String bd_use;
	private String bd_creator;
	private Date bd_rdate;
}
