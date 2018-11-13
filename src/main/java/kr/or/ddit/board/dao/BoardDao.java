package kr.or.ddit.board.dao;

import kr.or.ddit.board.model.BoardVo;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.List;

/**
 * kr.or.ddit.user.board.dao
 * null.java
 * Desc :
 *
 * @Author : Mr.KKu
 * @Date : 2018-11-13 / 오후 12:17
 * @Version :
 */
@Repository
public class BoardDao implements BoardDaoInf {


	public BoardDao() {
	}

	@Resource(name = "sqlSessionTemplate")
	private SqlSessionTemplate template;

	@Override
	public List<BoardVo> selectAllBoard() {
		return template.selectList("board.selectAllBoard");
	}

	@Override
	public BoardVo selectBoard(String boardId) {
		return template.selectOne("board.selectBoard",boardId);
	}

	@Override
	public int createBoard(BoardVo boardVo) {
		return template.insert("board.createBoard",boardVo);
	}

	@Override
	public int editBoard(BoardVo boardVo) {
		return template.update("board.editBoard",boardVo);
	}

	@Override
	public int deleteBoard(String boardId) {
		return template.delete("board.deleteBoard",boardId);
	}
}
