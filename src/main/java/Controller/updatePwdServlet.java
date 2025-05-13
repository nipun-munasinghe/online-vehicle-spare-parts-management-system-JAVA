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
        if (userid == null) {
            response.sendRedirect("login.jsp?message=" + URLEncoder.encode("Please log in.", "UTF-8"));
            return;
        }

        String oldPwd = request.getParameter("oldpwd");
        String newpwd = request.getParameter("newpwd");
        String confirmpwd = request.getParameter("confirmpwd");

        // 1. Check if new passwords match
        if (!newpwd.equals(confirmpwd)) {
            response.sendRedirect("user_profile.jsp?message=" + URLEncoder.encode("New passwords do not match!", "UTF-8"));
            return;
        }

        // 2. Get the current password from database
        User user = UserDB.getUserdetails(userid);
        if (user == null) {
            response.sendRedirect("login.jsp?message=" + URLEncoder.encode("User not found!", "UTF-8"));
            return;
        }

        // 3. Check if old password matches
        if (!user.getU_password().equals(oldPwd)) {
            response.sendRedirect("user_profile.jsp?message=" + URLEncoder.encode("Wrong Old Password. Try Again!", "UTF-8"));
            return;
        }

        // 4. Update the password in the database
        boolean pwdchanged = UserDB.updatePassword(userid, newpwd);
        if (pwdchanged) {
            session.setAttribute("password", newpwd); // Not recommended, but keeps your logic
            response.sendRedirect("user_profile.jsp?success=" + URLEncoder.encode("Password changed successfully!", "UTF-8"));
        } else {
            response.sendRedirect("user_profile.jsp?message=" + URLEncoder.encode("Error when changing password. Try Again!", "UTF-8"));
        }
    }
}
