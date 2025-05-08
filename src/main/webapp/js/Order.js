// Auto-calculate total price
document.addEventListener('DOMContentLoaded', function() {
  const unitPrice = document.getElementById('unitPrice');
  const quantity = document.getElementById('quantity');
  const totalPrice = document.getElementById('totalPrice');

  function calculateTotal() {
    totalPrice.value = unitPrice.value * quantity.value;
  }

  quantity.addEventListener('input', calculateTotal);
  calculateTotal(); // Initial calculation
});
