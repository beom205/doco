package com.doco.web;

import java.util.stream.IntStream;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.doco.domain.Member;
import com.doco.mappers.MemberMapper;

@RunWith(SpringJUnit4ClassRunner.class) //JUnit으로 실행하겠다는 의미
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"}) //해당 경로의 설정파일을 참고하여 실행한다는 의미
public class TestMember {
	@Inject
	MemberMapper mMapper;
	
	@Test
	public void memberCreateTest() {
		IntStream.range(0,100).forEach(i->{
			Member m= new Member();
			
			m.setId("test"+i);
			m.setPassword("123123");
			m.setName("asdf");
			m.setLevel("asdf");
			m.setTel("12341234");
			m.setEmail("asdfasd");
			mMapper.create(m);
		});
		
	}
}
