package vo;

import java.sql.Date;

public class SalaryVO {
	int empno;
	Date payday;
	int pay;

	public int getEmpno() {
		return empno;
	}

	public void setEmpno(int empno) {
		this.empno = empno;
	}

	public Date getPayday() {
		return payday;
	}

	public void setPayday(Date payday) {
		this.payday = payday;
	}

	public int getPay() {
		return pay;
	}

	public void setPay(int pay) {
		this.pay = pay;
	}
}
