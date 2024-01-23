<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Shoping Cart Section Begin -->
<!-- Breadcrumb Section Begin -->
<section class="breadcrumb-section set-bg"
	data-setbg="img/breadcrumb.jpg">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<div class="breadcrumb__text">
					<h2>Shopping Cart</h2>
					<div class="breadcrumb__option">
						<a href="./index.html">Home</a> <span>Shopping Cart</span>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- Breadcrumb Section End -->

<!-- Shoping Cart Section Begin -->
<section class="shoping-cart spad">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="shoping__cart__table">
					<table>
						<thead>
							<tr>
								<th class="shoping__product">Products</th>
								<th>Price</th>
								<th>Quantity</th>
								<th>Total</th>
								<th></th>
								<th></th>
							</tr>
						</thead>
						<tbody id="cartListTbody">
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-6">
				<div class="shoping__cart__btns" >
					<a href="goodsList.do" class="primary-btn cart-btn">계속 쇼핑하기</a> 
				</div>
			</div>
			<div class="col-lg-12">
				<div class="shoping__checkout" >
					<h5>장바구니</h5>
					<ul>
						<li>총합계 <span id="total">0</span></li>
					</ul>
					<a href="checkout.do?memberCode=${logCode }" class="primary-btn">주문하기</a>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- Shoping Cart Section End -->
<!-- Js Plugins -->
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.nice-select.min.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script src="js/jquery.slicknav.js"></script>
<script src="js/mixitup.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/main.js"></script>
<script src="js/cart.js"></script>
<script>
	$(document).ready(cartList(`${memberCode}`));
</script>