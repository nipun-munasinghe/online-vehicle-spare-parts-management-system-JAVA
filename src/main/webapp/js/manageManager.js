// 1. Validate Manager Form
function validateManagerForm() {
	const form = document.getElementById("managerForm");
	const firstName = form["firstName"].value.trim();
	const lastName = form["lastName"].value.trim();
	const email = form["email"].value.trim();
	const phone = form["phone"].value.trim();
	const password = form["password"].value;
	let errors = [];

	// Validation rules
	if (firstName.length < 2) {
		errors.push("First name must be at least 2 characters.");
		} else if (!/^[A-Za-z ]+$/.test(firstName)) {errors.push("First name must contain only letters and spaces.");}	
	if (lastName.length < 2) {
		errors.push("Last name must be at least 2 characters.");
			} else if (!/^[A-Za-z ]+$/.test(lastName)) {errors.push("Last name must contain only letters and spaces.");}
	if (!/^[\w.-]+@[\w.-]+\.[\w]{2,}$/.test(email)) errors.push("Invalid email format.");
	if (!/^(\+94|0)\d{9}$/.test(phone)) errors.push("Phone must start with +94 or 0 and have 9 digits after.");
	if (!/(?=.*[A-Za-z])(?=.*\d).{8,}/.test(password)) {
			errors.push("Password must be at least 8 characters and include both letters and numbers.");
		}

		if (errors.length > 0) {
			showTempAlert(errors.join("\n"), 5000);
			return false;
		}
		return true;
	}

	// 2. Show Temporary Alert
	function showTempAlert(msg, duration = 3000) {
		const alertDiv = document.createElement("div");
		alertDiv.style.cssText = `
        position: fixed;
        top: 20px;
        left: 50%;
        transform: translateX(-50%);
        background: #333;
        color: white;
        padding: 15px 30px;
        border-radius: 5px;
        z-index: 9999;
        box-shadow: 0 2px 10px rgba(0,0,0,0.2);
        transition: opacity 0.5s;
    `;
		alertDiv.textContent = msg;
		document.body.appendChild(alertDiv);

		setTimeout(() => {
			alertDiv.style.opacity = '0';
			setTimeout(() => alertDiv.remove(), 500);
		}, duration);
	}

	// 3. Confirm Before Delete/Deactivate/Activate
	function confirmManagerAction(action, email) {
		const messages = {
			delete: `Are you sure you want to permanently delete manager: ${email}?`,
			deactivate: `Are you sure you want to deactivate manager: ${email}?`,
			activate: `Are you sure you want to activate manager: ${email}?`
		};
		return confirm(messages[action] || "Are you sure you want to perform this action?");
	}

	// 4. Auto-Close Bootstrap Alerts
	function autoCloseBootstrapAlert(timeout = 3000) {
		const alerts = document.querySelectorAll('.alert');
		alerts.forEach(alert => {
			setTimeout(() => {
				alert.style.opacity = '0';
				setTimeout(() => alert.remove(), 500);
			}, timeout);
		});
	}

	// 5. Clear Manager Form
	function clearManagerForm() {
		const form = document.getElementById("managerForm");
		if (form) form.reset();
		// Hide the modal if Bootstrap 5
		const modalEl = document.getElementById('addManagerModal');
		if (modalEl && typeof bootstrap !== "undefined") {
			const modal = bootstrap.Modal.getInstance(modalEl);
			if (modal) modal.hide();
		}
	}
