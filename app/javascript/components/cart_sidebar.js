const initToggleSidebarOnClick = () => {
  const cart = document.querySelector('.cart_sidebar');;
  cart.addEventListener("click", (event) => {
    console.log("Cart was clicked.");
    cart.classList.toggle("show_sidebar");
    console.log(cart.classList);
  });
};

export { initToggleSidebarOnClick };
