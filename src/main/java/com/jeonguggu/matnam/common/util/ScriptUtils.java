package com.jeonguggu.matnam.common.util;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

public class ScriptUtils {
	
	public static void init(HttpServletResponse response) {
		response.setContentType("text/html; charset=utf-8");
		response.setCharacterEncoding("utf-8");
	}

	public static void alert(HttpServletResponse response, String alertText) throws Exception{
		init(response);
		PrintWriter out = response.getWriter();
		out.println("<script>alert('" + alertText + "');</script>");
		out.flush();
	}
	
	public static void alertAndMovePage(HttpServletResponse response, String alertText, String nextPage) throws Exception{
		init(response);
		PrintWriter out = response.getWriter();
		out.println("<script>alert('" + alertText + "'); location.href='" + nextPage + "'</script>");
		out.flush();
	}
}
