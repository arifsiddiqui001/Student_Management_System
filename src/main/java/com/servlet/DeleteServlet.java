package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.conn.DBConnect;
import com.dao.StudentDAO;

@WebServlet("/delete1")
public class DeleteServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int id=Integer.parseInt(req.getParameter("id"));
		StudentDAO dao=new StudentDAO(DBConnect.getConn());
		
		boolean f=dao.deleteStudentById(id);
        
		HttpSession session=req.getSession();
		
		
		if (f) {
			session.setAttribute("SuccessMsg", "Student Deatils Delete Successfully");
			resp.sendRedirect("index.jsp");
			
		}
		else {
			session.setAttribute("ErrorMsg", "Something Went Wrong Server");
			resp.sendRedirect("index.jsp");
		}
		
		
	}

	
	
}
