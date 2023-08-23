<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<style>
:root {
	--background-gradient: linear-gradient(30deg, #f39c12 30%, #f1c40f);
	--gray: #FFF;
	--darkgray: #FFF;
}

select {
	/* Reset Select */
	appearance: none;
	outline: 0;
	border: 0;
	box-shadow: none;
	/* Personalize */
	flex: 1;
	padding: 0 1em;
	color: #000;
	background-color: var(--darkgray);
	background-image: none;
	cursor: pointer;
}
/* Remove IE arrow */
select::-ms-expand {
	display: none;
}
/* Custom Select wrapper */
.select {
	position: relative;
	display: flex;
	width: 20em;
	height: 3em;
	border-radius: .25em;
	overflow: hidden;
}
/* Arrow */
.select::after {
	content: '\25BC';
	position: absolute;
	top: 0;
	right: 0;
	padding: 1em;
	background-color: #b01ba5;
	transition: .25s all ease;
	pointer-events: none;
}
/* Transition */
.select:hover::after {
	color: #fff;
}

.faq-section {
	background: #fdfdfd;
	min-height: 100vh;
	padding: 10vh 0 0;
}

.faq-title h2 {
	position: relative;
	margin-bottom: 45px;
	display: inline-block;
	font-weight: 600;
	line-height: 1;
}

.faq-title h2::before {
	content: "";
	position: absolute;
	left: 50%;
	width: 60px;
	height: 2px;
	background: #E91E63;
	bottom: -25px;
	margin-left: -30px;
}

.faq-title p {
	padding: 0 190px;
	margin-bottom: 10px;
}

.faq {
	background: #FFFFFF;
	box-shadow: 0 2px 48px 0 rgba(0, 0, 0, 0.06);
	border-radius: 4px;
}

.faq .card {
	border: none;
	background: none;
	border-bottom: 1px dashed #CEE1F8;
}

.faq .card .card-header {
	padding: 0px;
	border: none;
	background: none;
	-webkit-transition: all 0.3s ease 0s;
	-moz-transition: all 0.3s ease 0s;
	-o-transition: all 0.3s ease 0s;
	transition: all 0.3s ease 0s;
}

.faq .card .card-header:hover {
	background: rgba(233, 30, 99, 0.1);
	padding-left: 10px;
}

.faq .card .card-header .faq-title {
	width: 100%;
	text-align: left;
	padding: 0px;
	padding-left: 30px;
	padding-right: 30px;
	font-weight: 400;
	font-size: 15px;
	letter-spacing: 1px;
	color: #3B566E;
	text-decoration: none !important;
	-webkit-transition: all 0.3s ease 0s;
	-moz-transition: all 0.3s ease 0s;
	-o-transition: all 0.3s ease 0s;
	transition: all 0.3s ease 0s;
	cursor: pointer;
	padding-top: 20px;
	padding-bottom: 20px;
}

.faq .card .card-header .faq-title .badge {
	display: inline-block;
	width: 20px;
	height: 20px;
	line-height: 14px;
	float: left;
	-webkit-border-radius: 100px;
	-moz-border-radius: 100px;
	border-radius: 100px;
	text-align: center;
	background: #E91E63;
	color: #fff;
	font-size: 12px;
	margin-right: 20px;
}

.faq .card .card-body {
	padding: 30px;
	padding-left: 35px;
	padding-bottom: 16px;
	font-weight: 400;
	font-size: 16px;
	color: #6F8BA4;
	line-height: 28px;
	letter-spacing: 1px;
	border-top: 1px solid #F3F8FF;
}

.faq .card .card-body p {
	margin-bottom: 14px;
}

@media ( max-width : 991px) {
	.faq {
		margin-bottom: 30px;
	}
	.faq .card .card-header .faq-title {
		line-height: 26px;
		margin-top: 10px;
	}
}
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

	<section class="faq-section">
		<div class="container">
			<div class="row">
				<!-- ***** FAQ Start ***** -->
				<div class="col-md-6 offset-md-3">

					<div class="faq-title text-center pb-3">
						<h2>FAQ</h2>
					</div>
				</div>
				<div class="col-md-6 offset-md-3">
					<div class="faq" id="accordion">
						<div class="card">
							<div class="card-header" id="faqHeading-1">
								<div class="mb-0">
									<h5 class="faq-title" data-toggle="collapse"
										data-target="#faqCollapse-1" data-aria-expanded="true"
										data-aria-controls="faqCollapse-1">
										<span class="badge">1</span>What is Lorem Ipsum?
									</h5>
								</div>
							</div>
							<div id="faqCollapse-1" class="collapse"
								aria-labelledby="faqHeading-1" data-parent="#accordion">
								<div class="card-body">
									<p>Lorem Ipsum is simply dummy text of the printing and
										typesetting industry. Lorem Ipsum has been the industry's
										standard dummy text ever since the 1500s, when an unknown
										printer took a galley of type and scrambled it to make a type
										specimen book.</p>
								</div>
							</div>
						</div>
						<div class="card">
							<div class="card-header" id="faqHeading-2">
								<div class="mb-0">
									<h5 class="faq-title" data-toggle="collapse"
										data-target="#faqCollapse-2" data-aria-expanded="false"
										data-aria-controls="faqCollapse-2">
										<span class="badge">2</span> Where does it come from?
									</h5>
								</div>
							</div>
							<div id="faqCollapse-2" class="collapse"
								aria-labelledby="faqHeading-2" data-parent="#accordion">
								<div class="card-body">
									<p>Contrary to popular belief, Lorem Ipsum is not simply
										random text. It has roots in a piece of classical Latin
										literature from 45 BC, making it over 2000 years old.</p>
								</div>
							</div>
						</div>
						<div class="card">
							<div class="card-header" id="faqHeading-3">
								<div class="mb-0">
									<h5 class="faq-title" data-toggle="collapse"
										data-target="#faqCollapse-3" data-aria-expanded="false"
										data-aria-controls="faqCollapse-3">
										<span class="badge">3</span>Why do we use it?
									</h5>
								</div>
							</div>
							<div id="faqCollapse-3" class="collapse"
								aria-labelledby="faqHeading-3" data-parent="#accordion">
								<div class="card-body">
									<p>It is a long established fact that a reader will be
										distracted by the readable content of a page when looking at
										its layout. The point of using Lorem Ipsum is that it has a
										more-or-less normal distribution of letters, as opposed to
										using 'Content here, content here.</p>
								</div>
							</div>
						</div>
						<div class="card">
							<div class="card-header" id="faqHeading-4">
								<div class="mb-0">
									<h5 class="faq-title" data-toggle="collapse"
										data-target="#faqCollapse-4" data-aria-expanded="false"
										data-aria-controls="faqCollapse-4">
										<span class="badge">4</span> Where can I get some?
									</h5>
								</div>
							</div>
							<div id="faqCollapse-4" class="collapse"
								aria-labelledby="faqHeading-4" data-parent="#accordion">
								<div class="card-body">
									<p>There are many variations of passages of Lorem Ipsum
										available, but the majority have suffered alteration in some
										form, by injected humour, or randomised words which don't look
										even slightly believable.</p>
								</div>
							</div>
						</div>
						<div class="card">
							<div class="card-header" id="faqHeading-5">
								<div class="mb-0">
									<h5 class="faq-title" data-toggle="collapse"
										data-target="#faqCollapse-5" data-aria-expanded="false"
										data-aria-controls="faqCollapse-5">
										<span class="badge">5</span> What is Lorem Ipsum?
									</h5>
								</div>
							</div>
							<div id="faqCollapse-5" class="collapse"
								aria-labelledby="faqHeading-5" data-parent="#accordion">
								<div class="card-body">
									<p>It has survived not only five centuries, but also the
										leap into electronic typesetting, remaining essentially
										unchanged. It was popularised in the 1960s with the release of
										Letraset sheets containing</p>
								</div>
							</div>
						</div>
						<div class="card">
							<div class="card-header" id="faqHeading-6">
								<div class="mb-0">
									<h5 class="faq-title" data-toggle="collapse"
										data-target="#faqCollapse-6" data-aria-expanded="false"
										data-aria-controls="faqCollapse-6">
										<span class="badge">6</span> Where does it come from?
									</h5>
								</div>
							</div>
							<div id="faqCollapse-6" class="collapse"
								aria-labelledby="faqHeading-6" data-parent="#accordion">
								<div class="card-body">
									<p>The standard chunk of Lorem Ipsum used since the 1500s
										is reproduced below for those interested. Sections 1.10.32 and
										1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are
										also reproduced in their exact original form, accompanied by
										English versions from the 1914 translation by H. Rackham.</p>
								</div>
							</div>
						</div>
						<div class="card">
							<div class="card-header" id="faqHeading-7">
								<div class="mb-0">
									<h5 class="faq-title" data-toggle="collapse"
										data-target="#faqCollapse-7" data-aria-expanded="false"
										data-aria-controls="faqCollapse-7">
										<span class="badge">7</span> Why do we use it?
									</h5>
								</div>
							</div>
							<div id="faqCollapse-7" class="collapse"
								aria-labelledby="faqHeading-7" data-parent="#accordion">
								<div class="card-body">
									<p>Many desktop publishing packages and web page editors
										now use Lorem Ipsum as their default model text, and a search
										for 'lorem ipsum' will uncover many web sites still in their
										infancy. Various versions have evolved over the years,
										sometimes by accident, sometimes on purpose (injected humour
										and the like).</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<%-- 				<div>
					<div align="left">
						<form id="searchfrm" class="newsletter-form">
							<div class="select">
								<select name="key" id="key">
									<option value="title">제목</option>
									<option value="subject">내용</option>
									<option value="writer">작성자</option>
								</select>
							</div>
							<br> <input type="text" id="val" name="val"
								placeholder="검색할 내용입력" />
							<button type="button" onclick="searchlist()" class="site-btn">
								검색 <img src="usertemplet/img/icons/double-arrow.png" alt="#" />
							</button>
						</form>
					</div>
					<br>

					<table class="table table-light table-striped table-hover">
						<thead>
							<tr>
								<th width="100">순번</th>
								<th width="250">제목</th>
								<th width="100">작성자</th>
								<th width="100">작성일자</th>
							</tr>
						</thead>
						<tbody>
							<c:if test="${not empty faqs }">
								<c:forEach items="${faqpages }" var="f">
									<tr onclick="selectFaq(${f.faqId })">
										<td>${f.faqId }</td>
										<td>${f.faqTitle }</td>
										<td>${f.faqWriter }</td>
										<td>${f.faqDate }</td>
									</tr>
								</c:forEach>
							</c:if>
							<c:if test="${empty faqs }">
								<tr>
									<td colspan="4" align="center">데이터가 존재하지 않습니다.</td>
								</tr>
							</c:if>
						</tbody>
					</table>
					<!-- ============= 페이징 ===============  -->
					<div class="site-pagination" id="pagination">
						<c:forEach var="num" begin="${pagingVO.startPage }"
							end="${pagingVO.endPage }">
							<a href="faqlist.do?pageNum=${num}&amount=${pagingVO.amount}"
								class="${pagingVO.pageNum eq num ? 'active' : '' }">${num}</a>
						</c:forEach>
					</div>
					<!-- ============= 페이징 끝 ===============  -->
				</div> --%>
	<br>
	<div align="right">
		<%-- 		<c:if test="${not empty id }"> --%>
		<button type="button" class="site-btn"
			onclick="location.href='faqform.do'">글쓰기</button>
		<%-- 		</c:if> --%>
	</div>
	<div>
		<form id="faqfrm" method="post">
			<input type="hidden" id="faqId" name="faqId" />
		</form>
	</div>
	<script type="text/javascript">
	function selectFaq(n){
		document.getElementById("faqId").value = n;
		document.getElementById("faqfrm").action ="faqselect.do"; 
		document.getElementById("faqfrm").submit();
	}
	
 	function searchlist(){
		//ajax를 이용해서 검색결과를 가져오고 화면을 재구성한다
		let key = document.getElementById("key").value;
		let val = document.getElementById("val").value;
		let payload = "key="+key+"&val="+val;
		let url = "ajaxfaqsearch.do";
		
		fetch(url,{
			method:"post",
			headers:{
				'content-type' :'application/x-www-form-urlencoded'
			},
			body: payload
		}).then(response => response.json())
		   .then(json => htmlConvert(json));
	} 
	
 	function htmlConvert(datas){
 		document.querySelector('tbody').remove();
 		const tbody = document.createElement('tbody');
 		// tbody에 데이터 추가
 		tbody.innerHTML = datas.map(data=>htmlView(data)).join('');
 		// table 테그에 tbody 추가
 		document.querySelector('table').appendChild(tbody);
 	}
 	
 	function htmlView(data){
 		return `
	 	<tr onclick="selectFaq(\${data.faqId })">
			<td>\${data.faqId }</td>
			<td>\${data.faqTitle }</td>
			<td>\${data.faqWriter }</td>
			<td>\${data.faqDate }</td>
		</tr>
 		`
 	}
 	
 	const items = document.querySelectorAll(".accordion button");

 	function toggleAccordion() {
 	  const itemToggle = this.getAttribute('aria-expanded');
 	  
 	  for (i = 0; i < items.length; i++) {
 	    items[i].setAttribute('aria-expanded', 'false');
 	  }
 	  
 	  if (itemToggle == 'false') {
 	    this.setAttribute('aria-expanded', 'true');
 	  }
 	}

 	items.forEach(item => item.addEventListener('click', toggleAccordion));
 	
</script>
</body>
</html>