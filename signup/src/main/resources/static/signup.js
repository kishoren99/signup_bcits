    function validateForm() {
        // Clear previous errors
        document.getElementById('nameError').textContent = '';
        document.getElementById('mobileError').textContent = '';
        document.getElementById('passwordError').textContent = '';
        document.getElementById('confirmPasswordError').textContent = '';

        // Get form values
        const name = document.getElementById('name').value;
        const mobile = document.getElementById('mobile').value;
        const password = document.getElementById('password').value;
        const confirmPassword = document.getElementById('confirmPassword').value;

        let isValid = true;

        // Validate username
        if (name.length <= 4) {
            document.getElementById('nameError').textContent = 'Username must be more than 4 characters.';
            isValid = false;
        }

        // Validate mobile number
        const mobileRegex = /^\d{10}$/;
        if (!mobileRegex.test(mobile)) {
            document.getElementById('mobileError').textContent = 'Mobile number must be exactly 10 digits.';
            isValid = false;
        }

        // Validate passwords
        if (password !== confirmPassword) {
            document.getElementById('passwordError').textContent = 'Passwords do not match.';
            document.getElementById('confirmPasswordError').textContent = 'Passwords do not match.';
            isValid = false;
        }

        return isValid;
    }