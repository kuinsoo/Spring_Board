package kr.or.ddit.post.web;

import kr.or.ddit.board.service.BoardServiceInf;
import kr.or.ddit.post.model.PostVo;
import kr.or.ddit.post.service.PostServiceInf;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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

	@RequestMapping("/postList")
	public String postList(@RequestParam("bd_no")String bd_no,@RequestParam("page")String page,
						   @RequestParam("pageSize")String pageSize, Model model, PostVo postVo) {
		Map<String, String> map = new HashMap<>();
		map.put("page",page);
		map.put("pageSize",pageSize);
		map.put("post_groupno",bd_no);
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

		return "postDetail";
	}

}
