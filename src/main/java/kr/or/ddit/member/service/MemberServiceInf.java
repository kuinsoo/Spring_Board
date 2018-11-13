package kr.or.ddit.member.service;

import kr.or.ddit.member.model.MemberVo;

import java.util.List;

/**
 * kr.or.ddit.user.service
 * null.java
 * Desc :
 *
 * @Author : Mr.KKu
 * @Date : 2018-11-13 / 오전 10:16
 * @Version :
 */
public interface MemberServiceInf {

	/**
	 * Select all user list.
	 *
	 * @return the list
	 */
	List<MemberVo> selectAllMember();

	/**
	 * Select user user vo.
	 *
	 * @param mem_id the id
	 * @return the user vo
	 */
	MemberVo selectMember(String mem_id);

}
