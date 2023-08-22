<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
</style>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- Page top section -->
	<section class="page-top-section set-bg"
		data-setbg="usertemplet/img/page-top-bg/4.jpg">
		<div class="page-info">
			<h2>Support</h2>
			<div class="site-breadcrumb">
				<a href="home.do">Home</a> / FAQ
			</div>
		</div>
	</section>
	<!-- Page top end-->
	<!-- Table Section -->
	<section class="review-section">
		<div class="container">
			<div align="center">
				<div>
					<h2 class="text-white">FAQ 작성</h2>
				</div>
				<br>
				<div>
					<form id="noticefrm" action="faqinsert.do" method="post">
						<div style="background-color: white;">
							<table class="table table-bordered">
								<tr>
									<th width="100">작성자</th>
									<td><input type="text" id="faqWriter" name="faqWriter"
										value="test" readonly="readonly" /></td>
									<th width="100">작성일자</th>
									<td><input type="date" id="faqDate" name="faqDate"
										required="required" /></td>
								</tr>
								<tr>
									<th>제목</th>
									<td colspan="3"><input type="text" size="125" id="faqTitle"
										name="faqTitle" required="required" /></td>
								</tr>
								<tr>
									<th>내용</th>
									<td colspan="3"><textarea id="faqSubject"
											name="faqSubject" cols="125" rows="20"></textarea></td>
								</tr>
							</table>
						</div>
						<br> <input type="hidden" id="faqWriterId" name="faqWriterId"
							value="testId">
						<div align="right">
							<button class="site-btn" type="submit">
								작성 <img src="usertemplet/img/icons/double-arrow.png" alt="#" />
							</button>
							&nbsp;&nbsp;&nbsp;
							<button class="site-btn" type="reset">
								취소 <img src="usertemplet/img/icons/double-arrow.png" alt="#" />
							</button>
						</div>
						<br>
					</form>
				</div>
			</div>
		</div>
	</section>
	<script type="text/javascript">
	document.getElementById('faqDate').value = new Date().toISOString().substring(0, 10);;
	</script>
</body>
</html>