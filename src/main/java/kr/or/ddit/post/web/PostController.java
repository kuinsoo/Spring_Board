package kr.or.ddit.post.web;

import kr.or.ddit.board.service.BoardServiceInf;
import kr.or.ddit.member.model.MemberVo;
import kr.or.ddit.post.model.PostVo;
import kr.or.ddit.post.service.PostServiceInf;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.RegEx;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.Part;
import java.io.File;
import java.io.IOException;
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
	public String postCreate( @RequestParam("no")String bd_no,
							  @RequestParam("postNo")String postNo,
							 @RequestParam("smarteditor")String smarteditor,
							 @RequestParam("post_title")String post_title,
							 @SessionAttribute("memberVo")MemberVo memberVo) {

		postService.selectPost(postNo);
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
