package aB.Service;

import java.io.IOException;
import java.sql.Connection;
import java.util.LinkedList;

import aB.Model.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import aB.Controller.ABController;
import aB.Model.AddressBookDAO;

public class MemberSignInController implements ABController {

    @Override
    public void run(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        AddressBookDAO dao = AddressBookDAO.getInstance();

        //id랑 pw는 유저가 클라이언트 창에서 입력한 데이터다.
        String id = request.getParameter("id");
        String pw = request.getParameter("pw");
        if (dao.userCheck(id, pw)){
        RequestDispatcher dispatch = request.getRequestDispatcher("/ABView/mainCombined.jsp");
        HttpSession session = request.getSession();
        session.setAttribute("user", dao.getMember(id));
        session.setAttribute("ab", dao.getAddressList(id));
        dispatch.forward(request, response);
        }else{
        	RequestDispatcher dispatch = request.getRequestDispatcher("/ABView/signIn.jsp"); 
            dispatch.forward(request, response);
        }
    }
}