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
	
	productImage.addEventListener('change', function(event) {
		const file = event.target.files[0];
		if(file) {
			const reader = new FileReader();
			reader.onload = function(e) {
				imagePreview.src = e.target.result;
				imagePreview.classList.remove('d-none');
			}
			reader.readAsDataURL(file);
		}
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