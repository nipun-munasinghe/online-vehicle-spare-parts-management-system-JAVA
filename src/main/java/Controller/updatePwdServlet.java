package Controller;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Service.UserDB;

@WebServlet("/updatePwdServlet")
public class updatePwdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		String real_oldPwd = (String) session.getAttribute("password");
		int userid = (int) session.getAttribute("u_id");

		String oldPwd = request.getParameter("oldpwd");
		String newpwd = request.getParameter("u_password");

		if (real_oldPwd.equals(oldPwd)) {
			try {
				boolean pwdchanged = UserDB.updatePassword(userid, newpwd);
				if (pwdchanged) {
					response.sendRedirect("LogoutServlet");
				} else {
					String message = "Error when changing password. try Again!";
					response.sendRedirect("myProfileServlet?message=" + URLEncoder.encode(message, "UTF-8"));
				}

			} catch (Exception e) {
				e.printStackTrace();
			}

		} else {
			// send error using url
			String message = "Wrong Old Password. Try Again!";
			response.sendRedirect("myProfileServlet?message=" + URLEncoder.encode(message, "UTF-8"));
		}

	}

}
