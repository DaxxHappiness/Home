package account0621;

public class Test {

	public static void main(String[] args) {
		AccountDao dao = new AccountDao();
		AccountDto dto = new AccountDto(5, "DDDD", 50000);
		
		dao.selectOne(1002);
//		dao.insert(dto);
		System.out.println(dao.selectOne(1002));
		
	}

}
