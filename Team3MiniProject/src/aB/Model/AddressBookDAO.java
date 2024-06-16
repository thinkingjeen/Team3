package aB.Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.LinkedList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class AddressBookDAO {
	
	private static AddressBookDAO instance = new AddressBookDAO();
	
	private AddressBookDAO() {
	}
	
	public static AddressBookDAO getInstance() {
		return instance;
	}
	
	private Connection getConnection() {
		
		Context context=null;
		DataSource dataSource = null;
		Connection connection = null;
		try {
			context= new InitialContext();
			dataSource =(DataSource)context.lookup("java:comp/env/jdbc/Oracle11g");
			connection = dataSource.getConnection();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return connection;
	}
	
	public AddressBookDTO getAddress(String addressId) {
		Connection connection = null;
		PreparedStatement pstmt = null;
		ResultSet set = null;
		AddressBookDTO dto = new AddressBookDTO();
		String query ="select * from addressbookdb where id = ?";
		try {
            connection = getConnection();
            pstmt = connection.prepareStatement(query);
            pstmt.setString(1, addressId);
            set = pstmt.executeQuery();
            
            if(set.next()) {
        		dto.setId(((Integer)set.getInt("id")).toString());
                dto.setName(set.getString("name"));
                dto.setPhoneNumber(set.getString("phonenumber"));
                dto.seteMail(set.getString("email"));
                dto.setAddress(set.getString("address"));
            }
        }catch(Exception e){
            e.printStackTrace();
        }finally {
            try {
                set.close();
                pstmt.close();
                connection.close();
            }catch(Exception e2) {
                e2.printStackTrace();
            }
        }
		return dto;
	}
	
	public LinkedList<AddressBookDTO> getAddressList(String memberId) {
		LinkedList<AddressBookDTO> result = new LinkedList<AddressBookDTO>();
		Connection connection = null;
		PreparedStatement pstmt = null;
		ResultSet set = null;
		String query ="select * from addressbookdb where memberid = ?";
		
		try {
            connection = getConnection();
            pstmt = connection.prepareStatement(query);
            pstmt.setString(1, memberId);
            set = pstmt.executeQuery();
            
            while(set.next()) {
        		AddressBookDTO dto = new AddressBookDTO();
        		dto.setId(set.getString("id"));
                dto.setName(set.getString("name"));
                dto.setPhoneNumber(set.getString("phonenumber"));
                dto.seteMail(set.getString("email"));
                dto.setAddress(set.getString("address"));
                result.add(dto);
            }
        }catch(Exception e){
            e.printStackTrace();
        }finally {
            try {
                set.close();
                pstmt.close();
                connection.close();
            }catch(Exception e2) {
                e2.printStackTrace();
            }
        }
		return result;
	}
	
	public MemberDTO getMember(String id) {
		Connection connection = null;
		PreparedStatement pstmt = null;
		ResultSet set = null;
		MemberDTO result = new MemberDTO();
		String query ="select * from abmember where id = ?";
		
		try {
            connection = getConnection();
            pstmt = connection.prepareStatement(query);
            pstmt.setString(1, id);
            set = pstmt.executeQuery();
            if(set.next()) {
                result.setId(set.getString("id"));
                result.setPw(set.getString("pw"));
                result.setName(set.getString("name"));
                result.setPhoneNumber(set.getString("phonenumber"));
                result.setEmail(set.getString("email"));
                result.setAddress(set.getString("address"));
            }
            else {
            	return null;
            }
        }catch(Exception e){
            e.printStackTrace();
        }finally {
            try {
                set.close();
                pstmt.close();
                connection.close();
            }catch(Exception e2) {
                e2.printStackTrace();
            }
        }
		return result;
	}
	
	public boolean updateMember(MemberDTO beforeDTO, MemberDTO afterDTO) {
		boolean ri = false;
		Connection connection = null;
		PreparedStatement pstmt = null;
		String id = beforeDTO.getId();
		String query ="update abmember set name=?, phoneNumber=?, email=?, address=? where id=?";
		try {
			connection = getConnection();
			pstmt = connection.prepareStatement(query);
			pstmt.setString(1, afterDTO.getName());
			pstmt.setString(2, afterDTO.getPhoneNumber());
			pstmt.setString(3, afterDTO.getEmail());
			pstmt.setString(4, afterDTO.getAddress());
			pstmt.setString(5, id);
			pstmt.executeUpdate();
			ri = true;
		}catch(Exception e) {
			e.printStackTrace();
		}finally{
			try {
				if(pstmt !=null) pstmt.close();
				if(connection !=null) connection.close();
			}catch(Exception e2) {
				e2.printStackTrace();
			}
		}
		return ri;
	}
	
	public boolean insertMember(MemberDTO dto) {
		boolean ri=false;
		Connection connection = null;
		PreparedStatement pstmt = null;
		String query ="insert into abmember values(?,?,?,?,?,?)";
		
		try {
			connection = getConnection();
			pstmt = connection.prepareStatement(query);
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getPw());
			pstmt.setString(3, dto.getName());
			pstmt.setString(4, dto.getPhoneNumber());
			pstmt.setString(5, dto.getEmail());
			pstmt.setString(6, dto.getAddress());
			pstmt.executeUpdate();
			ri = true;
		}catch(Exception e) {
			e.printStackTrace();
		}finally{
			try {
				if(pstmt !=null) pstmt.close();
				if(connection !=null) connection.close();
			}catch(Exception e2) {
				e2.printStackTrace();
			}
		}
		return ri;
	}
	
	public boolean insertAddress(String memberId,AddressBookDTO dto) {
        boolean ri=false;
        Connection connection = null;
        PreparedStatement pstmt = null;
        String query ="insert into addressbookdb(memberId,name,phoneNumber,email,address)"
                + "values(?,?,?,?,?)";
        
        try {
            connection = getConnection();
            pstmt = connection.prepareStatement(query);
            pstmt.setString(1, memberId);
            pstmt.setString(2, dto.getName());
            pstmt.setString(3, dto.getPhoneNumber());
            pstmt.setString(4, dto.geteMail());
            pstmt.setString(5, dto.getAddress());
            pstmt.executeUpdate();
            ri = true;
        }catch(Exception e) {
            e.printStackTrace();
        }finally {
            try {
                if(pstmt !=null) pstmt.close();
                if(connection !=null) connection.close();
            }catch(Exception e2) {
                e2.printStackTrace();
            }
        }
        return ri;
    }
	
	public boolean userCheck(String id, String pw) {
        String dbPw;

        Connection connection = null;
        PreparedStatement pstmt = null;
        ResultSet set = null;
        String query = "select pw from abmember where id = ?";

        try {
            connection = getConnection();
            pstmt = connection.prepareStatement(query);
            pstmt.setString(1, id);
            set = pstmt.executeQuery();

            if(set.next()) {
                dbPw = set.getString("pw");
                if(dbPw.equals(pw)) {
                    return true;
                }else {
                    return false;
                }
            }
        }catch(Exception e){
            e.printStackTrace();
        }finally {
            try {
                set.close();
                pstmt.close();
                connection.close();
            }catch(Exception e2) {
                e2.printStackTrace();
            }
        }
        return false;
    }
	
	public boolean updateAddress(AddressBookDTO dto) {
        boolean ri=false;
        Connection connection = null;
        PreparedStatement pstmt = null;
        String query ="UPDATE addressbookdb set name=?,phonenumber=?,email=?,address=? where id=?";

        try {
            connection = getConnection();
            pstmt = connection.prepareStatement(query);
            pstmt.setString(1, dto.getName());
            pstmt.setString(2, dto.getPhoneNumber());
            pstmt.setString(3, dto.geteMail());
            pstmt.setString(4, dto.getAddress());
            pstmt.setString(5, dto.getId());
            pstmt.executeUpdate();
            ri = true;
        }catch(Exception e) {
            e.printStackTrace();
        }finally {
            try {
                if(pstmt !=null) pstmt.close();
                if(connection !=null) connection.close();
            }catch(Exception e2) {
                e2.printStackTrace();
            }
        }
        return ri;
    }


    public boolean deleteAddress(String id) {
        boolean ri=false;
        Connection connection = null;
        PreparedStatement pstmt = null;
        String query ="DELETE FROM addressbookdb WHERE id = ?";

        try {
            connection = getConnection();
            pstmt = connection.prepareStatement(query);
            pstmt.setString(1, id);
            pstmt.executeUpdate();
            ri = true;
        }catch(Exception e) {
            e.printStackTrace();
        }finally {
            try {
                if(pstmt !=null) pstmt.close();
                if(connection !=null) connection.close();
            }catch(Exception e2) {
                e2.printStackTrace();
            }
        }
        return ri;
    }
}