<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<div class="d-flex justify-content-center">
	<div style="width: 400px;">
		<br>
		<form>
			<div class="d-flex justify-content-between">
				<div class="d-flex" style="margin-bottom: 20px;">
					아이디 &nbsp;&nbsp;&nbsp;<input style="width: 400px;" id="username" type="text" class="form-control"
						placeholder="아이디를 입력하세요">
				</div>
			</div>
			<div class="d-flex justify-content-between">
				<div class="d-flex" style="margin-bottom: 20px;">
					비밀번호 &nbsp;&nbsp;&nbsp;<input style="width: 400px;" id="password" type="password" class="form-control"
						placeholder="아이디를 입력하세요">
				</div>
			</div>
			<div class="d-flex justify-content-center">
				<a href="/personJoinForm"><button id="btnPersonJoin" type="button" class="btn btn-primary" style="margin-right: 30px">개인 회원가입</button></a>
				<a href="/companyJoinForm"><button id="btnCompanyJoin" type="button" class="btn btn-primary">기업 회원가입</button></a>
			</div>
			<div class="d-flex justify-content-center">
				<button id="btnLogin" type="button" class="btn btn-primary" style="margin-top: 20px">로그인</button>
			</div>

		</form>
	</div>
</div>

<script>


	$("#btnLogin").click(()=>{
		let username = $("#username").val();
		let password = $("#password").val();
		
		let data={
				username : username,
				password : password
		};
		
		$.ajax("/login", {
			type: "POST",
			dataType: "json",
			data: JSON.stringify(data),
			headers: {
				"Content-Type": "application/json"
			}
		}).done((res) => {
			if (res.code == 1) {
				alert("성공!");
				location.href = "/loginForm";
			}
			else
				alert("아이디 혹은 비밀번호를 다시 입력하세요!");
		});
	});

</script>
<%@ include file="../layout/footer.jsp"%>