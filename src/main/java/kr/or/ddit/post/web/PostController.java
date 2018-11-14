package kr.or.ddit.post.web;

import kr.or.ddit.board.service.BoardServiceInf;
import kr.or.ddit.comments.service.CommentsServiceInf;
import kr.or.ddit.member.model.MemberVo;
import kr.or.ddit.post.model.PostVo;
import kr.or.ddit.post.service.PostServiceInf;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;

/**
 * kr.or.ddit.post.web
 * null.java
 * Desc :
 *
 * @Author : Mr.KKu
 * @Date : 2018-11-14 / 오전 11:34
 * @Version :
 */
@Controller
public class PostController {

	@Autowired
	private PostServiceInf postService;

	@Resource(name = "boardService")
	private BoardServiceInf boardService;

	@Resource(name = "commentsService")
	private CommentsServiceInf commentsService;

	@RequestMapping("/postList")
	public String postList(@RequestParam("bd_no")String bd_no,@RequestParam("page")String page,
						   @RequestParam("pageSize")String pageSize, Model model, PostVo postVo) {
		Map<String, String> map = new HashMap<>();
		map.put("page",page);
		map.put("pageSize",pageSize);
		map.put("post_groupno",bd_no);
		model.addAttribute("postAllList",postService.selectAllPost(bd_no));
		model.addAttribute("postList",postService.selectBoardInPost(map));
		model.addAttribute("post_groupno",bd_no);
		model.addAttribute("page",page);
		model.addAttribute("pageSize",pageSize);
		model.addAttribute("listBoard", boardService.selectAllBoard());
		return "postList";
	}

	@RequestMapping("/postDetail")
	public String postDetail(@RequestParam("postNo")String postNo, @RequestParam("no")String no, Model model) {
		PostVo postVo = postService.selectPost(postNo);
		model.addAttribute("postVo", postVo);
		model.addAttribute("no", no);
		model.addAttribute("cmtList",commentsService.selectCmtList(postNo));
		model.addAttribute("listBoard", boardService.selectAllBoard());
		return "postDetail";
	}

	@RequestMapping("/postWrite")
	public String postWrite(@RequestParam("bd_no")String bd_no,@RequestParam("recursion")String recursion, Model model) {
		model.addAttribute("bd_no",bd_no);
		model.addAttribute("recursion",recursion);
		model.addAttribute("listBoard", boardService.selectAllBoard());
		return "postWrite";
	}

	@RequestMapping("/postCreate")
	public String postCreate(Model model,  @RequestParam("recursion")String recursion,
							 @RequestParam("bd_no")String bd_no,
							 @RequestParam("smarteditor")String smarteditor,
							 @RequestParam("post_title")String post_title,
							 @SessionAttribute("memberVo")MemberVo memberVo) {
		PostVo postVo = new PostVo();
		postVo.setPost_content(smarteditor);
		postVo.setPost_title(post_title);
		postVo.setPost_writer(memberVo.getMem_id());

		postVo.setPost_boardno(bd_no);
		if(recursion.equals("")) {
			postVo.setPost_recursion("");
			postService.createPost(postVo);
		} else {
			postVo.setPost_recursion(recursion);
			postService.createPost(postVo);
		}

		return "redirect:postList?bd_no="+bd_no+"&page="+1+"&pageSize="+10;
	}

	@RequestMapping("/postUpdate")
	public String postUpdate(@RequestParam("bd_no")String bd_no,
							@RequestParam("postNo")String postNo, Model model) {
		PostVo postVo = postService.selectPost(postNo);
		model.addAttribute("no",bd_no);
		model.addAttribute("postVo",postVo);
		model.addAttribute("listBoard", boardService.selectAllBoard());
		return "postUpdate";
	}

	@RequestMapping("/postEdit")
	public String postCreate( Model model,
			@RequestParam("no")String bd_no,
							  @RequestParam("postNo")String postNo,
							 @RequestParam("smarteditor")String smarteditor,
							 @RequestParam("post_title")String post_title) {
		PostVo postVo = postService.selectPost(postNo);
		postVo.setPost_content(smarteditor);
		postVo.setPost_title(post_title);
		postService.editPost(postVo);

		model.addAttribute("postVo", postVo);
		model.addAttribute("no", bd_no);
		model.addAttribute("listBoard", boardService.selectAllBoard());


		return "postDetail";
	}

	@RequestMapping("/postDelete")
	public String postDelete(@RequestParam("bd_no")String bd_no,
							 @RequestParam("postNo")String postNo) {
		PostVo postVo = postService.selectPost(postNo);
		postService.editDelPost(postVo);
		return "redirect:postList?bd_no="+bd_no+"&page="+1+"&pageSize="+10;
	}


}
