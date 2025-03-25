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
	
	addProductForm.addEventListener('submit', function(event) {
	    event.preventDefault();
	    // Send the form data to server
	    console.log('Form submitted:', new FormData(addProductForm));
	    addProductModal.hide();
	    addProductForm.reset();
	    imagePreview.src = '#';
	    imagePreview.classList.add('d-none');
	});
});

// Delete confirmation functionality
document.addEventListener('DOMContentLoaded', function() {
    // Get all delete buttons
    const deleteButtons = document.querySelectorAll('.card__button_delete');
    const deleteConfirmModal = new bootstrap.Modal(document.getElementById('deleteConfirmModal'));
    const confirmDeleteBtn = document.getElementById('confirmDeleteBtn');
    const deleteProductIdInput = document.getElementById('deleteProductId');
    
    // Add click event to all delete buttons
    deleteButtons.forEach(button => {
        button.addEventListener('click', function(event) {
            event.preventDefault();
            // Get the product ID from the parent article's data attribute or from the button
            const productCard = this.closest('.card__article');
            const productId = productCard.getAttribute('data-product-id') || this.getAttribute('data-product-id');
            
            // Store the product ID in the hidden input
            deleteProductIdInput.value = productId;
            
            // Show the confirmation modal
            deleteConfirmModal.show();
        });
    });
    
	// Close the modal
    confirmDeleteBtn.addEventListener('click', function() {
        deleteConfirmModal.hide();
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