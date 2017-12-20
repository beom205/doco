package com.doco.web;

import java.sql.Connection;
import java.sql.DriverManager;

import javax.inject.Inject;
import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.doco.mappers.MemberMapper;

@RunWith(SpringJUnit4ClassRunner.class) //JUnit으로 실행하겠다는 의미
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"}) //해당 경로의 설정파일을 참고하여 실행한다는 의미
public class TestCl {

	@Inject
	DataSource ds;
	
	@Inject
	MemberMapper mMapper;
	
	@Test
	public void test() {
		int i=0;
		System.out.println("i : " + i);
	}

	@Test
	public void connectionTest() throws Exception{
		String driver = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://192.168.0.32:3306/java97_db";				
		String user = "java97";
		String pw = "java97";
		
		Class.forName(driver);
        Connection con =
                DriverManager.getConnection(url, user, pw);
        System.out.println(con);
       
        con.close();
	}
	
	@Test
	public void testSayHello() throws Exception{
		System.out.println(ds.getConnection());
	}
	
	
	@Test
	public void getTimeTest() {
		System.out.println(mMapper.getTime());
	}
	
	@Test
	public void getTimeTestWithXML() {
		System.out.println(mMapper.getTime());
	}
}
