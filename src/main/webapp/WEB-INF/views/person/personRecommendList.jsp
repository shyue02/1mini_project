<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" href="css/main.css">
<%@ include file="../layout/header.jsp"%>

<div class="container mt-3">
	<h2>구직자 추천 페이지</h2>

	<table class="table table-hover">
		<thead>
			<tr>
				<th>추천수</th>
				<th>이름</th>
				<th>이력서제목</th>
				<th>경력</th>
				<th>거주지</th>
				<th>기술스택</th>
				<th>구직자상세보기</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="person" items="${personRecommendListDto}">
				<tr>
					<td>${person.subjectId}</td>
					<td>${person.personName}</td>
					<td>${person.resumeTitle}</td>
					<td>${person.career}</td>
					<td>${person.address}</td>
					<td><c:forEach var="skills"  items="${person.skill}">
						${skills.skill} 
					</c:forEach></td>
						<td>
							<button type="button"
								onclick="location.href='/company/recommendList'"
								class="btn btn-primary">기업추천리스트보기</button> 
								<!-- 나중에 구직자상세보기 페이지 이동으로 변경해야 함-->
						</td>
				</tr>
			</c:forEach>

		</tbody>
	</table>
</div>

<%@ include file="../layout/footer.jsp"%>