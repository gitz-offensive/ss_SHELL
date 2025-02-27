// JavaScript Password Generator

function generatePassword(length = 8) {
    const uppercase = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    const lowercase = "abcdefghijklmnopqrstuvwxyz";
    const specialChars = "!@#$%^&*()_+[]{}|;:,.<>?";

    const allChars = uppercase + lowercase + specialChars;
    let password = "";

    // Ensure at least one of each required character type
    password += uppercase[Math.floor(Math.random() * uppercase.length)];
    password += lowercase[Math.floor(Math.random() * lowercase.length)];
    password += specialChars[Math.floor(Math.random() * specialChars.length)];

    // Fill the rest of the password
    for (let i = 3; i < length; i++) {
        password += allChars[Math.floor(Math.random() * allChars.length)];
    }

    // Shuffle the password to avoid predictable patterns
    password = password.split('').sort(() => Math.random() - 0.5).join('');

    return password;
}

console.log("Generated Password:", generatePassword());
