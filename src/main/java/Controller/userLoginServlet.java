package Controller; 

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.User;
import Service.UserDB;

@WebServlet("/userLoginServlet")

public class userLoginServlet extends HttpServlet { 


    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        User user = UserDB.authenticate(email, password);

        if (user != null) {
            HttpSession session = request.getSession();
            session.setAttribute("user", user);
            response.sendRedirect(request.getContextPath() + "/myProfileServlet.jsp");; 
        } else {
        	request.setAttribute("loginError", "Invalid username or password");
	        RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
	        dis.forward(request, response);
        }
    }
}
