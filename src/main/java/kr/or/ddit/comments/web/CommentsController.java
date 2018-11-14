package kr.or.ddit.comments.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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

	@RequestMapping("/insertCmt")
	public String insertCmt() {
		return "insertCmt";
	}

	@RequestMapping("/updateCmt")
	public String updateCmt() {
		return "updateCmt";
	}

	@RequestMapping("/deleteCmt")
	public String deleteCmt() {
		return "deleteCmt";
	}
}
