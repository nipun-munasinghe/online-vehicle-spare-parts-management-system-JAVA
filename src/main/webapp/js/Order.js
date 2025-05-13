document.addEventListener('DOMContentLoaded', function() {
    const priceInput = document.querySelector('input[name="unitPrice"]');
    const qtyInput = document.querySelector('input[name="quantity"]');
    const totalInput = document.querySelector('input[name="totalPrice"]');

    function updateTotal() {
        let price = parseFloat(priceInput.value.replace(/,/g, '')) || 0;
        let qty = parseInt(qtyInput.value) || 1;
        totalInput.value = price * qty;
    }

    qtyInput.addEventListener('input', updateTotal);
    updateTotal(); // initialize on load
});