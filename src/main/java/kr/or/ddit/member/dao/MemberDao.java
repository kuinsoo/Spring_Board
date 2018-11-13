package kr.or.ddit.member.dao;

import kr.or.ddit.member.model.MemberVo;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;
import javax.annotation.Resource;
import java.util.List;

/**
 * kr.or.ddit.user.dao
 * null.java
 * Desc : 유저 DAO
 *
 * @Author : Mr.KKu
 * @Date : 2018-11-13 / 오전 10:15
 * @Version :
 */
@Repository
public class MemberDao implements MemberDaoInf {

	@Resource(name = "sqlSessionTemplate")
	private SqlSessionTemplate template;


	@Override
	public List<MemberVo> selectAllMember() {
		return template.selectList("member.selectAllMember");
	}

	@Override
	public MemberVo selectMember(String mem_id) {
		return template.selectOne("selectMember",mem_id);
	}
}
