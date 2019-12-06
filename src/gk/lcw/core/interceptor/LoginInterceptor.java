package gk.lcw.core.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import gk.lcw.po.H_user;

public class LoginInterceptor implements HandlerInterceptor{

	@Override
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object arg2) throws Exception {
		// TODO Auto-generated method stub
		String url = request.getRequestURI();
		System.out.println(url);
		if (url.indexOf("/checkHuser")>=0||url.indexOf("/login")>=0||url.indexOf("/gotoRegist")>=0){
			return true;
		}
		
		HttpSession session =request.getSession();
		H_user h_user = (H_user) session.getAttribute("h_user_session");
		if(h_user!=null){
			return true;
		}
		request.setAttribute("msg", "您还没有登陆，请先登陆！");
		request.getRequestDispatcher("/WEB-INF/jsp/login.jsp").forward(request, response);;
		return false;
	}
	

}
