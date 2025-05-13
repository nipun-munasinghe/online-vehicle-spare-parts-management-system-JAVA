document.addEventListener("DOMContentLoaded", function () {
    const form = document.getElementById("regform");
    const errorDisplay = document.getElementById("jserror");

    form.addEventListener("submit", function (e) {
        errorDisplay.textContent = ""; // Clear previous errors
        let errors = [];

        // First Name Validation
        const fname = form.u_firstname.value.trim();
        if (!fname) {
            errors.push("First Name is required.");
        } else if (!/^[A-Za-z]+$/.test(fname)) {
            errors.push("First Name must contain only letters.");
        }

        // Last Name Validation
        const lname = form.u_lastname.value.trim();
        if (!lname) {
            errors.push("Last Name is required.");
        } else if (!/^[A-Za-z]+$/.test(lname)) {
            errors.push("Last Name must contain only letters.");
        }

        // Email Validation
        const email = form.u_email.value.trim();
        const emailPattern = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
        if (!email) {
            errors.push("Email is required.");
        } else if (!emailPattern.test(email)) {
            errors.push("Invalid email address.");
        }

        // Password Validation
        const password = form.u_password.value;
        const confirmPassword = form.confirmpassword.value;
        const passwordPattern = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$/;
        if (!password) {
            errors.push("Password is required.");
        } else if (!passwordPattern.test(password)) {
            errors.push("Password must be at least 8 characters and contain both letters and numbers.");
        }
        if (password !== confirmPassword) {
            errors.push("Passwords do not match.");
        }

        // User Type Validation
        const userTypeChecked = form.querySelector('input[name="u_type"]:checked');
        if (!userTypeChecked) {
            errors.push("Please select a user type.");
        }

        // Terms Checkbox Validation
        const termsChecked = document.getElementById("form2Example3cg").checked;
        if (!termsChecked) {
            errors.push("You must agree to the Terms of service.");
        }

        // Show errors or submit
        if (errors.length > 0) {
            e.preventDefault();
            errorDisplay.textContent = errors.join(" ");
            errorDisplay.style.color = "red";
        }
    });
});
