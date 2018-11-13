package kr.or.ddit.common;

import org.apache.ibatis.annotations.ResultMap;
import org.junit.Before;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.core.io.ClassPathResource;
import org.springframework.jdbc.datasource.init.DatabasePopulatorUtils;
import org.springframework.jdbc.datasource.init.ResourceDatabasePopulator;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MockMvcBuilder;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import javax.annotation.Resource;
import javax.sql.DataSource;

/**
 * kr.or.ddit.common
 * null.java
 * Desc :
 *
 * @Author : Mr.KKu
 * @Date : 2018-11-13 / 오후 1:54
 * @Version :
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {
		"classpath:kr/or/ddit/config/spring/root-context.xml",
		"classpath:kr/or/ddit/config/spring/datasource-test-context.xml"
})
@WebAppConfiguration
public class RootContext {

	@Resource(name = "datasource")
	private DataSource dataSource;

	@Autowired
	protected WebApplicationContext context;

	protected MockMvc mockMvc;

	@Before
	public void setup(){
		mockMvc = MockMvcBuilders.webAppContextSetup(context).build();

		//데이터 초기화
		ResourceDatabasePopulator populator = new ResourceDatabasePopulator();
		populator.addScript(new ClassPathResource("kr/or/ddit/config/db/ddInit.sql"));
		populator.setContinueOnError(false);
		DatabasePopulatorUtils.execute(populator, dataSource);
	}

	@Ignore
	@Test
	public void test() {}
}
