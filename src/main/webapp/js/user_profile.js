// Store original data
var originalData = {};

function initializeOriginalData() {
    var form = document.getElementById("profileForm");

    originalData = {
        u_firstname: form.u_firstname.value,
        u_lastname: form.u_lastname.value,
        u_email: form.u_email.value
    };
}

// Compare current values with original ones
function checkChanges() {
    var form = document.getElementById("profileForm");
    var submitButton = document.getElementById("submitBtn");

    var hasChanges =
        form.u_firstname.value !== originalData.u_firstname ||
        form.u_lastname.value !== originalData.u_lastname ||
        form.u_email.value !== originalData.u_email;

    submitButton.disabled = !hasChanges;
}

// Run when page loads
window.onload = initializeOriginalData;
