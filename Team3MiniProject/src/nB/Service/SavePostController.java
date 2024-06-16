package nB.Service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import aB.Controller.ABController;
import aB.Model.MemberDTO;
import nB.Model.PostDTO;
import nB.Model.PostDAO;

public class SavePostController implements ABController {

	public void run(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String userID = ((MemberDTO)(session.getAttribute("user"))).getId();
		//글 작성자 저장을 위해 현재 접속중인 사용자의 id를 받아옴
		
		PostDAO dao = PostDAO.getInstance();
        String title = request.getParameter("title");
        String content = request.getParameter("content");
        //DB에 저장할 새로운 데이터들
        PostDTO dto = new PostDTO();
        dto.setPostNumber(userID);
        //세션에서 받아온 MemberDTO의 접속 중인 사용자 ID를 글 작성자로 집어넣어줌
        dto.setTitle(title);
        dto.setContent(content);
        //작성자 id, 글 제목, 글 내용이 들어간 dto객체 생성 완료
        dao.addPost(dto);
        //PostDAO의 addPost()메서드를 콜 해서 글을 저장해줌
        
        request.getRequestDispatcher("/controller/listPosts").forward(request, response);
        //글 작성하고 저장했으니 글 목록으로 페이지로 이동함.
	}
	
//	@Override
//	public void run(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		PostDAO dao = PostDAO.getInstance();
//		String title = request.getParameter("title");
//      String content = request.getParameter("content");
//      PostDTO dto = new PostDTO();
//      dto.setTitle(title);
//      dto.setContent(content);
//      dao.addPost(dto);
//      request.getRequestDispatcher("/NBView/board.jsp").forward(request, response);
//	}
}
