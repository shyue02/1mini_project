<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>
<!-- Body-->
<div class="container mt-3">
	<h2>기업 추천 리스트</h2>

	<table class="table table-hover">
		<thead>
			<tr>
				<th>추천수</th>
				<th>근무지</th>
				<th>기업명</th>
				<th>급여</th>
				<th>기술</th>
				<th>기업상세보기</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="company" items="${companyRecommendList}">
				<tr>
					<td>${company.recommendCount}</td>
					<td>${company.address}</td>
					<td>${company.companyName}</td>
					<td>${company.salary}</td>
					<td>${company.tech}</td>
					<td>
						<button type="button" class="btn btn-primary">기업 상세보기</button>
					</td>
				</tr>
			</c:forEach>

		</tbody>
	</table>
</div>
<%@ include file="../layout/footer.jsp"%>