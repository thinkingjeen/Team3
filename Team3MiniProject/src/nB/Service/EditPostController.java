package nB.Service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import aB.Controller.ABController;
import nB.Model.PostDTO;
import nB.Model.PostDAO;

public class EditPostController implements ABController {

	public void run(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PostDAO dao = PostDAO.getInstance();
		String postNumber = request.getParameter("postNumber");
        String title = request.getParameter("title");
        String content = request.getParameter("content");
        PostDTO dto = new PostDTO();
        dto.setPostNumber(postNumber);
        dto.setTitle(title);
        dto.setContent(content);
        
        dao.updatePost(dto);
        
        request.setAttribute("post", dto);
        request.getRequestDispatcher("/NBView/postView.jsp").forward(request, response);
	}
}
