const initToggleSidebarOnClick = () => {
  const button = document.querySelector('.fa-bell');
  button.addEventListener("click", (event) => {
    const cart = document.querySelector('.cart_sidebar');
    console.log("Cart was clicked.");
    cart.classList.toggle("show_sidebar");
    console.log(cart.classList);
  });
};

const initCloseSidebarOnClick = () => {
  const button = document.querySelector('.close');
  button.addEventListener("click", (event) => {
    const cart = document.querySelector('.cart_sidebar');
    console.log("Close button was clicked.");
    cart.classList.remove("show_sidebar");
    console.log(cart.classList);
  });
};

export { initToggleSidebarOnClick };
export { initCloseSidebarOnClick };
