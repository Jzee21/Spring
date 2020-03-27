package mybatis;

import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class EmpMain {

	public static void main(String[] args) {
		
		try {
			String resource = "mybatis/mybatis-config.xml";
			
			// 1.
			SqlSessionFactoryBuilder builder = new SqlSessionFactoryBuilder();
			
			// 2. SqlSessionFactory - 연결 설정 읽어오기
			SqlSessionFactory factory = 
					builder.build(Resources.getResourceAsReader(resource));
			
			// 3. SqlSession - 연결 생성	: JDBC Connection과 유사
//			SqlSession session = factory.openSession();
			SqlSession session = factory.openSession(true);		// auto commit
			
			System.out.println(session.getConnection().getAutoCommit());	// null : conn error
			
			EmpDAO dao = new EmpDAO();
			dao.setSession(session);
			
			// connection.prepareSattement(sql)
			// output
			
			// 1. all_emp	<select id="all_emp" resultType="mybatis.EmpVO">
			List<EmpVO> list;
//			list = dao.getAllEmp();
//			for(EmpVO vo : list) {
//				System.out.println(vo.getEmployee_id() + " : " + vo.getFirst_name());
//			}

			// 2. one_emp	<select id="one_emp" resultType="mybatis.EmpVO">
//			EmpVO emp = dao.getOneEmp(1001);
//			if(emp != null)
//				System.out.println(emp.getEmployee_id() + " : " + emp.getFirst_name());
//			else
//				System.out.println("존재하지 않는 사원입니다.");
			
			// 3. name_emp	<select id="name_emp" resultType="mybatis.EmpVO">
//			list = dao.getNameEmp("Steven");
//			for(EmpVO vo : list) {
//				System.out.println(vo.getEmployee_id() + " : " + vo.getFirst_name());
//			}

			// 3_2. namelike_emp	// Pat, Peter, Payam...
//			list = dao.getNameLikeEmp("P");
//			for(EmpVO vo : list) {
//				System.out.println(vo.getEmployee_id() + " : " + vo.getFirst_name());
//			}
			
			// 4. idemp
//			list = dao.getIdEmp(150);
//			for(EmpVO vo : list) {
//				System.out.println(vo.getEmployee_id() + " : " + vo.getHire_date());
//			}
			
			// 5. insert new Employees
			// 1000, 홍길동,
			// insert into employees(employees_id, last_name, first_name, hire_date, email, job_id)
			// values(1000, '길동', '홍', sysdate, 'test@gmail.com', 'IT_PROG')
//			EmpVO vo = new EmpVO();
//			vo.setEmployee_id(1001);
//			vo.setFirst_name("길동");
//			vo.setLast_name("홍");
//			vo.setEmail("gil2@multi.com");
//			vo.setJob_id("IT_PROG");
//			
//			if(dao.insertEmp(vo)==1) {
//				session.commit();
//				System.out.println("신규사원이 등록되었습니다.");
//			} else {
//				session.rollback();
//			}
			
			// 6. update employee name
			// update into employees set first_name='-', last_name='-' 
			// where employee_id=?
//			EmpVO vo = new EmpVO();
//			vo.setEmployee_id(1001);
//			vo.setFirst_name("석천");
//			vo.setLast_name("홍");
//			vo.setEmail("hong@multi.com");
//			
//			if(dao.updateEmp(vo)==1) {
//				System.out.println("update 되었습니다.");
//			}
			
			// 7. delete employee
//			if(dao.deleteEmp(1001)==1) {
//				System.out.println("Delete 되었습니다.");
//			}
			
			// 88888.
			int pagenum = 2;
			int param[] = new int[2];
			param[0] = (pagenum-1)*10+1;
			param[1] = (pagenum)*10;
			list = dao.pagingEmp(param);
			for(EmpVO vo : list) {
				System.out.println(vo.getFirst_name() + " : " + vo.getHire_date());
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
