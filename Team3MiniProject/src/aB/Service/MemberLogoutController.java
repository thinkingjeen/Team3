package aB.Service;

import java.io.IOException;
import java.sql.Connection;

import aB.Model.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import aB.Controller.ABController;
import aB.Model.AddressBookDAO;

public class MemberLogoutController implements ABController {

    @Override
    public void run(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	HttpSession session = request.getSession();
    	session.invalidate();
        RequestDispatcher dispatch = request.getRequestDispatcher("/ABView/signIn.jsp");
        dispatch.forward(request, response);
    }
}