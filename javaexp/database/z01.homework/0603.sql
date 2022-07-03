--[1단계:개념] 1. database 서버 연동에 필요한 기본 정보를 java에서 설정하는 방법을 기술하세요.
-- 핵심객체를 기준으로 DB를 처리한 뒤, 연결, 대화, 그리고 결과를 받고 마지막으로 자원을 해제한다.

--[1단계:확인] 2. A01_Connection 객체로 연동처리하여, 연동된 내용을 출력하세요.

--[1단계:개념] 3. DAO 처리에서 사용하는 필드 Connection, Statement, ResultSet 객체의
--      역할과, 각 객체의 상호 생성 메서드를 기본예제를 통해서 설명하세요.
-- connection은 접속정보를 jdbc드라이버를 제공해주는 객체이고, statement는 sql을 db서버에
--이용하는 객체이고 마지막으로 ResultSet은 필요로 하는 정보를 select문을 수행한 경우만 이 객체를 사용하게된다.
	public int getEmpCnt() {
		int cnt = 0;
		String sql = "select count(*) cnt from emp";
		// 연결
		try {
			setConn();
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			rs.next();
			cnt = rs.getInt("cnt");
			rs.close();
			stmt.close();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch(Exception e) {
			System.out.println(e.getMessage());
		} finally {
			if(con!=null) {
				try {
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if(stmt!=null) {
				try {
					stmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if(rs!=null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return cnt;
	}

--[1단계:개념] 4. ResultSet 객체의 기능 메서드 next(), getXXX() 메서드에 대하여 기본예제와 함께 설명하세요.
		public int empCnt(){
			int cnt = 0;
			if(rs.next())
				cnt = rs.getInt("cnt");
			return cnt;
		}
--		rs.next()는 한칸 아래로 내려주는 명령어이기에 이 명령어를 통해 원하는 row를 찾고
--		rs.get데이터값("데이터명")을 통해 원하는 값을 추출해낼 수 있다.
	
--[1단계:확인] 5. 아래의 여러형태의 sql을 처리하는 기능 메서드를 만드세요.
--      1) select * from salgrade (출력만)
--      2) 부서별 최고급여자 (출력만)
--      3) 부서번호가 20인 최고연봉 (리턴유형 double)
--      4) 사원명이 JONES인 사원정보(출력만)
--      5) 분기별 최고 급여자(출력만)
		
SELECT * FROM salgrade;
SELECT ename FROM emp WHERE sal=(SELECT max(sal) FROM EMP e);
SELECT sal FROM emp WHERE sal=(SELECT max(sal) FROM EMP e WHERE deptno=20);
SELECT * FROM emp WHERE ename='JONES';
SELECT m.*
FROM (
	SELECT to_char(hiredate,'Q') hiredate, max(sal) sal
	FROM EMP e 
	GROUP BY to_char(hiredate,'Q')) m, emp e
WHERE m.sal = e.sal;
-- 3번의 구문에 대입하면된다
-- 1) sql = "SELECT * FROM salgrade";
-- 2) sql = "SELECT ename FROM emp WHERE sal=(SELECT max(sal) FROM EMP e)";
-- 3) sql = "SELECT sal FROM emp WHERE sal=(SELECT max(sal) FROM EMP e WHERE deptno=20)";
-- 4) sql = "SELECT * FROM emp WHERE ename='JONES'";//혹은
--	sql = "SELECT * FROM emp WHERE ename='"+ename+"'";처리한 뒤 설정을 String ename을 받도록하여
-- 원하는 ename값을 출력할 수 있도록 할수도있다.
-- 5) sql = "SELECT m.* FROM (SELECT to_char(hiredate,'Q') hiredate, max(sal) sal FROM EMP e 
--	GROUP BY to_char(hiredate,'Q')) m, emp e WHERE m.sal = e.sal;";