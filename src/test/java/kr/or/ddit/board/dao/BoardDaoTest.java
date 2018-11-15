package kr.or.ddit.board.dao;

import kr.or.ddit.board.model.BoardVo;
import kr.or.ddit.common.ContextServlet;
import kr.or.ddit.common.RootContext;
import org.junit.Test;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

import static org.junit.Assert.*;

/**
 * kr.or.ddit.user.board.dao
 * JUnit4 Test Class.java.java
 * Desc :
 *
 * @Author : Mr.KKu
 * @Date : 2018-11-13 / 오후 2:40
 * @Version :
 */
public class BoardDaoTest extends RootContext {

	@Resource(name = "boardDao")
	private BoardDaoInf boardDao;

	@Test
	public void selectAllBoard() {
		/*** Given ***/

		/*** When ***/
		List<BoardVo> listBoard = boardDao.selectAllBoard();
		/*** Then ***/
		assertEquals(3,listBoard.size());
	}

	@Test
	public void selectBoard() {
		/*** Given ***/

		/*** When ***/
		BoardVo boardVo = boardDao.selectBoard("85");
		/*** Then ***/
		assertEquals("Y",boardVo.getBd_use());
	}

	@Test
	public void createBoard() {
		/*** Given ***/
		BoardVo boardVo = new BoardVo();
		boardVo.setBd_no("10");
		boardVo.setBd_name("테스트 게시판입니다.");
		boardVo.setBd_use("Y");
		boardVo.setBd_creator("1");
		boardVo.setBd_rdate(new Date());
		/*** When ***/
		int resultCnt = boardDao.createBoard(boardVo);
		/*** Then ***/
		assertEquals(1,resultCnt);
	}

	@Test
	public void editBoard() {
		/*** Given ***/
		BoardVo boardVo = new BoardVo();
		boardVo.setBd_no("85");
		boardVo.setBd_name("테스트 게시판입니다.");
		boardVo.setBd_use("Y");
		boardVo.setBd_creator("1");
		boardVo.setBd_rdate(new Date());
		/*** When ***/
		int resultCnt = boardDao.editBoard(boardVo);
		/*** Then ***/
		assertEquals(1,resultCnt);
	}

	@Test
	public void deleteBoard() {
		/*** Given ***/

		/*** When ***/
		int resultCnt = boardDao.deleteBoard("자유게시판");
		/*** Then ***/
		assertEquals(1,resultCnt);
	}
}