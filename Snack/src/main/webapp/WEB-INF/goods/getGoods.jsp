<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zxx">

<head>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
    
    <!-- Js Plugins -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/mixitup.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>
    
    <style>
    	.heart-icon{border:0;}
    </style>
</head>

<body>

    <!-- Hero Section Begin -->
    <section class="hero hero-normal">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="hero__categories">
                        <div class="hero__categories__all">
                            <i class="fa fa-bars"></i>
                            <span>전체 카테고리</span>
                        </div>
                        <ul>
                            <li><a href="goodsList.do?category=과자">과자</a></li>
                            <li><a href="goodsList.do?category=비스킷/크래커">비스킷/크래커</a></li>
                            <li><a href="goodsList.do?category=쿠키/파이">쿠키/파이</a></li>
                            <li><a href="goodsList.do?category=유기농/전통과자">유기농/전통과자</a></li>
                            <li><a href="goodsList.do?category=초콜릿">초콜릿</a></li>
                            <li><a href="goodsList.do?category=젤리/캐러멜">젤리/캐러멜</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="hero__search">
                        <div class="hero__search__form">
                            <form action="#">
<!--                                 <div class="hero__search__categories">
                                    All Categories
                                    <span class="arrow_carrot-down"></span>
                                </div> -->
                                <input type="text" id="searchBox" placeholder="검색어를 입력해주세요">
                                <button type="button" class="site-btn" onclick="searchFunc()">SEARCH</button>
                            </form>
                        </div>
                        <div class="hero__search__phone">
                            <div class="hero__search__phone__icon">
                                <i class="fa fa-phone"></i>
                            </div>
                            <div class="hero__search__phone__text">
                                <h5>053-777-7777</h5>
                                <span>평일 9:00 ~ 18:00</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Hero Section End -->

    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg" data-setbg="bootstrap/img/breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>Snack Shop</h2>
                        <div class="breadcrumb__option">
                            <a href="../Snack/">Home</a>
                            <a href="../Snack/goodsList.do">Shop</a>
                            <span>${vo.goodsName }</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Product Details Section Begin -->
    <section class="product-details spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="product__details__pic">
                        <div class="product__details__pic__item">
                            <img class="product__details__pic__item--large"
                                src="images/${vo.thumbImage }" alt="">
                        </div>
                        <div class="product__details__pic__slider owl-carousel">
<!--                             <img data-imgbigurl="bootstrap/img/product/details/product-details-2.jpg"
                                src="bootstrap/img/product/details/thumb-1.jpg" alt="">
                            <img data-imgbigurl="bootstrap/img/product/details/product-details-3.jpg"
                                src="bootstrap/img/product/details/thumb-2.jpg" alt="">
                            <img data-imgbigurl="bootstrap/img/product/details/product-details-5.jpg"
                                src="bootstrap/img/product/details/thumb-3.jpg" alt="">
                            <img data-imgbigurl="bootstrap/img/product/details/product-details-4.jpg"
                                src="bootstrap/img/product/details/thumb-4.jpg" alt=""> -->
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="product__details__text">
                        <h3>${vo.goodsName }</h3>
                        <div class="product__details__rating">
<!--                             <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-half-o"></i>
                            <span>(18 reviews)</span> -->
                        </div>
                        <div class="product__details__price">${vo.price }원</div>
<!--                         <p>Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vestibulum ac diam sit amet quam
                            vehicula elementum sed sit amet dui. Sed porttitor lectus nibh. Vestibulum ac diam sit amet
                            quam vehicula elementum sed sit amet dui. Proin eget tortor risus.</p> -->
                        <div class="product__details__quantity">
                            <div class="quantity">
                                <div class="pro-qty">
                                    <input type="text" id="quantityValue"value="1">
                                </div>
                            </div>
                        </div>
                        <a href="#" class="primary-btn" id="addCartBtn">장바구니 담기</a>
                        <button type="button" class="heart-icon btn_like" data-membercode="${sessionScope.logCode}" data-goodscode="${vo.goodsCode}">
							<span class="icon_heart_alt"></span>
						</button>
                        <ul>
                            <li><b>Availability</b> <span>In Stock</span></li>
                            <li><b>Shipping</b> <span>01 day shipping. <samp>Free pickup today</samp></span></li>
                            <li><b>Weight</b> <span>0.5 kg</span></li>
                            <li><b>Share on</b>
                                <div class="share">
                                    <a href="#"><i class="fa fa-facebook"></i></a>
                                    <a href="#"><i class="fa fa-twitter"></i></a>
                                    <a href="#"><i class="fa fa-instagram"></i></a>
                                    <a href="#"><i class="fa fa-pinterest"></i></a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="product__details__tab">
                        <ul class="nav nav-tabs" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab"
                                    aria-selected="true"> 상품상세</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-2" role="tab"
                                    aria-selected="false">배송/교환/반품</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-3" role="tab"
                                    aria-selected="false">상품리뷰<span>(1) </span></a>
                            </li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane active" id="tabs-1" role="tabpanel">
                                <div class="product__details__tab__desc">
                                	<p style="text-align: center"><img src="${vo.detailImage }"><p><br><br>
                                	<table border="1" align="center">
          								<caption style="caption-side:top"><h4>상품고시정보</h4></caption>
                                		<thead></thead>
                                		<tbody>
                                			<tr>
                                				<th width="150px">&nbsp&nbsp총 내용량</th><td width="400px">&nbsp&nbsp${vo.weight }g</td>
                                			</tr>
                                			<tr>
                                				<th>&nbsp&nbsp칼로리</th><td width="400px">&nbsp&nbsp${vo.calorie }kcal</td>
                                			</tr>
                                			<tr>
                                				<th>&nbsp&nbsp포장단위</th><td width="400px">&nbsp&nbsp${vo.unit }</td>
                                			</tr>
                                			<tr>
                                				<th>&nbsp&nbsp알레르기 정보</th><td width="400px">&nbsp&nbsp${vo.allergy }</td>
                                			</tr>
                                			<tr>
                                				<th>&nbsp&nbsp나트륨</th><td width="400px">&nbsp&nbsp${vo.na }mg</td>
                                			</tr>
                                			<tr>
                                				<th>&nbsp&nbsp탄수화물</th><td width="400px">&nbsp&nbsp${vo.carbo }g</td>
                                			</tr>
                                			<tr>
                                				<th>&nbsp&nbsp당류</th><td width="400px">&nbsp&nbsp${vo.sugar }g</td>
                                			</tr>
                                			<tr>
                                				<th>&nbsp&nbsp포화지방</th><td width="400px">&nbsp&nbsp${vo.sfat }g</td>
                                			</tr>
                                			<tr>
                                				<th>&nbsp&nbsp단백질</th><td width="400px">&nbsp&nbsp${vo.protein }g</td>
                                			</tr>
                                		</tbody>
                                	</table>
                                </div>
                            </div>
                            <div class="tab-pane" id="tabs-2" role="tabpanel">
                                <div class="product__details__tab__desc">
                                    <p><strong>총 내용량 : </strong>${vo.weight }g / <strong>칼로리 : </strong>${vo.calorie }kcal</p>
                                    <p><strong>포장단위 : </strong>${vo.unit }</p>
                                    <p><strong>알레르기 정보 : </strong>${vo.allergy }</p>
                                    <p><strong>나트륨 : </strong>${vo.na }mg / <strong>탄수화물 : </strong>${vo.carbo }g</p>
                                    <p><strong>당류 : </strong>${vo.sugar }g / <strong>포화지방 : </strong>${vo.sfat }g / <strong>단백질 : </strong>${vo.protein }g</p>
                                </div>
                            </div>
                            <div class="tab-pane" id="tabs-3" role="tabpanel">
                                <div class="product__details__tab__desc">
                                    <div id="reviewList"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Product Details Section End -->

    <!-- Related Product Section Begin -->
<!--    <section class="related-product">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title related__product__title">
                        <h2>Related Product</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                 <div class="col-lg-3 col-md-4 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" data-setbg="bootstrap/img/product/product-1.jpg">
                            <ul class="product__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="product__item__text">
                            <h6><a href="#">Crab Pool Security</a></h6>
                            <h5>$30.00</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" data-setbg="bootstrap/img/product/product-2.jpg">
                            <ul class="product__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="product__item__text">
                            <h6><a href="#">Crab Pool Security</a></h6>
                            <h5>$30.00</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" data-setbg="bootstrap/img/product/product-3.jpg">
                            <ul class="product__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="product__item__text">
                            <h6><a href="#">Crab Pool Security</a></h6>
                            <h5>$30.00</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" data-setbg="bootstrap/img/product/product-7.jpg">
                            <ul class="product__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="product__item__text">
                            <h6><a href="#">Crab Pool Security</a></h6>
                            <h5>$30.00</h5>
                        </div>
                    </div>
                </div> -->
            </div>
        </div>
    </section>
    <!-- Related Product Section End -->

	<script src="js/like.js"></script>
	<script>
	let input = document.getElementById('searchBox');
	
	input.addEventListener("keydown", function(e) {
		if(e.keyCode === 13) {
			e.preventDefault();
			document.querySelector(".site-btn").click();
		}
	});
	
	function searchFunc() {
		let keyword = document.getElementById('searchBox').value;
		window.location.href = "searchList.do?keyword=" + keyword;
	}
	
	$('#reviewList').load('reviewListAjax.do?goodsCode=${vo.goodsCode}')
	
	
	let getGoodsCode = `${vo.goodsCode}`
	let memberCode = `${logCode}`
	
	// 장바구니에 상품 추가
	$('#addCartBtn').on('click', function(){
		console.log(getGoodsCode, memberCode, $('#quantityValue').val());
		
		// 비회원 상품추가 불가능
		if(memberCode ==''){
			alert('장바구니 담기는 로그인 후 가능합니다.')
		}
		else{
			// 장바구니에 이미 담았는지 체크
			fetch('checkCart.do', {
				method: "post",
				headers: {
					'Content-Type': 'application/x-www-form-urlencoded'
				},
				body:'goodsCode=' + getGoodsCode + '&memberCode=' + memberCode 
			})
			.then(result => result.json())
			.then(result => {
				console.log('cartCode:' + result)
				if(result != null){
					//alert('이미 장바구니에 담긴 상품입니다.')
					if(confirm('이미 장바구니에 담긴 상품입니다. 수량을 추가하시겠습니까?')){
						addQuantityFunc(result, $('#quantityValue').val())
					}
				}
				else{
					if(confirm('장바구니에 상품을 추가하시겠습니까?')){
						addCartFunc(getGoodsCode, memberCode, $('#quantityValue').val())
					}
				}
			})
		
		}// end of if else
		
	})
	
	// 카트 추가 함수
	function addCartFunc(goodsCode, memberCode, quantity) {
		fetch('addCart.do', {
			method: 'post',
			headers: {
				'Content-Type': 'application/x-www-form-urlencoded'
			},
			body: 'goodsCode=' + goodsCode + '&memberCode=' + memberCode + '&quantity=' + quantity
		})
		.then(result => result.json())
		.then(result => {
			console.log(result)
			if (result.retCode == "OK") {
				alert('상품이 장바구니에 담겼습니다.');
			} else {
				alert('수정 중 오류 발생')
			}
		})
	}
	
	// 카트 수량 추가 함수
	function addQuantityFunc(cartCode, quantity){
		console.log(cartCode, quantity)
		fetch('modCart.do', {
			method: 'post',
			headers: {
				'Content-Type': 'application/x-www-form-urlencoded'
			},
			body: 'cartCode=' + cartCode + '&quantity=' + quantity
		})
		.then(result => result.json())
		.then(result => {
			console.log(result)
			if (result.retCode == "OK") {
				alert('상품이 장바구니에 담겼습니다.');
			} else {
				alert('수정 중 오류 발생')
			}
		})
	}
	</script>

</body>

</html>