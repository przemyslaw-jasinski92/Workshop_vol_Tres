package pl.coderslab.users;

import pl.coderslab.User;
import pl.coderslab.UserDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DeleteUser", value = "/user/delete")
public class DeleteUser extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
            userDao.delete(id);
        }catch(NumberFormatException e){
            e.printStackTrace();
        }
        response.sendRedirect("/user/list");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
