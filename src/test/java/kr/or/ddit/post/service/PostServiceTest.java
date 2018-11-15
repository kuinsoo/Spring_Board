package kr.or.ddit.post.service;

import kr.or.ddit.common.RootContext;
import kr.or.ddit.post.model.PostVo;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

import static org.junit.Assert.assertEquals;

/**
 * kr.or.ddit.post.service
 * JUnit4 Test Class.java.java
 * Desc :
 *
 * @Author : Mr.KKu
 * @Date : 2018-11-15 / 오후 1:44
 * @Version :
 */
public class PostServiceTest extends RootContext {

	@Autowired
	private PostServiceInf postService;

	@Test
	public void selectPost() {
		/*** Given ***/

		/*** When ***/
		PostVo postVo =  postService.selectPost("71");
		/*** Then ***/
		assertEquals("1",postVo.getPost_writer());
	}

	@Test
	public void selectAllPost() {
		/*** Given ***/

		/*** When ***/
		List<PostVo> postVos = postService.selectAllPost("84");
		/*** Then ***/
		assertEquals(48, postVos.size());
	}

	@Test
	public void createPost() {
		/*** Given ***/
		PostVo postVo = new PostVo();
		postVo.setPost_title("test");
		postVo.setPost_content("test");
		postVo.setPost_writer("1");
		postVo.setPost_boardno("85");
		postVo.setPost_recursion("71");
		/*** When ***/
		int resultCnt = postService.createPost(postVo);
		/*** Then ***/
		assertEquals(1,resultCnt);
	}

	@Test
	public void editPost() {
		/*** Given ***/
		PostVo postVo = postService.selectPost("71");
		postVo.setPost_title("testEdit");
		postVo.setPost_content("testEdit");
		postVo.setPost_writer("1");
		postVo.setPost_boardno("85");
		postVo.setPost_recursion("71");
		/*** When ***/
		int resultCnt = postService.editPost(postVo);
		/*** Then ***/
		assertEquals(1,resultCnt);
	}

	@Test
	public void deletePost() {
		/*** Given ***/
		PostVo postVo = postService.selectPost("71");
		/*** When ***/
		int resultCnt = postService.deletePost(postVo.getPost_no());
		/*** Then ***/
		assertEquals(1,resultCnt);
	}

}