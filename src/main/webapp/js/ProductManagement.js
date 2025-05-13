/*=============== Add product form func ===============*/
document.addEventListener('DOMContentLoaded', function() {
    const addProductBtn = document.getElementById('addProductBtn');
    const addProductModal = new bootstrap.Modal(document.getElementById('addProductModal'));
    const addProductForm = document.getElementById('addProductForm');
    const imagePreview = document.getElementById('imagePreview');
    const productImage = document.getElementById('productImage');
    const productDescription = document.getElementById('productDescription');
    const minDescriptionLength = 20;

    //create error message element for description
    const descriptionError = document.createElement('div');
    descriptionError.style.color = 'red';
    descriptionError.style.marginTop = '5px';
    descriptionError.style.display = 'none';
    descriptionError.textContent = `Description must be at least ${minDescriptionLength} characters.`;
    productDescription.parentNode.appendChild(descriptionError);

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
        //validate description length
        if(productDescription.value.trim().length < minDescriptionLength) {
            event.preventDefault(); //prevent form submission
            descriptionError.style.display = 'block'; //show error message
            productDescription.focus();
            return;
        } else {
            descriptionError.style.display = 'none'; //hide error message if valid
        }
    });

    //hide error message if input reaches min length
    productDescription.addEventListener('input', function() {
        if(productDescription.value.trim().length >= minDescriptionLength) {
            descriptionError.style.display = 'none';
        }
    });
});

/*=============== Delete confirmation function ===============*/
document.addEventListener('DOMContentLoaded', function() {
    //get delete button
    const deleteButtons = document.querySelectorAll('.card__button_delete');
    const deleteConfirmModal = new bootstrap.Modal(document.getElementById('deleteConfirmModal'));
    const confirmDeleteBtn = document.getElementById('confirmDeleteBtn');
    const deleteProductIdInput = document.getElementById('deleteProductId');
    
    //add click event to delete buttons
    deleteButtons.forEach(button => {
        button.addEventListener('click', function(event) {
            //get product ID
            const productCard = this.closest('.card__article');
            const productId = productCard.getAttribute('data-product-id');
            document.getElementById('deleteProductId').value = productId;
            //store product ID in hidden input
            deleteProductIdInput.value = productId;
            //show the confirmation modal
            deleteConfirmModal.show();
        });
    });
    
    //close the modal
    confirmDeleteBtn.addEventListener('click', function() {
        deleteConfirmModal.hide();
    });
});

/*=============== Edit product func ===============*/
document.addEventListener('DOMContentLoaded', function() {
    //get all edit buttons
    const editButtons = document.querySelectorAll('.card__button_edit');
    const editProductModal = new bootstrap.Modal(document.getElementById('editProductModal'));
    const editProductForm = document.getElementById('editProductForm');
    const editImagePreview = document.getElementById('editImagePreview');
    const editProductImage = document.getElementById('editProductImage');
    
    //add click event to edit buttons
    editButtons.forEach(button => {
        button.addEventListener('click', function(event) {
            const productCard = this.closest('.card__article');
            //get the product ID and data from the parent article
            const productId = productCard.getAttribute('data-product-id');
            const productName = productCard.querySelector('.card__name').textContent;
            const productCategory = productCard.dataset.category;
            const productDescription = productCard.querySelector('.card__description').textContent;
            const productQuantity = productCard.dataset.quantity;
            const productPrice = productCard.querySelector('.card__price').textContent
                                        .replace('Rs.', '')
                                        .replace(/,/g, '') //remove commas
                                        .trim();
            //fill form fields
            document.getElementById('editProductId').value = productId;
            document.getElementById('editProductName').value = productName;
            document.getElementById('editProductCategory').value = productCategory;
            document.getElementById('editProductDescription').value = productDescription;
            document.getElementById('editProductQuantity').value = productQuantity;
            document.getElementById('editProductPrice').value = productPrice;
            editProductModal.show();
        });
    });
    
    editProductImage.addEventListener('change', function(event) {
        const file = event.target.files[0];
        if(file) {
            const reader = new FileReader();
            reader.onload = function(e) {
                editImagePreview.src = e.target.result;
                editImagePreview.classList.remove('d-none');
            }
            reader.readAsDataURL(file);
        }
    });
    
    editProductForm.addEventListener('submit', function(event) {
        console.log('Form submitted:', new FormData(editProductForm));
        editProductModal.hide();
    });
});

/*=============== Swiper JS ===============*/
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
