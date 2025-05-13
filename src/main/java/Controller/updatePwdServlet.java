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

        String oldPwd = request.getParameter("oldpwd");
        String newpwd = request.getParameter("newpwd");
        String confirmpwd = request.getParameter("confirmpwd");

        // 1. Check if new passwords match
        if (!newpwd.equals(confirmpwd)) {
            response.sendRedirect("user_profile.jsp?message=" + URLEncoder.encode("New passwords do not match!", "UTF-8"));
            return;
        }

        // 2. Get the current user from database
        User user = UserDB.getUserdetails(userid);
        if (user == null) {
            response.sendRedirect("login.jsp?message=" + URLEncoder.encode("User not found!", "UTF-8"));
            return;
        }

        // 3. Validate old password against database
        if (!user.getU_password().equals(oldPwd)) {
            response.sendRedirect("user_profile.jsp?message=" + URLEncoder.encode("Wrong Old Password. Try Again!", "UTF-8"));
            return;
        }

        // 4. Update password in the database
        boolean pwdchanged = UserDB.updatePassword(userid, newpwd);
        if (pwdchanged) {
            // Fetch updated user data from DB
            User updatedUser = UserDB.getUserdetails(userid);
            
            // Update session with latest user data
            session.setAttribute("user", updatedUser);
            
            // Redirect with success message
            response.sendRedirect("user_profile.jsp?success=" + URLEncoder.encode("Password changed successfully!", "UTF-8"));
        } else {
            response.sendRedirect("user_profile.jsp?message=" + URLEncoder.encode("Error when changing password. Try Again!", "UTF-8"));
        }
    }
    
    
}
