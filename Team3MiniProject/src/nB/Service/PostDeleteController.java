package nB.Service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import aB.Controller.ABController;
import nB.Model.PostDTO;
import nB.Model.PostDAO;

public class PostDeleteController implements ABController {

	public void run(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PostDAO dao = PostDAO.getInstance();
		String postNumber = request.getParameter("postNumber");
        //postView.jsp에서 submit해서 보낸 postNumber를 스트링으로 저장.
        dao.deletePost(postNumber);
        //저장된 postNumber를 매개변수로 그 글 번호의 튜플을 DB에서 삭제하는 메서드 실행.
        request.getRequestDispatcher("/controller/listPosts").forward(request, response);
        //글 삭제 후 글 목록으로 이동.
	}
}
