const initToggleSidebarOnClick = () => {
  const button = document.querySelector(".btn-navbar-cart");
  button.addEventListener("click", (event) => {
    const cart = document.querySelector(".cart-sidebar");

    console.log("Cart was clicked.");
    cart.classList.toggle("show-sidebar");
    console.log(cart.classList);
  });
};

const initCloseSidebarOnClick = () => {
  const button = document.querySelector('.close');
  button.addEventListener("click", (event) => {
    const cart = document.querySelector('.cart-sidebar');
    console.log("Close button was clicked.");
    cart.classList.remove("show-sidebar");
    console.log(cart.classList);
  });
};

export { initToggleSidebarOnClick };
export { initCloseSidebarOnClick };
