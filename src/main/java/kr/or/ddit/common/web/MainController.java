package kr.or.ddit.common.web;

import kr.or.ddit.board.model.BoardVo;
import kr.or.ddit.board.service.BoardServiceInf;
import kr.or.ddit.member.model.MemberVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import javax.annotation.Resource;
import java.util.List;

/**
 * kr.or.ddit.user.common.web
 * null.java
 * Desc :
 *
 * @Author : Mr.KKu
 * @Date : 2018-11-13 / 오후 1:45
 * @Version :
 */
@Controller
public class MainController {

	@Autowired
	private BoardServiceInf  boardService;
	@RequestMapping("/")
	public String index() {
		return "common/index";
	}

	@RequestMapping("/main")
	public String main() {
		boardService.selectAllBoard();
		return "common/index";
	}


}
