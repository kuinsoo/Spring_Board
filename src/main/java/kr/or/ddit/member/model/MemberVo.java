package kr.or.ddit.member.model;

import lombok.Data;

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
@Data
public class MemberVo {
	private String mem_id;
	private String mem_name;
	private String mem_pass;
	private String mem_tel;
	private Date   mem_birth;
	private String mem_email;
	private String mem_zipcode;
	private String mem_addr1;
	private String mem_addr2;
	private String mem_profile;
}
