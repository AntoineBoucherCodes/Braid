const toggleSidebarTest = () => {
  console.log("hi test");
};

const initToggleSidebarOnClick = () => {
  const cart = document.getElementById('cart_sidebar');
  cart.addEventListener("click", (event) => {
    console.log("Cart was clicked.");
  });
};

export { initToggleSidebarOnClick };
