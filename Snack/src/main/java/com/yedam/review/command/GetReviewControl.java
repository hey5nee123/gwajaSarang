package com.yedam.review.command;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.common.Control;
import com.yedam.review.service.ReviewService;
import com.yedam.review.serviceImpl.ReviewServiceImpl;
import com.yedam.review.vo.ReviewVO;

public class GetReviewControl implements Control {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {

		ReviewService svc = new ReviewServiceImpl();

		String reviewCode = req.getParameter("reviewCode");
		ReviewVO vo = svc.getReview(Integer.parseInt(reviewCode));

		req.setAttribute("vo", vo);
		RequestDispatcher rd = req.getRequestDispatcher("review/getReview.tiles");
		try {
			rd.forward(req, resp);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
	}

}
