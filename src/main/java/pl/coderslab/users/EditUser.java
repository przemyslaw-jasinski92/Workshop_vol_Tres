package pl.coderslab.users;

import pl.coderslab.User;
import pl.coderslab.UserDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "EditUser", value = "/user/edit")
public class EditUser extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession sess = request.getSession();
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        String idString = request.getParameter("id");

        if(idString == null || idString.isBlank()){
            response.sendRedirect("/user/list");
            return;
        }

        try{
            int id = Integer.parseInt(idString);
            UserDao userDao = new UserDao();
            User user = userDao.read(id);
            sess.setAttribute("user", user);
        }catch(NumberFormatException e){
            e.printStackTrace();
        }
        request.getRequestDispatcher("/users/edit.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String idString = request.getParameter("id");

        if(name == null || name.isBlank() || email == null ||
                email.isBlank() || password == null || password.isBlank() || idString == null || idString.isBlank()){
            response.sendRedirect("/user/list");
            return;
        }

        try{
            int id = Integer.parseInt(idString);
            UserDao userDao = new UserDao();
            User user = userDao.read(id);
            user.setUserName(name);
            user.setEmail(email);
            user.setPassword(password);
            userDao.updateWithPass(user);
        }catch(NumberFormatException e){
            e.printStackTrace();
        }
        response.sendRedirect("/user/list");
    }
}
