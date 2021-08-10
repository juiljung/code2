package ch04.com.controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletExcetion;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ch04.com.model.LoginBean;

public clss ControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request,HttpServletResponse response)
	throws ServletException, IOException {
		response.serContentType("text/html; charset=utf-8");
		
		String id= request.getParameter("id");
		String password = request.getParameter("password");
		
		LoginBean bean = new LoginBean();
		bean.setId(id);
		bean.setPassword(password);
		requestr.setAttribute("bean",bean);
		
		boolean status = bean.validate();
		
		if (status) {
			ResquestDispatcher rd= request.getRequestDispatcher
			("mvc_success.jsp");
			rd.forward(request,response);
		}else {
			ResquestDispatcher rd= request.getRequestDispatcher
					("mvc_error.jsp");
					rd.forward(request,response);
		}
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpservletResponse resp)
	throws ServletException, IOException {
		doPost(req,resp);
	}
	
}