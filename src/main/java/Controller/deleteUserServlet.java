package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Service.UserDB;

@WebServlet("/deleteUserServlet")
public class deleteUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String Userid = request.getParameter("usrid");
		int iD = Integer.parseInt(Userid);
		
		String from =(String) request.getParameter("from");
		
		if(from.equals("myprofile")) {
			try {
				boolean success = UserDB.deleteUser(iD);
				
				if(success) {
					response.sendRedirect("SignUp.jsp");
				}
				else {
					response.sendRedirect("myProfileServelet");
				}
			}
			catch(Exception e) {
				e.printStackTrace();
			}
		}
		
	}

}
