package nB.Model;

//Bean

public class PostDTO {
	private String postNumber;
	private String id;
    private String title;
    private String content;
	
    public PostDTO() {
    }
    
    public String getPostNumber() {
		return postNumber;
	}

    public void setPostNumber(String postNumber) {
		this.postNumber = postNumber;
	}
   
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
