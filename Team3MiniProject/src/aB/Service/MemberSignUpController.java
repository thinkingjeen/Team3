package aB.Service;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import aB.Model.*;
import aB.Controller.ABController;

public class MemberSignUpController implements ABController {

	@Override
	public void run(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("signUP?");
		AddressBookDAO dao = AddressBookDAO.getInstance();
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
		
		if(dao.insertMember(dto)) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("/ABView/signIn.jsp");
			dispatcher.forward(request, response);	
		}else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("/ABView/signUp.jsp");
			dispatcher.forward(request, response);
		}
	}
}
