document.getElementById('contactForm').addEventListener('submit', function(event) {
    // Prevent the form from submitting
    event.preventDefault();

    // Get form values
    var name = document.getElementById('name').value;
    var email = document.getElementById('email').value;
    var message = document.getElementById('message').value;

    // Validate the name (no numbers allowed)
    var namePattern = /^[A-Za-z\s]+$/;
    if (!namePattern.test(name)) {
        alert('Le nom ne doit pas contenir de chiffres.');
        return;
    }

    // Validate the email (must contain @)
    var emailPattern = /^[^@\s]+@[^@\s]+\.[^@\s]+$/;
    if (!emailPattern.test(email)) {
        alert('Veuillez entrer une adresse email valide.');
        return;
    }

    // Validate that all fields are filled
    if (name === '' || email === '' || message === '') {
        alert('Tous les champs doivent être remplis.');
        return;
    }

    // If all validations pass, submit the form (for demonstration, just alert)
    alert('Formulaire soumis avec succès!');
    // You can uncomment the next line to actually submit the form
    // event.target.submit();
});
