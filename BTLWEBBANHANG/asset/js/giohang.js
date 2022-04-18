const cartContainer = document.querySelector(".cart__items");

cartContainer.innerHTML = cartItemHTML;
onUpdatePrice();
console.log("Long");
function onIncrementHandler(id) {
  const itemQuantity = document.querySelector(`.itemQuantity_${id}`);

  const itemPrice = document.querySelector(`.price_${id})`);
  if (+itemQuantity.innerHTML === 11) {
    return;
  } else {
    //window.location.pathname="/IncrementCartItem.aspx"
    itemQuantity.innerHTML = +itemQuantity.innerHTML + 1;
    itemPrice.innerHTML = +itemQuantity.innerHTML * itemPrice.dataset.price;
    onUpdateTotalPrice();
  }
}
function onDecrementHandler(id) {
  const itemQuantity = document.querySelector(`.itemQuantity_${id}`);

  const itemPrice = document.querySelector(`.price_${id})`);
  if (+itemQuantity.innerHTML === 0) {
    return;
  } else {
    itemQuantity.innerHTML = +itemQuantity.innerHTML - 1;
    itemPrice.innerHTML = +itemQuantity.innerHTML * itemPrice.dataset.price;
    onUpdateTotalPrice();
  }
}
function onUpdateTotalPrice() {
  const cartrecap = document.querySelector(".cart__recap");
  const wrappers = document.querySelectorAll(".wrapper");
  const arrItems = document.querySelectorAll(".price");

  const arrPrices = [];
  arrItems.forEach((item) => {
    arrPrices.push(+item.dataset.price);
  });

  const totalPrice = arrPrices.reduce((pre, next) => pre + next, 0);

  cartrecap.innerHTML = `<h2>Recap</h2>
          <p>${wrappers.length} products: ${totalPrice * wrappers.length}đ</p>
          <p>Shipping: Freeship</p>
          <p>Total: ${totalPrice * wrappers.length}đ</p>
          <button class="btn-main">Proceed to checkout</button>`;
}
