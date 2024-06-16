package nB.Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class PostDAO {

	private static PostDAO instance = new PostDAO();

	public PostDAO() {
	}

	public static PostDAO getInstance() {
		return instance;
	}

	private Connection getConnection() {
		Context context = null;
		DataSource dataSource = null;
		Connection connection = null;
		try {
			context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/Oracle11g");
			connection = dataSource.getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return connection;
	}

	public List<PostDTO> getPosts() {
		List<PostDTO> posts = new ArrayList<>();
		Connection connection = null;
		PreparedStatement pstmt = null;
		ResultSet set = null;
		String query = "SELECT * FROM posts";
		try {
			connection = getConnection();
			pstmt = connection.prepareStatement(query);
			set = pstmt.executeQuery();
			while (set.next()) {
				PostDTO dto = new PostDTO();
				String postNumber = ((Integer)set.getInt("postNumber")).toString();
				String id = set.getString("id");
				String title = set.getString("title");
				String content = set.getString("content");
				dto.setPostNumber(postNumber);
				dto.setId(id);
				dto.setTitle(title);
				dto.setContent(content);
				posts.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try {
				if(pstmt !=null) pstmt.close();
				if(connection !=null) connection.close();
			}catch(Exception e2) {
				e2.printStackTrace();
			}
		}
		return posts;
	}

	public PostDTO getPostByPostNumber(String postNumber) {
		PostDTO dto = new PostDTO();
		Connection connection = null;
		PreparedStatement pstmt = null;
		ResultSet set = null;
		String query = "SELECT * FROM posts WHERE postnumber = ?";
		try {
			connection = getConnection(); 
			pstmt = connection.prepareStatement(query);
			pstmt.setString(1, postNumber);
			set = pstmt.executeQuery();
				if (set.next()) {
					String id = set.getString("id");
					String title = set.getString("title");
					String content = set.getString("content");
					dto.setPostNumber(postNumber);
					dto.setId(id);
					dto.setTitle(title);
					dto.setContent(content);
				}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try {
				if(pstmt !=null) pstmt.close();
				if(connection !=null) connection.close();
			}catch(Exception e2) {
				e2.printStackTrace();
			}
		}
		return dto;
	}

	public void addPost(PostDTO post) {
		Connection connection = null;
		PreparedStatement pstmt = null;
		ResultSet set = null;
		String query = "INSERT INTO posts (id, title, content) VALUES (?, ?, ?)";
		try {
			connection = getConnection(); 
			pstmt = connection.prepareStatement(query);
			pstmt.setString(1, post.getId());
			pstmt.setString(2, post.getTitle());
			pstmt.setString(3, post.getContent());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try {
				if(pstmt !=null) pstmt.close();
				if(connection !=null) connection.close();
			}catch(Exception e2) {
				e2.printStackTrace();
			}
		}
	}	

	public void updatePost(PostDTO post) {

		Connection connection = null;
		PreparedStatement pstmt = null;
		String query = "UPDATE posts SET title = ?, content = ? WHERE postNumber = ?";
		try {
			connection = getConnection();
			pstmt = connection.prepareStatement(query);

			pstmt.setString(1, post.getTitle());
			pstmt.setString(2, post.getContent());
			pstmt.setString(3, post.getPostNumber());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try {
				if(pstmt !=null) pstmt.close();
				if(connection !=null) connection.close();
			}catch(Exception e2) {
				e2.printStackTrace();
			}
		}
	}
	
	//글 번호를 매개변수로 받게 해야함
	public void deletePost(String postNumber) {
		Connection connection = null;
		PreparedStatement pstmt = null;
		String query = "delete from posts where articleNumber = ?";
		try {
			connection = getConnection(); 
			pstmt = connection.prepareStatement(query);

			pstmt.setString(1, postNumber);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try {
				if(pstmt !=null) pstmt.close();
				if(connection !=null) connection.close();
			}catch(Exception e2) {
				e2.printStackTrace();
			}
		}
	}
}

