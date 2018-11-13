package kr.or.ddit.board.service;

import kr.or.ddit.board.model.BoardVo;

import java.util.List;

/**
 * kr.or.ddit.user.board.service
 * null.java
 * Desc :
 *
 * @Author : Mr.KKu
 * @Date : 2018-11-13 / 오후 12:17
 * @Version :
 */
public interface BoardServiceInf {

	/**
	 * List board list.
	 *
	 * @return the list
	 */
	List<BoardVo> listBoard();
}
