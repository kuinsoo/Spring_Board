package kr.or.ddit.board.service;

import kr.or.ddit.board.model.BoardVo;
import kr.or.ddit.common.RootContext;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

import static org.junit.Assert.*;

/**
 * kr.or.ddit.board.service
 * JUnit4 Test Class.java.java
 * Desc :
 *
 * @Author : Mr.KKu
 * @Date : 2018-11-15 / 오후 5:31
 * @Version :
 */
public class BoardServiceTest extends RootContext {

	@Autowired
	private BoardServiceInf boardService;

	@Test
	public void selectAllBoard() {
		/*** Given ***/

		/*** When ***/
		List<BoardVo> boardVos = boardService.selectAllBoard();
		/*** Then ***/
		assertEquals(3, boardVos.size());
	}

	@Test
	public void selectBoard() {
		/*** Given ***/

		/*** When ***/
		BoardVo boardVo = boardService.selectBoard("85");
		/*** Then ***/
		assertEquals("Y",boardVo.getBd_use());
	}

	@Test
	public void createBoard() {
		/*** Given ***/

		/*** When ***/

		/*** Then ***/
	}

	@Test
	public void editBoard() {
		/*** Given ***/

		/*** When ***/

		/*** Then ***/
	}

	@Test
	public void deleteBoard() {
		/*** Given ***/

		/*** When ***/

		/*** Then ***/
	}
}