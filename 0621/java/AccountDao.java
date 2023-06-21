package account0621;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class AccountDao {
	Connection getConnection() {
		Connection conn = null;
		try {
			Class.forName("org.mariadb.jdbc.Driver");
			conn = DriverManager.getConnection(
					"jdbc:mariadb://localhost:3307/jspdb", "root", "maria");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}
	
	ArrayList<AccountDto> selectList() {
		ArrayList<AccountDto> list = new ArrayList<>();
		Connection conn = this.getConnection();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("select accnum, name, deposit from account");
			while(rs.next()) {
				int accnum = rs.getInt("accnum");
				String name = rs.getString("name");
				int deposit = rs.getInt("deposit");
				AccountDto dto = new AccountDto(accnum, name, deposit);
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	AccountDto selectOne(int num) {
		AccountDto dto = null;
		Connection conn = this.getConnection();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(
					"select accnum, name, deposit from account WHERE accnum = "+num);
			if(rs.next()) {
				int accnum = rs.getInt("accnum");
				String name = rs.getString("name");
				int deposit = rs.getInt("deposit");
				dto = new AccountDto(accnum, name, deposit);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return dto;
	}
	
	void insert(AccountDto dto) {
		try {
			Connection conn = this.getConnection();
			Statement stmt = conn.createStatement();
			String sql = String.format("insert into account (accnum, name, deposit) values"
					+ "(%d, '%s', %d)", dto.getAccnum(), dto.getName(), dto.getDoposit());
			stmt.executeUpdate(sql);
			System.out.println(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	void update(AccountDto dto) {
		Connection conn = this.getConnection();
	}
	void delete() {}
}
