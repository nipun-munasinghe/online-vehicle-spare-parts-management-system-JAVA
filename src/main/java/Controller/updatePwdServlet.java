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

    // Move your logic here
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        String real_oldPwd = (String) session.getAttribute("password");
        int userid = (int) session.getAttribute("userid");

        String oldPwd = request.getParameter("oldpwd");
        String newpwd = request.getParameter("newpwd"); 

        if (real_oldPwd.equals(oldPwd)) {
            try {
                boolean pwdchanged = UserDB.updatePassword(userid, newpwd);
                if (pwdchanged) {
                    session.setAttribute("password", newpwd); 
                    response.sendRedirect(request.getContextPath() + "/myProfileServelet");
                } else {
                    String message = "Error when changing password. Try Again!";
                    response.sendRedirect("myProfileServlet?message=" + URLEncoder.encode(message, "UTF-8"));
                }
            } catch (Exception e) {
                e.printStackTrace();
                response.sendRedirect("myProfileServlet?message=" + URLEncoder.encode("Unexpected error occurred.", "UTF-8"));
            }
        } else {
            String message = "Wrong Old Password. Try Again!";
            response.sendRedirect("myProfileServlet?message=" + URLEncoder.encode(message, "UTF-8"));
        }
    }
}
