package empSpring;

public class EmpDAO {
	
	// form - data - db
	// db - data - html
	
	EmpVO vo;
	
	public EmpDAO() {
		System.out.println("EmpDAO 생성자");
	}
	
	public void setVo(EmpVO vo) {
		this.vo = vo;
	}

//		EmpVO emp = new EmpVO();
	public void insertEmp() {
		System.out.println(
				this.vo.getName() + " 사원은 급여로 "
				+ this.vo.getSalary() + " 를 받으며 "
				+ this.vo.getDeptname() + " 부서에서 근무합니다."
				);
		
		
	}
	
}
