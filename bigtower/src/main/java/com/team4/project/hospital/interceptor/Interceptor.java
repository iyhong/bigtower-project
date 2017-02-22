package com.team4.project.hospital.interceptor;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class Interceptor extends HandlerInterceptorAdapter{
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
        try {
            //LIBRARYID이라는 세션key를 가진 정보가 널일경우 sessionCheck페이지로 이동
            if(request.getSession().getAttribute("LIBRARYID") == null ){
                //sessionCheck.jsp가 WEB-INF내에 있기때문에 response.sendRedirect를 할수 없다. 그래서 forward함
            	RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/jsp/sessionCheck.jsp");
            	rd.forward(request, response);
            	return false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        //LIBRARYID 세션key 존재시 요청 페이지로 이동
        return true;
	}
}
