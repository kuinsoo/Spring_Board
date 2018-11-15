package kr.or.ddit.comments.web;

import kr.or.ddit.board.service.BoardServiceInf;
import kr.or.ddit.comments.model.CommentsVo;
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

/**
 * kr.or.ddit.comments.web
 * null.java
 * Desc :
 *
 * @Author : Mr.KKu
 * @Date : 2018-11-14 / 오후 4:04
 * @Version :
 */
@Controller
public class CommentsController {

	@Autowired
	private BoardServiceInf boardService;
	@Autowired
	private CommentsServiceInf commentsService;
	@Autowired
	private PostServiceInf postService;

	@RequestMapping("/insertCmt")
	public String insertCmt(Model model, @RequestParam("postno")String postno, @RequestParam("content")String content,
							@SessionAttribute("memberVo") MemberVo memberVo, @RequestParam("bd_no")String no, CommentsVo cmtVo) {
		PostVo postVo = postService.selectPost(postno);
		cmtVo.setCmt_postno(postno);
		cmtVo.setCmt_content(content);
		cmtVo.setCmt_writer(memberVo.getMem_id());
		model.addAttribute("postVo", postVo);
		model.addAttribute("no",no);
		commentsService.insertCmt(cmtVo);
		model.addAttribute("listBoard", boardService.selectAllBoard());
		model.addAttribute("cmtList",commentsService.selectCmtList(postno));

		return "postDetail";
	}

	@RequestMapping("/updateCmt")
	public String updateCmt(Model model, @RequestParam("postno")String postno, @RequestParam("content")String content,
							@RequestParam("cmtNo") String cmtNo, @RequestParam("bd_no")String no, CommentsVo cmtVo) {

		CommentsVo commentsVo = commentsService.selectCmt(cmtNo);
		commentsVo.setCmt_content(content);
		commentsService.updateCmt(commentsVo);
		PostVo postVo = postService.selectPost(postno);
		model.addAttribute("postVo", postVo);
		model.addAttribute("no", no);
		model.addAttribute("listBoard", boardService.selectAllBoard());
		model.addAttribute("cmtList",commentsService.selectCmtList(postno));
		return "postDetail";
	}

	@RequestMapping("/deleteCmt")
	public String deleteCmt(Model model, @RequestParam("postno")String postno,
							@RequestParam("cmtNo") String cmtNo, @RequestParam("bd_no")String no) {

		CommentsVo commentsVo = commentsService.selectCmt(cmtNo);
		commentsVo.setCmt_content("삭제 된 댓글 입니다.");
		commentsVo.setCmt_writer("");
		commentsService.updateCmt(commentsVo);
		PostVo postVo = postService.selectPost(postno);
		model.addAttribute("postVo", postVo);
		model.addAttribute("no", no);
		model.addAttribute("listBoard", boardService.selectAllBoard());
		model.addAttribute("cmtList",commentsService.selectCmtList(postno));
		return "postDetail";
	}

}
