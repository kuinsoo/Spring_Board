package kr.or.ddit.board.service;

import kr.or.ddit.board.model.BoardVo;
import kr.or.ddit.board.dao.BoardDaoInf;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
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
@Service
public class BoardService implements BoardServiceInf {

	public BoardService() {
	}

	@Resource(name = "boardDao")
	private BoardDaoInf boardDao;

	@Override
	public List<BoardVo> selectAllBoard() {
		return boardDao.selectAllBoard();
	}

	@Override
	public BoardVo selectBoard(String boardId) {
		return boardDao.selectBoard(boardId);
	}

	@Override
	public int createBoard(BoardVo boardVo) {
		return boardDao.createBoard(boardVo);
	}

	@Override
	public int editBoard(BoardVo boardVo) {
		return boardDao.editBoard(boardVo);
	}

	@Override
	public int deleteBoard(String boardId) {
		return boardDao.deleteBoard(boardId);
	}
}
