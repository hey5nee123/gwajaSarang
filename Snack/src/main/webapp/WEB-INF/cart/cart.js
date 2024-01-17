/**
 * cart.js
 */
$(document).ready(cartList());

function cartList() {
    fetch("cartListJson.do?memberCode=M-00001", {
        method: "get",
        headers: { "Content-Type": "application/json" }
    })
        .then(res => res.json())
        .then(res => {
            console.log(res);
            $(res).each((idx, cart) => {
				

				let tr = `<tr>
                <td>
                  <div class="media">
                    <div class="d-flex">
                      <img src="img/${cart.img}" alt="" />
                    </div>
                    <div class="media-body">
                      <p>${cart.name}</p>
                    </div>
                  </div>
                </td>
                
                <td>
                  <h5>${cart.price}</h5>
                </td>

                
                <td>
                  <div class="product_count">
                    <span class="input-number-decrement"> <i class="ti-angle-down"></i></span>
                    <input class="input-number" type="text" value="${cart.totalPrice}" min="0" max="10">
                    <span class="input-number-increment"> <i class="ti-angle-up"></i></span>
                  </div>
                </td>
                <td>
                  <h5>$720.00</h5>
                </td>
              </tr>`;
              	let cartListTbody = document.querySelector('.cartListTbody');
				cartListTbody.insertAdjacentHTML('afterbegin', tr);
			})
        })
        .catch(console.error);
};