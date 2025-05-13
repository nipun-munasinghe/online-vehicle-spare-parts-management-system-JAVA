// 1. Form Validation
function validateManagerForm() {
	const form = document.getElementById("managerForm");
	const errors = [];

	// Get trimmed form values
	const firstName = form.firstName.value.trim();
	const lastName = form.lastName.value.trim();
	const email = form.email.value.trim();
	const phone = form.phone.value.trim();
	const password = form.password.value;

	// Validation rules with regex patterns
	const nameRegex = /^[A-Za-z ]+$/;
	const emailRegex = /^[\w.-]+@[\w.-]+\.[\w]{2,}$/;
	const phoneRegex = /^(\+94|0)\d{9}$/;
	const passwordRegex = /^(?=.*[A-Za-z])(?=.*\d).{8,}$/;

	// First name validation
	if (firstName.length < 2 || !nameRegex.test(firstName)) {
		errors.push("First name: 2+ letters/spaces only");
	}

	// Last name validation
	if (lastName.length < 2 || !nameRegex.test(lastName)) {
		errors.push("Last name: 2+ letters/spaces only");
	}

	// Email validation
	if (!emailRegex.test(email)) {
		errors.push("Invalid email format");
	}

	// Phone validation (Sri Lankan format)
	if (!phoneRegex.test(phone)) {
		errors.push("Phone: Start with +94/0 and 9 digits");
	}

	// Password strength
	if (!passwordRegex.test(password)) {
		errors.push("Password: 8+ chars with letters & numbers");
	}

	// Show errors or submit form
	if (errors.length > 0) {
		showTempAlert(errors.join("\n"), 5000);
		return false;
	}
	return true;
}

// 2. Show Temporary Alert
function showTempAlert(msg, duration = 3000) {
	const alertDiv = document.createElement("div");
	alertDiv.className = "temp-alert"; // Add CSS for styling
	alertDiv.textContent = msg;
	document.body.appendChild(alertDiv);
	setTimeout(() => {
		alertDiv.remove();
	}, duration);
}

// Clear Manager Form and Modal
function clearManagerForm() {
	const form = document.getElementById("managerForm");
	const modalEl = document.getElementById('addManagerModal');
	let modal = null;
	// Bootstrap 5
	if (window.bootstrap && modalEl) {
		modal = bootstrap.Modal.getInstance(modalEl) || new bootstrap.Modal(modalEl);
	}
	if (form) form.reset();
	if (modal) modal.hide();
}

// Reset Action Form (for other actions, if needed)
function resetActionForm() {
	const form = document.getElementById("actionForm");
	if (form) form.reset();
}

// Highlight Manager Row in Table
function highlightRow(email) {
	document.querySelectorAll("tbody tr").forEach(row => {
		if (row.cells[2] && row.cells[2].textContent.trim() === email) {
			row.classList.add("highlight");
			setTimeout(() => row.classList.remove("highlight"), 2000);
		}
	});
}

// 8. Filter Manager List by Query
function filterManagerList(query) {
	query = query.toLowerCase();
	document.querySelectorAll("tbody tr").forEach(row => {
		const text = row.textContent.toLowerCase();
		row.style.display = text.includes(query) ? "" : "none";
	});
}

// Populate Edit Form with Manager Data
function populateEditForm(data) {
	const form = document.getElementById("managerForm");
	if (!form) return;
	form.firstName.value = data.firstName || "";
	form.lastName.value = data.lastName || "";
	form.email.value = data.email || "";
	form.phone.value = data.phone || "";
	form.password.value = ""; // Never pre-fill password for security
	if (form.status) form.status.value = data.status || "Active";
}




