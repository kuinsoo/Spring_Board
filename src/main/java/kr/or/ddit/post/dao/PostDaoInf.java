package kr.or.ddit.post.dao;

import kr.or.ddit.post.model.PostVo;

import java.util.List;
import java.util.Map;

/**
 * kr.or.ddit.board.dao
 * null.java
 * Desc : 게시글 다오
 *
 * @Author : "Mr.KKu"
 * @Date : 2018-10-21 / 오전 11:54
 * @Version :
 */
public interface PostDaoInf {

	/**
	 * 게시글 검색
	 * @return
	 */
	PostVo selectPost(String post_no);

	/**
	 * 전체 게시글 검색
	 * @return
	 */
	List<PostVo> selectAllPost(String bd_no);

	/**
	 * 게시판 안에 전체 게시글 검색
	 * @return
	 */
	List<PostVo> selectBoardInPost(Map<String, String> postMap);

	List<PostVo> searchBoardInPost(Map<String, String> postMap);

	/**
	 * 게시글 생성
	 * @param postVo
	 * @return
	 */
	int createPost(PostVo postVo);

	/**
	 * 게시글 수정
	 * @param postVo
	 * @return
	 */
	int editPost(PostVo postVo);

	/**
	 * 게시글 삭제
	 * @param post_no
	 * @return
	 */
	int deletePost(String post_no);

	int editDelPost(PostVo postVo);

	/**
	 * 게시판 답글 생성
	 * @param postVo
	 * @return
	 */
	int createRePost(PostVo postVo);
}
