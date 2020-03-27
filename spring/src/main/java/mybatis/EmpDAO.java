package mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

public class EmpDAO {
	
//	@Autowired
	SqlSession session;
	
	public void setSession(SqlSession session) {
		this.session = session;
	}
	
	// 1. all_emp
	public List<EmpVO> getAllEmp() {
		return session.selectList("all_emp");
	}
	
	// 2. one_emp
	public EmpVO getOneEmp(int id) {
		return session.selectOne("one_emp", id);
	}
	
	// 3. name_emp
	public List<EmpVO> getNameEmp(String name) {
		return session.selectList("name_emp", name);
	}
	
	// 3_2. namelike_emp
	public List<EmpVO> getNameLikeEmp(String key) {
		return session.selectList("namelike_emp", key);
	}
	
	// 4. idemp
	public List<EmpVO> getIdEmp(int id) {
		return session.selectList("idemp", id);
	}
	
	// 5. 
	public int insertEmp(EmpVO vo) {
		return session.insert("newemp", vo);
	}
	
	// 6.
	public int updateEmp(EmpVO vo) {
		return session.update("updateemp", vo);
	}
	
	// 7.
	public int deleteEmp(int id) {
		return session.delete("deleteemp", id);
	}
	
	// 88888
	public List<EmpVO> pagingEmp(int[] param) {
		return session.selectList("pagingemp", param);
	}
	
	// 1. all_emp	<select id="all_emp" resultType="mybatis.EmpVO">
//	List<EmpVO> list = session.selectList("all_emp");
//	for(EmpVO vo : list) {
//		System.out.println(vo.getEmployee_id() + " : " + vo.getFirst_name());
//	}

	// 2. one_emp	<select id="one_emp" resultType="mybatis.EmpVO">
//	EmpVO emp = session.selectOne("one_emp", 100);
//	System.out.println(emp.getEmployee_id() + " : " + emp.getFirst_name());
	
	// 3. name_emp	<select id="name_emp" resultType="mybatis.EmpVO">
//	List<EmpVO> list = session.selectList("name_emp", "Kelly");

	// 3_2. namelike_emp	// Pat, Peter, Payam...
//	List<EmpVO> list = session.selectList("namelike_emp", "P");
	
	// 4.
//	List<EmpVO> list = session.selectList("idemp", 150);
//	
//	for(EmpVO vo : list) {
//		System.out.println(vo.getEmployee_id() + " : " + vo.getHire_date());
//	}
	
}
