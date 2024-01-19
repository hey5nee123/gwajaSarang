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
                            <a href="./index.html">Home</a>
                            <span>Shop</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Product Section Begin -->
    <section class="product spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-5">
                    <div class="sidebar">
                        <div class="sidebar__item">
                            <h4>Category</h4>
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
                </div>
                <div class="col-lg-9 col-md-7">
                    <div class="product__discount">
                        <div class="section-title product__discount__title">
                            <h2>추천상품</h2>
                        </div>
                        <div class="row">
                            <div class="product__discount__slider owl-carousel">
                            	<c:forEach var="vo" items="${goodsList }">
                                <div class="col-lg-4">
                                    <div class="product__discount__item">
                                        <div class="product__discount__item__pic set-bg"
                                            data-setbg="images/${vo.thumbImage }" onclick="location.href='getGoods.do?gcode=${vo.goodsCode }'">
                                            <div class="product__discount__percent">추천</div>
                                            
                                            <ul class="product__item__pic__hover">
                                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                            </ul>
                                        </div>
                                        <div class="product__discount__item__text">
                                            <span>Dried Fruit</span>
                                            <h5><a href="getGoods.do?gcode=${vo.goodsCode }">${vo.goodsName }</a></h5>
                                            <div class="product__item__price">${vo.price }원 <!-- <span>$36.00</span> --></div>
                                        </div>
                                    </div>
                                </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                    <div class="filter__item">
                        <div class="row">
                            <div class="col-lg-4 col-md-5">
                                <div class="filter__sort">
                                    <span>Sort By</span>
                                    <select>
                                        <option value="0">Default</option>
                                        <option value="0">Default</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4">
                                <div class="filter__found">
                                    <h6><span>${total }</span> Products found</h6>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-3">
                                <div class="filter__option">
                                    <span class="icon_grid-2x2"></span>
                                    <span class="icon_ul"></span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                    <c:forEach var="vo" items="${goodsList }">
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="product__item">
                                <div class="product__item__pic set-bg" data-setbg="images/${vo.thumbImage }" onclick="location.href='getGoods.do?gcode=${vo.goodsCode }'">
                                    <ul class="product__item__pic__hover">
                                        <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                        <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                        <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                    </ul>
                                </div>
                                <div class="product__item__text">
                                    <h6><a href="getGoods.do?gcode=${vo.goodsCode }">${vo.goodsName }</a></h6>
                                    <h5>${vo.price }원</h5>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                    </div>
                    <div class="product__pagination">
                    <input type="hidden" name="pageNum" value="${dto.currPage }">
                    <c:if test="${dto.prev }">
                        <a href="goodsList.do?page=${dto.startPage - 1 }"><i class="fa fa-long-arrow-left"></i></a>
                    </c:if>
                    <c:forEach var="i" begin="${dto.startPage }" end="${dto.lastPage }">
                        <a href="goodsList.do?page=${i }">${i }</a>
                    </c:forEach>
                    <c:if test="${dto.next }">
                        <a href="goodsList.do?page=${dto.lastPage + 1 }"><i class="fa fa-long-arrow-right"></i></a>
                    </c:if>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Product Section End -->

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
	
/*  	let pageInfo = document.querySelector(".product__pagination a");
	
	pageInfo.addEventListenver("click", function(e) {
		e.preventDefault();
		pageInfo = this.getAttribute("href").value;
		window.location.href = "searchList.do?page=" + pageInfo;
	}) */
	
	
	
	let pageInfo = 1;
	function pageList(e) {
		e.preventDefault(); 
   		pageInfo = this.getAttribute("href");
   		showList(pageInfo);
		pagingList(pageInfo);
   	}
	
    function showList_backup(page) {
    	ul.innerHTML = '';
	    const xhtp = new XMLHttpRequest();
	    xhtp.open('get', 'replyListJson.do?bno=' + bno + '&page=' + page)
	    xhtp.send()
	    xhtp.onload = function() {
	    	let data = JSON.parse(xhtp.responseText);	// json문자열 -> 객체
	    	data.forEach(reply => {
	    		let li = makeLi(reply);
	    		ul.appendChild(li);
	    	})
	    }
    }
	
    function showList(page) {
    	ul.innerHTML = '';
    	fetch('replyListJson.do?bno=' + bno + '&page=' + page)
    	.then(str => str.json())
    	.then(result => {
    		result.forEach(reply => {
    			let li = makeLi(reply);
    			ul.appendChild(li);
    		})
    	})
    	.catch(reject => console.log(reject));
    }
    
    showList(pageInfo);
	
	let paging = document.querySelector('.product__pagination')
	pagingList();
	function pagingList(page = 1) {
		paging.innerHTML = '';
		
		let pagingAjax = new XMLHttpRequest();
		pagingAjax.open('get', 'pagingListJson.do?page=' + page));
		pagingAjax.send()
		pagingAjax.onload = function() {
			let result = JSON.parse(pagingAjax.responseText);
			if(result.prev) {
				let aTag = document.createElement('a');
				aTag.href = result.startPage - 1;
				aTag.addEventListener('click', pageList);
	    		paging.appendChild(aTag);
			}
	    	for(let p = result.startPage; p <= result.lastPage; p++) {
	    		let aTag = document.createElement('a');
	    		if(p == page) {
	    			aTag.setAttribute('class', 'active');
	    		}
	    		aTag.href = p;
	    		aTag.innerText = p;
	    		aTag.addEventListener('click', pageList);
	    		paging.appendChild(aTag);
	    	}
	    	if(result.next) {
	    		let aTag = document.createElement('a');
	    		aTag.href = result.lastPage + 1;
	    		aTag.innerText = '다음';
	    		aTag.addEventListener('click', pageList);
	    		paging.appendChild(aTag);
	    	}
		}
	}
	
	
	
	
	
	
	</script>

</body>

</html>