<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" href="css/workEnter.css">
<%@ include file="../layout/header.jsp"%>

<section class="py-5">
	<div class="container">
		<div class="view">
			<c:forEach var="personInfo" items="  ${personInfoDto}"  >
				<form>
					<input id="id" type="hidden" value="${personInfo.personId}" />


					<div class="mb-3 mt-3">
						<label for="uname">이름 : ${personInfo.personName}</label>
					</div>

					<div class="mb-3">
						<label for="email">연락처 : ${personInfo.personPhone}</label>
					</div>

					성별 :
					<c:if test="${personInfo.isGender == true}">남자</c:if>
					<c:if test="${personInfo.isGender == false}">여자</c:if>

					<br>
					<div class="mb-3">
						<label for="email">거주지 : ${personInfo.address}</label>
					</div>
					<div class="mb-3">
						<label class="">학력 : ${personInfo.degree}</label>
					</div>
					<div class="mb-3">
						<label class="">경력 : ${personInfo.career}</label> <label class="">년차</label>
					</div>
					<label for="email" class=""> 이메일 :
						${personInfo.personEmail} </label>
					<p>
						기술 스택 : 
						<c:forEach var="personSkillInfo" items="${personSkillInfoDto}" >
								<input id="id" type="hidden" value="${personSkillInfo.personId}" />
								<input id="id" type="hidden" value="${personSkillInfo.personSkillId}" />		
								${personSkillInfo.skill}
						</c:forEach>
					</p>
				</form>
			</c:forEach>
				
			
		</div>
	</div>
</section>

<%@ include file="../layout/footer.jsp"%>