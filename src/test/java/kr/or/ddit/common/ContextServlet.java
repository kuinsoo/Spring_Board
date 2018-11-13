package kr.or.ddit.common;

import org.junit.Before;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

/**
 * kr.or.ddit.common
 * null.java
 * Desc :
 *
 * @Author : Mr.KKu
 * @Date : 2018-11-13 / 오후 1:53
 * @Version :
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {
		"classpath:kr/or/ddit/config/spring/root-context.xml",
		"classpath:kr/or/ddit/config/spring/datasource-test-context.xml",
		"classpath:kr/or/ddit/config/spring/context-servlet.xml"
})
@WebAppConfiguration
public class ContextServlet {
	@Autowired
	protected WebApplicationContext context;

	protected MockMvc mockMvc;
	@Before
	public void setup() {
		mockMvc = MockMvcBuilders.webAppContextSetup(context).build();
	}


	@Ignore
	@Test
	public void test() {}

}
