package com.servlet;
   
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.RepaintManager;

import com.conn.DBConnect;
import com.dao.StudentDAO;
import com.entity.Student;

@WebServlet("/registerr")
public class RegisterServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String name=req.getParameter("name");
		String dob=req.getParameter("dob");
		String address= req.getParameter("address");
		String qualification=req.getParameter("qualification");
		String email=req.getParameter("email");
		
		Student student=new Student(name,dob,address,qualification,email);
		
		//student dao me value send krne ke liye phle DAO class ka obj bnayenge aur usme as a parameter database connection wali method
		
		StudentDAO dao=new StudentDAO(DBConnect.getConn());
		
		HttpSession session=req.getSession();
		
		boolean f=dao.addStudent(student);
		if (f) {
			session.setAttribute("SuccessMsg", "Student Deatils Submit Successfully");
			resp.sendRedirect("add_student.jsp");
			
		}
		else {
			session.setAttribute("ErrorMsg", "Something Went Wrong Server");
			resp.sendRedirect("add_student.jsp");
		}
		
	}

	
	
}
