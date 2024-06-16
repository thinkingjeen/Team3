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

public class MemberUpdateController implements ABController {

    @Override
    public void run(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	AddressBookDAO dao = AddressBookDAO.getInstance();
    	HttpSession session = request.getSession();
		MemberDTO dto = new MemberDTO();
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String phoneNumber = request.getParameter("phone");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		dto.setId(id);
		dto.setPw(pw);
		dto.setName(name);
		dto.setPhoneNumber(phoneNumber);
		dto.setEmail(email);
		dto.setAddress(address);
		
		if(dao.updateMember((MemberDTO)session.getAttribute("user") ,dto)) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("/ABView/main.jsp");
			session.setAttribute("user", dto);
			dispatcher.forward(request, response);	
		}else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("/ABView/updateMember.jsp");
			dispatcher.forward(request, response);
		}
    	
    }
}