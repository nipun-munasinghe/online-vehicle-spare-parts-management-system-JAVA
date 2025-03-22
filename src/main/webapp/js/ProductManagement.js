// Add Product Form Function
document.addEventListener('DOMContentLoaded', function() {
	const addProductBtn = document.getElementById('addProductBtn');
	const addProductModal = new bootstrap.Modal(document.getElementById('addProductModal'));
	const addProductForm = document.getElementById('addProductForm');
	const imagePreview = document.getElementById('imagePreview');
	const productImage = document.getElementById('productImage');
	
	addProductBtn.addEventListener('click', function() {
		addProductModal.show();
	});
	
});

/*=============== SWIPER JS ===============*/
let swiperCards = new Swiper(".card__content", {
  loop: true,
  spaceBetween: 32,
  grabCursor: true,

  pagination: {
    el: ".swiper-pagination",
    clickable: true,
    dynamicBullets: true,
  },

  navigation: {
    nextEl: ".swiper-button-next",
    prevEl: ".swiper-button-prev",
  },

  breakpoints:{
    600: {
      slidesPerView: 2,
    },
    968: {
      slidesPerView: 3,
    },
  },
});