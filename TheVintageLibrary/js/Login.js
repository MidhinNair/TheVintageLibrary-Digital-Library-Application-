function login() {
    const pass_field = document.getElementById("pass-key")
    const showBtn = document.getElementById('show');
    showBtn.addEventListener('click', function () {
        if (pass_field.type === "password") {
        pass_field.type = "text";
    showBtn.textContent = "HIDE";
    showBtn.style.color = "#3498db";
            } else {
        pass_field.type = "password";
    showBtn.textContent = "SHOW";
    showBtn.style.color = "#222";
            }
    });
}

function validateEmail(email) {
    // Regular expression pattern for email validation
    const pattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

    // Return true if the email matches the pattern, false otherwise
    return pattern.test(email);
}

function handleSubmit(event) {
    event.preventDefault(); // Prevent form submission

    // Get the email input value
    const emailInput = document.getElementById("email");
    const email = emailInput.value;

    // Validate the email
    const isValid = validateEmail(email);

    // Display validation result
    const errorElement = document.getElementById("error");
    if (isValid) {
        // Email is valid, proceed with login logic
        errorElement.innerText = "";
        // TODO: Add your login logic here
    } else {
        // Email is not valid, display error message
        errorElement.innerText = "Invalid email address";
    }
}