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
		BoardVo boardVo = new BoardVo();
		boardVo.setBd_name("멍청한 게시판");
		boardVo.setBd_use("Y");
		boardVo.setBd_creator("brown");

		/*** When ***/
		int resultCnt = boardService.createBoard(boardVo);
		/*** Then ***/
		assertEquals(1,resultCnt);
	}

	@Test
	public void editBoard() {
		/*** Given ***/
		BoardVo boardVo = new BoardVo();
		boardVo.setBd_no("85");
		boardVo.setBd_name("멍청한 게시판!");
		boardVo.setBd_use("Y");
		/*** When ***/
		int resultCnt = boardService.editBoard(boardVo);
		/*** Then ***/
		assertEquals(1,resultCnt);
	}

	@Test
	public void deleteBoard() {
		/*** Given ***/

		/*** When ***/
		int resultCnt = boardService.deleteBoard("85");
		/*** Then ***/
		assertEquals(0,resultCnt);
	}
}