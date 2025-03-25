// Initialize profile data
document.addEventListener('DOMContentLoaded', function() {
    // Sample user data - in a real application, this would come from a database
    const userData = {
        userId: "USR12345",
        name: "John Doe",
        email: "john.doe@example.com",
        password: "password123"
    };
    
    // Populate the profile fields
    document.getElementById('userId').value = userData.userId;
    document.getElementById('name').value = userData.name;
    document.getElementById('email').value = userData.email;
    
    // Pre-fill the update form fields
    document.getElementById('updateUserId').value = userData.userId;
    document.getElementById('updateName').value = userData.name;
    document.getElementById('updateEmail').value = userData.email;
    document.getElementById('updatePassword').value = userData.password;
});

// Function to show the update profile popup
function showUpdatePopup() {
    const updateModal = new bootstrap.Modal(document.getElementById('updateProfileModal'));
    updateModal.show();
}

// Function to show delete profile confirmation
function showDeletePopup() {
    if (confirm("Are you sure you want to delete your profile? This action cannot be undone.")) {
        alert("Profile deleted successfully!");
        // In a real application, you would make an API call to delete the profile
        // and then redirect to a login or home page
    }
}

// Handle save changes button click
document.getElementById('saveProfileChanges').addEventListener('click', function() {
    // Get form values
    const name = document.getElementById('updateName').value;
    const email = document.getElementById('updateEmail').value;
    const password = document.getElementById('updatePassword').value;
    
    // Validate form
    if (!validateForm(name, email, password)) {
        return;
    }
    
    // Update the profile fields
    document.getElementById('name').value = name;
    document.getElementById('email').value = email;
    document.getElementById('password').value = '••••••••';
    
    // Update profile image if a file was selected
    const profileImageInput = document.getElementById('updateProfileImage');
    if (profileImageInput.files && profileImageInput.files[0]) {
        const reader = new FileReader();
        
        reader.onload = function(e) {
            document.querySelector('.profile-image').src = e.target.result;
        };
        
        reader.readAsDataURL(profileImageInput.files[0]);
    }
    
    // Close the modal
    const updateModal = bootstrap.Modal.getInstance(document.getElementById('updateProfileModal'));
    updateModal.hide();
    
    // Show success message
    alert("Profile updated successfully!");
});

// Form validation function
function validateForm(name, email, password) {
    if (name.trim() === '') {
        alert('Please enter your name');
        return false;
    }
    
    if (email.trim() === '') {
        alert('Please enter your email');
        return false;
    } else if (!isValidEmail(email)) {
        alert('Please enter a valid email address');
        return false;
    }
    
    if (password.trim() === '') {
        alert('Please enter your password');
        return false;
    } else if (password.length < 6) {
        alert('Password must be at least 6 characters long');
        return false;
    }
    
    return true;
}

// Email validation function
function isValidEmail(email) {
    const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    return emailRegex.test(email);
}
