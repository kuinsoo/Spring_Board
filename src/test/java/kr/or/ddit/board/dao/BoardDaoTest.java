package kr.or.ddit.board.dao;

import kr.or.ddit.board.model.BoardVo;
import kr.or.ddit.common.ContextServlet;
import kr.or.ddit.common.RootContext;
import org.junit.Test;

import javax.annotation.Resource;
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
	public void listBoard() {
		/*** Given ***/

		/*** When ***/
		List<BoardVo> listBoard = boardDao.listBoard();
		/*** Then ***/
		assertEquals(4,listBoard.size());
	}
}