package kr.or.ddit.member.dao;

import kr.or.ddit.member.model.MemberVo;

import java.util.List;

/**
 * kr.or.ddit.user.dao
 * null.java
 * Desc : 유저  DAO 인터페이스
 *
 * @Author : Mr.KKu
 * @Date : 2018-11-13 / 오전 10:16
 * @Version :
 */
public interface MemberDaoInf {

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
