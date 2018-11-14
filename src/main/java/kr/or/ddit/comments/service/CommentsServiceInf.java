package kr.or.ddit.comments.service;

import kr.or.ddit.comments.model.CommentsVo;

import java.util.List;

/**
 * kr.or.ddit.board.service
 * null.java
 * Desc : 댓글 인터페이스
 *
 * @Author : "Mr.KKu"
 * @Date : 2018-10-23 / 오전 12:41
 * @Version :
 */
public interface CommentsServiceInf {

	/**
	 * 댓글 리스트 검색
	 * @param postNo
	 * @return
	 */
	List<CommentsVo> selectCmtList(String postNo);

	/**
	 * 댓글 검색
	 * @param postNo
	 * @return
	 */
	CommentsVo selectCmt(String postNo);

	/**
	 * 댓글 삽입
	 * @param cmtVo
	 * @return
	 */
	int insertCmt(CommentsVo cmtVo);

	/**
	 * 댓글 수정
	 * @param cmtVo
	 * @return
	 */
	int updateCmt(CommentsVo cmtVo);

	/**
	 * 댓글 삭제
	 * @param postNo
	 * @return
	 */
	int deleteCmt(String postNo);
}