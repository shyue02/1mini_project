<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <link rel="stylesheet" href="css/workEnter.css">
    <%@ include file="../layout/header.jsp" %>
        <div class="container mt-3">
            <h2> 이력서 제목 : <input id="resume_title" type="text"></h2>
            <form>
                <input id="personId" type="hidden" value="${person.personId}" />
                <div class="mb-3 mt-3">
                </div>
                <div class="flex">
                    <div>
                        <!-- <form action="upload" method="post" enctype="multipart/form-data">
                            <input name="file" type="file">
                            <button type="submit">작성</button>
                        </form> -->
                        <form>
                            <img class="card-img-top" src="https://dummyimage.com/150x200/adb5bd/495057" alt="..." />

                            <p><input type="button" value="첨부하기"></p>
                        </form>
                    </div>
                    <div>
                        이름 : ${person.personName}</br>
                        이메일 : ${person.personEmail}</br>
                        학력 : ${person.degree}</br>
                        <div>
                            <form>
                                <c:forEach var="skills" items="${person.personSkillList}">
                                    ${skills.skill}
                                </c:forEach>
                            </form>
                        </div>
                        링크 : <input id="my_cloud" type="text"></br>
                        간단소개 : <textarea id="introduction" class="form-control" rows="5"></textarea></br>
                    </div>
                </div>
                <button id="btnsave" type="button" class="btn btn-primary">등록하기</button>
            </form>
        </div>

        <script>
            let personId = $("#personId").val();
            $("#btnsave").click(() => {
                save();
            });

            function save() {
                let data = {
                    resumeTitle: $("#resume_title").val(),
                    myCloud: $("#my_cloud").val(),
                    introduction: $("#introduction").val()
                };
                $.ajax("/save/resume/" + personId, {
                    type: "POST",
                    dataType: "json", // 응답 데이터
                    data: JSON.stringify(data), // http body에 들고갈 요청 데이터
                    headers: { // http header에 들고갈 요청 데이터
                        "Content-Type": "application/json"
                    }
                }).done((res) => {
                    if (res.code == 1) {
                        location.href = "/";
                    }
                });
            }
        </script>
        <%@ include file="../layout/footer.jsp" %>