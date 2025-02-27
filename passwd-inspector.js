// Password Strength Checker in JavaScript

function checkPasswordStrength(password) {
    let score = 0;

    // Check length
    if (password.length >= 8) {
        score++;
    }

    // Check for numbers
    if (/[0-9]/.test(password)) {
        score++;
    }

    // Check for special characters
    if (/[^a-zA-Z0-9]/.test(password)) {
        score++;
    }

    // Evaluate strength
    switch (score) {
        case 3:
            return "Strong password";
        case 2:
            return "Moderate password";
        case 1:
            return "Weak password";
        default:
            return "Very weak password";
    }
}

// Read user input
const password = prompt("Enter a password to check its strength:");
alert(checkPasswordStrength(password));
