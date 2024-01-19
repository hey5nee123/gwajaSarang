package com.yedam.member.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.yedam.common.Control;
import com.yedam.member.service.MemberService;
import com.yedam.member.serviceImpl.MemberServiceImpl;
import com.yedam.member.vo.MemberVO;

public class MemberAddJson implements Control{

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		
		String id = req.getParameter("id");
		
		MemberService svc = new MemberServiceImpl();
		boolean list = svc.checkMember(id);
		
		resp.setContentType("text/json;charset=utf-8");
		Gson gson = new GsonBuilder().create();
		
		try {
			resp.getWriter().print(gson.toJson(list)); 
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

}
