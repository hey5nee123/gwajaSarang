package com.yedam.common;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServlet;

public class DFrontController extends HttpServlet{
	// 신혜원
	Map<String, Control> map = new HashMap<>();
	
	Map<String, Control> getMap(){
		
		return map;
	}
}
