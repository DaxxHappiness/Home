package account0621;

public class AccountDto {
	private int accnum;
	private String name;
	private int doposit;
	
	// constructor
	public AccountDto() {}
	public AccountDto(int accnum, String name, int doposit) {
		super();
		this.accnum = accnum;
		this.name = name;
		this.doposit = doposit;
	}
	
	// getter & setter
	public int getAccnum() {
		return accnum;
	}
	public void setAccnum(int accnum) {
		this.accnum = accnum;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getDoposit() {
		return doposit;
	}
	public void setDoposit(int doposit) {
		this.doposit = doposit;
	}
	
	// toString method override
	@Override
	public String toString() {
		return "accountDto [accnum=" + accnum + ", name=" + name + ", doposit=" + doposit + "]";
	}
}
