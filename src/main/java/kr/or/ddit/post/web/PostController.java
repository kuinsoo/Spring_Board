package kr.or.ddit.post.web;

import kr.or.ddit.attachment.model.AttachmentVo;
import kr.or.ddit.attachment.service.AttServiceInf;
import kr.or.ddit.board.service.BoardServiceInf;
import kr.or.ddit.comments.service.CommentsServiceInf;
import kr.or.ddit.member.model.MemberVo;
import kr.or.ddit.post.model.PostVo;
import kr.or.ddit.post.service.PostServiceInf;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
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

	@Resource(name = "attService")
	public AttServiceInf attService;


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
		List<AttachmentVo> attachmentVos = attService.selectAttachment(postNo);
		model.addAttribute("postVo", postVo);
		model.addAttribute("no", no);
		model.addAttribute("attList", attachmentVos);
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

	@RequestMapping(value = "/postCreate", method = RequestMethod.POST)
	public String postCreate(@RequestPart("attach") MultipartFile part,
							 HttpServletRequest request,
							 Model model,
							 @RequestParam("recursion")String recursion,
							 @RequestParam("bd_no")String bd_no,
							 @RequestParam("smarteditor")String smarteditor,
							 @RequestParam("post_title")String post_title,
							 @SessionAttribute("memberVo")MemberVo memberVo) throws IOException {
		PostVo postVo = new PostVo();
		AttachmentVo attachmentVo =  new AttachmentVo();
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
		if(part.getSize() > 0) {
			String path = request.getServletContext().getRealPath("/profile");
			String fileName = part.getOriginalFilename();
			String path2 =  "D:\\T_Development\\e_project\\workspace_intelliJ\\upload\\";
			attachmentVo.setAtt_att(path2 + fileName);
			attService.insertAttachment(attachmentVo);
			part.transferTo(new File(path2 + fileName));
		} else {
//			userVo.setProfile("");
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

	@RequestMapping(value = "/postEdit", method = RequestMethod.POST)
	public String postCreate( Model model,
							  @RequestPart("attach") MultipartFile part,
							  HttpServletRequest request,
							  @RequestParam("no")String bd_no,
							  @RequestParam("postNo")String postNo,
							 @RequestParam("smarteditor")String smarteditor,
							 @RequestParam("post_title")String post_title) throws IOException {

		PostVo postVo = postService.selectPost(postNo);
		postVo.setPost_content(smarteditor);
		postVo.setPost_title(post_title);
		postService.editPost(postVo);

		model.addAttribute("postVo", postVo);
		model.addAttribute("no", bd_no);
		model.addAttribute("listBoard", boardService.selectAllBoard());
		List<AttachmentVo> attachmentVos = attService.selectAttachment(postNo);
		if(part.getSize() > 0) {
			String path = request.getServletContext().getRealPath("/profile");
			String fileName = part.getOriginalFilename();
			String path2 =  "D:\\T_Development\\e_project\\workspace_intelliJ\\upload\\";
			attachmentVos.get(0).setAtt_att(path2 + fileName);
			attService.updateAttachment(attachmentVos.get(0));
			part.transferTo(new File(path2 + fileName));
		} else {
//			userVo.setProfile("");
		}
		PostVo post = postService.selectPost(postNo);
		List<AttachmentVo> attachmentList = attService.selectAttachment(postNo);
		model.addAttribute("postVo", post);
		model.addAttribute("no", bd_no);
		model.addAttribute("attList", attachmentList);
		model.addAttribute("cmtList",commentsService.selectCmtList(postNo));
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

	@RequestMapping("/postSearchAjax")
	public String postSearch(@RequestParam("bd_no")String bd_no,@RequestParam("page")String page,
						   @RequestParam("pageSize")String pageSize, Model model,
							 @RequestParam("search")String search) {
		Map<String, String> map = new HashMap<>();
		map.put("page",page);
		map.put("pageSize",pageSize);
		map.put("post_groupno",bd_no);
		map.put("search",search);
		model.addAttribute("postAllList",postService.selectAllPost(bd_no));
		model.addAttribute("postList",postService.searchBoardInPost(map));
		model.addAttribute("post_groupno",bd_no);
		model.addAttribute("page",page);
		model.addAttribute("pageSize",pageSize);
		model.addAttribute("search",search);
		model.addAttribute("listBoard", boardService.selectAllBoard());
		return "json/ajaxSearch";
	}

	@RequestMapping(value = "/ajaxSearchPagination" ,method = RequestMethod.GET)
	public String ajaxSearchPagination(@RequestParam("bd_no")String bd_no,@RequestParam("page")String page,
									   @RequestParam("pageSize")String pageSize, Model model,
									   @RequestParam("search")String search) {
		Map<String, String> map = new HashMap<>();
		map.put("page",page);
		map.put("pageSize",pageSize);
		map.put("post_groupno",bd_no);
		map.put("search",search);
		model.addAttribute("postAllList",postService.searchBoardInPost(map));
		model.addAttribute("postList",postService.searchBoardInPost(map));
		model.addAttribute("post_groupno",bd_no);
		model.addAttribute("page",page);
		model.addAttribute("pageSize",pageSize);
		model.addAttribute("search",search);
		model.addAttribute("listBoard", boardService.selectAllBoard());
		return "json/ajaxSearchPagination";
	}


	@RequestMapping(value = "/postListAjax" ,method = RequestMethod.GET)
	public String postListAjax(@RequestParam("bd_no")String bd_no,@RequestParam("page")String page,
						   @RequestParam("pageSize")String pageSize, Model model) {
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
		return "json/ajaxPageList";
	}

	@RequestMapping(value = "/paginationAjax" ,method = RequestMethod.GET)
	public String paginationAjax(@RequestParam("bd_no")String bd_no,@RequestParam("page")String page,
							   @RequestParam("pageSize")String pageSize, Model model) {
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
		return "json/ajaxPagination";
	}












}
