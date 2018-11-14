package kr.or.ddit.member.service;

import kr.or.ddit.member.dao.MemberDaoInf;
import kr.or.ddit.member.model.MemberVo;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * kr.or.ddit.user.service
 * null.java
 * Desc :
 *
 * @Author : Mr.KKu
 * @Date : 2018-11-13 / 오전 10:16
 * @Version :
 */
@Service
@Transactional
public class MemberService implements MemberServiceInf {

	@Resource(name = "memberDao")
	private MemberDaoInf memberDao;

	@Override
	public List<MemberVo> selectAllMember() {
		return memberDao.selectAllMember();
	}

	@Override
	public MemberVo selectMember(String mem_id) {
		return memberDao.selectMember(mem_id);
	}
}
