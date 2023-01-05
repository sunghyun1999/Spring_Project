<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="false"%>
<html>
<head>
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
	crossorigin="anonymous">
<title>글읽기</title>
</head>
<body>
	<form>
		<div class="container mt-3">
			<div class="mb-3">
				<label for="exampleFormControlInput1" class="form-label">글번호</label>
				<input type="text" class="form-control" name="bno"
					value="${boardVO.bno}" maxlength="50"
					aria-label="readonly input example" readonly>
			</div>
			<div class="mb-3">
				<label for="exampleFormControlInput1" class="form-label">제목</label>
				<input type="text" class="form-control" name="title"
					value="${boardVO.title}" maxlength="50"
					aria-label="readonly input example" readonly>
			</div>
			<div class="mb-3">
				<label for="exampleFormControlInput1" class="form-label">작성자</label>
				<input type="text" class="form-control" name="writer"
					value="${boardVO.writer}" maxlength="50"
					aria-label="readonly input example" readonly>
			</div>
			<div class="mb-3">
				<label for="exampleFormControlTextarea1" class="form-label">내용</label>
				<textarea class="form-control" style="height: 300px" name="content"
					maxlength="2048" aria-label="readonly input example" readonly>${boardVO.content}</textarea>
			</div>

			<button class="btn btn-primary" type="submit" formaction="modify"
				formmethod="get">수정</button>
			<button class="btn btn-primary" type="submit" formaction="remove"
				formmethod="post">삭제</button>
			<button class="btn btn-primary" type="submit" formaction="listAll"
				formmethod="get">목록</button>
		</div>
	</form>

	<!-- JavaScript Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8"
		crossorigin="anonymous"></script>
</body>
</html>