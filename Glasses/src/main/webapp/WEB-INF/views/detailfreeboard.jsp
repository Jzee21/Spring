<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.multi.glasses.MemberVO"%>
<%@page import="com.multi.glasses.BoardVO"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>자유게시판</title>
<link href="resources/css/styles.css" rel="stylesheet" />
<link href="resources/css/hg.css" rel="stylesheet" />
<link
	href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css"
	rel="stylesheet" crossorigin="anonymous" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js"
	crossorigin="anonymous"></script>
</head>
<body class="sb-nav-fixed">
	<% MemberVO logined = (MemberVO)session.getAttribute("member"); %>
	<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
		<%if(!logined.getHouse_id().equals("admin")){%>
        <a class="navbar-brand" href="<%=request.getContextPath()%>/homeinfo">Glasses Village</a>
        <%} else { %>
        <a class="navbar-brand" href="<%=request.getContextPath()%>/membertable?pagenum=1">Glasses Village</a>
        <%} %>
		<button class="btn btn-link btn-sm order-1 order-lg-0"
			id="sidebarToggle" href="#">
			<i class="fas fa-bars"></i>
		</button>
		<!-- 사람표시를 맨 오른쪽으로 보내기 위함 -->
		<div class="input-group"></div>
		<!-- Navbar-->
		<ul class="navbar-nav ml-auto ml-md-0">
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" id="userDropdown" href="#"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
				<div class="dropdown-menu dropdown-menu-right"
					aria-labelledby="userDropdown">
					<a class="dropdown-item" href="#">마이페이지</a> <a
						class="dropdown-item" href="<%=request.getContextPath()%>/">로그아웃</a>
				</div></li>
		</ul>
	</nav>
	<div id="layoutSidenav">
		<div id="layoutSidenav_nav">
			<nav class="sb-sidenav accordion sb-sidenav-dark"
				id="sidenavAccordion">
				<div class="sb-sidenav-menu">
					<div class="nav">
						<div class="sb-sidenav-menu-heading"></div>
						<%if(!logined.getHouse_id().equals("admin")){%>
                            <a class="nav-link" href="<%=request.getContextPath()%>/homeinfo">
                            	<div class="sb-nav-link-icon">
                            		<i class="fas fa-tachometer-alt"></i>
                            	</div>
                                	메인화면
                            </a>
                            <%} else { %>
                            <a class="nav-link" href="<%=request.getContextPath()%>/membertable?pagenum=1">
                            	<div class="sb-nav-link-icon">
                            		<i class="fas fa-tachometer-alt"></i>
                            	</div>
                                	회원 관리
                            </a>
                            <%} %>
                            <div class="sb-sidenav-menu-heading"></div>
                            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                	게시판
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                	<a class="nav-link" href="<%=request.getContextPath()%>/noticeboardlist">공지사항</a>
                                	<a class="nav-link" href="<%=request.getContextPath()%>/freeboardlist">자유게시판 </a>
                                </nav>
                            </div>
                            <div class="sb-sidenav-menu-heading"></div>
                            
                        </div>
                    </div>
                    <div class="sb-sidenav-footer">
                        <div class="small">Logged in as:</div>
                        ${member.member_id }
                    </div>
			</nav>
		</div>
		<div id="layoutSidenav_content">
			<main>
			<div class="container-fluid">
				<h1 class="mt-4">게시판</h1>
				<ol class="breadcrumb mb-4">
					<li class="breadcrumb-item">게시판</li>
					<li class="breadcrumb-item active">자유게시판</li>
				</ol>
				<div class="card mb-4">
					<div class="card-header">
						<i class="fas fa-table mr-1"></i>${vo.board_no}번 게시물
					</div>
					<div class="card-body">
						<div class="table-responsive">
							<table class="detailboard">
								<tr>
									<td class="detailboard">번호</td>
									<td class="detailboard" colspan="2">${vo.board_no}</td>
								</tr>
								<tr>
									<td class="detailboard">제목</td>
									<td class="detailboard" colspan="2">${vo.title}</td>
								</tr>
								<tr>
									<td class="detailboard">내용</td>
									<td class="detailboard" colspan="2">${vo.contents}</td>
								</tr>
								<tr>
									<td class="detailboard">작성자</td>
									<td class="detailboard" colspan="2">${vo.member_id}</td>
								</tr>
								<tr>
									<td class="detailboard">조회수</td>
									<td class="detailboard" colspan="2">${vo.viewcnt}</td>
								</tr>
								<tr>
									<td class="detailboard">등록일시</td>
									<td class="detailboard" colspan="2">${vo.reg_date}</td>
								</tr>
								<tr>
									<%
										BoardVO vo = (BoardVO)request.getAttribute("vo");
										if(vo.getMember_id().equals(logined.getMember_id())){
										
									%>
									<td class="formbox">
										<form action="<%=request.getContextPath()%>/boardupdate">
											<input type="hidden" value="${vo.board_no}" name="board_no">
											<input type="submit" value="수정">
										</form>
									</td>
									<td class="formbox">
										<form action="<%=request.getContextPath()%>/boarddelete">
											<input type="hidden" value="${vo.board_no}" name="board_no">
											<input type="submit" value="삭제">
										</form>
									</td>
									<td class="formbox">
										<form action="<%=request.getContextPath()%>/freeboardlist">
											<input type="submit" value="목록">
										</form>
									</td>
									<%} else { %>
									<td>
										<form action="<%=request.getContextPath()%>/freeboardlist">
											<input type="submit" value="목록">
										</form>
									</td>
									<td></td>
									<td></td>
									<%} %>
							</table>
						</div>
					</div>
				</div>
			</div>
			</main>
			<footer class="py-4 bg-light mt-auto">
				<div class="container-fluid">
					<div
						class="d-flex align-items-center justify-content-between small">
						<div class="text-muted">Copyright &copy; Glasses Village 2020</div>
						<div>
							<a href="#">Privacy Policy</a> &middot; <a href="#">Terms
								&amp; Conditions</a>
						</div>
					</div>
				</div>
			</footer>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="resources/js/scripts.js"></script>
	<script
		src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"
		crossorigin="anonymous"></script>
	<script src="resources/assets/demo/datatables-demo.js"></script>
</body>
</html>
