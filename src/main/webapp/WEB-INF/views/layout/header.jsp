<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>구직자 이력서 등록 페이지</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Bootstrap icons-->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link href="/css/applicationhistory.css" rel="stylesheet" />
<link href="/css/clmatchinglist.css" rel="stylesheet" />
<link href="/css/companyenter.css" rel="stylesheet" />
<link href="/css/main_styles.css" rel="stylesheet" />
<link href="/css/plmatchinglist.css" rel="stylesheet" />
<link href="/css/resume_viewdetail.css" rel="stylesheet" />
<link href="/css/select_resume.css" rel="stylesheet" />
<link href="/css/styles.css" rel="stylesheet" />
<link href="/css/workenter.css" rel="stylesheet" />


<style>
.flex {
	display: flex;
	justify-content: flex-start;
}

.flex div {
	margin: 10px 50px 10px 0;
}
</style>
</head>

<body class="d-flex flex-column h-100">
	<!-- Navigation-->
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
		<div class="container-fluid">
			<a class="navbar-brand" href="/">이력서</a>
			<div class="collapse navbar-collapse" id="collapsibleNavbar">
				<ul class="navbar-nav" style="margin-left: auto; margin-right: auto;">

					<li class="nav-item"><a class="nav-link" href="*">채용공고</a></li>
					<c:if test="${principal.role == 'company' || principal.role == null}">
						<li class="nav-item"><a class="nav-link" href="index.html">관심구직자 매칭</a></li>
						<li class="nav-item"><a class="nav-link" href="index.html">기업 등록</a></li>
						<li class="nav-item"><a class="nav-link" href="index.html">구직자추천 리스트</a></li>
					</c:if>
					<c:if test="${principal.role == 'person' || principal.role == null}">
						<li class="nav-item"><a class="nav-link" href="/person/resumeWrite">이력서 등록</a></li>
						<li class="nav-item"><a class="nav-link" href="index.html">관심기업 매칭</a></li>
						<li class="nav-item"><a class="nav-link" href="/company/recommendList">기업추천 리스트</a></li>
						<li class="nav-item"><a class="nav-link" href="index.html">구독 페이지</a></li>
					</c:if>
					<c:if test="${principal == null }">
						<li class="nav-item" style="margin: 0 30px 0 30px;"><a href="/loginForm">
								<button id="btnUpdate" type="button" class="btn btn-primary">로그인/회원가입</button>
						</a></li>
					</c:if>
				</ul>
			</div>
			<c:if test="${principal != null}">
				<li class="nav-item"><a href="/logout"><button id="btnUpdate" type="button" class="btn btn-primary">로그아웃</button></a></li>
			</c:if>
		</div>
	</nav>