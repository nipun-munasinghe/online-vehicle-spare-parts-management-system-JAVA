package Controller;

import java.io.IOException;
import java.net.URLEncoder;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import Service.UserDB;
import Model.User;

@WebServlet("/updatePwdServlet")
public class updatePwdServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        Integer userid = (Integer) session.getAttribute("userid");

        // Redirect if user is not logged in
        if (userid == null) {
            response.sendRedirect("login.jsp?message=" + URLEncoder.encode("Please log in.", "UTF-8"));
            return;
        }

        @SuppressWarnings("unused")
		String oldPwd = request.getParameter("oldpwd");
        String newpwd = request.getParameter("newpwd");
        @SuppressWarnings("unused")
		String confirmpwd = request.getParameter("confirmpwd");

    
       
        // 5. Update password in the database
        boolean pwdchanged = UserDB.updatePassword(userid, newpwd);
        if (pwdchanged) {
            // Fetch updated user data from DB
            User updatedUser = UserDB.getUserdetails(userid);

            // Update session with latest user data
            session.setAttribute("user", updatedUser);

            // Redirect with success message
            response.sendRedirect("myProfileServelet");
        } else {
        	response.sendRedirect("myProfileServelet");
        }
    }
}