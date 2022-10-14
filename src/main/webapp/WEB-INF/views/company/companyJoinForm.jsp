<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<div class="container">
	<div class="view">
		<h2 style="margin-top: 10px;">기업 회원가입</h2>
		<hr />
		<div style="width: 500px;">
			<div style="width: 500px;">
				<div class="d-flex justify-content-between" style="margin-bottom: 20px;">
					아이디 <input id="username" type="text" class="form-control" placeholder="아이디를 입력하세요">
				</div>
				<div class="d-flex justify-content-between" style="margin-bottom: 20px;">
					비밀번호 <input id="password" type="password" class="form-control" placeholder="비밀번호를 입력하세요">
				</div>
				<div class="d-flex justify-content-between" style="margin-bottom: 20px;">
					비밀번호 확인 <input id="passwordCheck" type="password" class="form-control" placeholder="비밀번호를 입력하세요">
				</div>
			</div>
			<hr />
			<div class="d-flex justify-content-between" style="margin-bottom: 20px;">
				기업이름 <input id="companyName" type="text" class="form-control" placeholder="기업이름을 입력하세요">
			</div>
			<div class="d-flex justify-content-between" style="margin-bottom: 20px;">
				기업 이메일 <input id="companyEmail" type="email" class="form-control" placeholder="기업이메일을 입력하세요">
			</div>
			<div class="d-flex justify-content-between" style="margin-bottom: 20px;">
				기업전화번호 <input id="companyPhone" type="tel" class="form-control" placeholder="기업전화번호를 입력하세요">
			</div>

			<div class="d-flex justify-content-between" style="margin-bottom: 20px;">
				기업주소 <input id="address" type="text" class="form-control" placeholder="기업주소를 입력하세요">
			</div>
			<div class="d-flex justify-content-between" style="margin-bottom: 20px;">
				기업 설립연도 <input id="history" type="month" class="form-control" placeholder="설립연도 입력하세요">
			</div>
		</div>

		<div class="tech">
			<p>기술스택</p>
			<div>
				<c:forEach var="skill" items="${skillList}">
					<label><input id="skill" type="checkbox" name="skill" value="${skill}">${skill}</label>
				</c:forEach>
			</div>

		</div>
		<div class="mb-3">
			<label for="introduction">기업 소개글</label>
			<textarea id="introduction" cols="100" rows="5"></textarea>
		</div>
		<button id="btnJoin" class="btn btn-primary" type="button">가입완료</button>
	</div>
</div>
<script>
$("#btnJoin").click(()=>{
	let username = $("#username").val();
	let password = $("#password").val();
	let companyName = $("#companyName").val();
	let companyEmail = $("#companyEmail").val();
	let companyPhone = $("#companyPhone").val();
	let address = $("#address").val();
	let history = $("#history").val();
	let introduction = $("#introduction").val();
	console.log(typeof(introduction));
	console.log(typeof(history));
	
	let data={
			username : username,
			password : password,
			companyName : companyName,
			companyEmail : companyEmail,
			companyPhone : companyPhone,
			address : address,
			history : history,
			introduction : introduction
	}
	
	$.ajax("/company/join",{
		type:"POST",
		dataType: "json",
		data: JSON.stringify(data),
		headers: {
			"Content-Type": "application/json"
		}
	}).done((res)=>{
		if(res.code == 1){
			alert("회원가입성공!!");
			location.href="/loginForm";
		}
		else
			alert("이미 가입된 아이디가 있습니다!!");
	});
	
});


</script>



<%@ include file="../layout/footer.jsp"%>
