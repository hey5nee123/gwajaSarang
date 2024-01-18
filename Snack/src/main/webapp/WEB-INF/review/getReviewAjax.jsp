<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>reviewListAjax.jsp</title>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="js/getReviewAjax.js"></script>
<script>
	showDetailReview('${reviewCode}')
</script>
</head>
<body>

	<div class="product__details__tab__desc">
		<div class="reviewList">
			<h3>상품평 상세</h3>
			<br>
			<table class="reviewDetail">
					<tr>
						<th>상품코드</th>
						<td class="goodsCode"></td>
					</tr>
					<tr>
						<th>리뷰코드</th>
						<td class="reviewCode"></td>
					</tr>
					<tr>
						<th>작성자</th>
						<td class="memberCode"></td>
					</tr>
					<tr>
						<th>제목</th>
						<td class="title"></td>
					</tr>
					<tr>
						<th>내용</th>
						<td class="content"></td>
					</tr>
					<tr>
						<th>별점</th>
						<td class="stars"></td>
					</tr>
					<tr>
						<th>작성일자</th>
						<td class="reviewDate"></td>
					</tr>
			</table>
		</div>
	</div>
</body>
</html>