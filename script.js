// script.js

// Wait until everything loads
document.addEventListener("DOMContentLoaded", () => {
    console.log("Frontend loaded successfully 🚀");

    // Example: Handle login form submission
    const loginForm = document.querySelector("#loginForm");
    if (loginForm) {
        loginForm.addEventListener("submit", (event) => {
            event.preventDefault(); // Stop page reload
            const username = document.querySelector("#username").value;
            const password = document.querySelector("#password").value;
            alert(`Logging in as: ${username}`);
            // Later: send data to backend here
        });
    }

    // Example: Navigation menu
    const navLinks = document.querySelectorAll(".nav-link");
    navLinks.forEach(link => {
        link.addEventListener("click", (e) => {
            e.preventDefault();
            alert(`You clicked: ${link.textContent}`);
        });
    });

    // Example: Toggle dark mode
    const darkModeToggle = document.querySelector("#darkModeToggle");
    if (darkModeToggle) {
        darkModeToggle.addEventListener("click", () => {
            document.body.classList.toggle("dark");
        });
    }
});
