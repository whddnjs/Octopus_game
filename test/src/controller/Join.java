package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.UserDAO;

@WebServlet("/Join")
public class Join extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("euc-kr");
		
		String user_id = request.getParameter("id");
		String user_pw = request.getParameter("pw");

		UserDAO dao = new UserDAO();

		int cnt = dao.Join(user_id, user_pw);

		if (cnt > 0) {
			
			System.out.println("가입성공");
			
			RequestDispatcher rd = request.getRequestDispatcher("Main.jsp");

			request.setAttribute("id", user_id);

			rd.forward(request, response);

		} else {

			response.sendRedirect("Main.jsp");
			System.out.println("가입실패");
		}
	}
}
