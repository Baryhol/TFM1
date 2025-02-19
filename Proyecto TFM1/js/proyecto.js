document.addEventListener("DOMContentLoaded", function() {
    // Manejo del menú de navegación (actualizado al selector BEM)
    const navMenu = document.querySelector('.header__nav-menu');
  
    // Manejo del formulario de contacto
    const contactForm = document.getElementById('contactForm');
    if (contactForm) {
        contactForm.addEventListener('submit', function(e) {
            e.preventDefault();
            const responseDiv = document.getElementById('formResponse');
            responseDiv.textContent = "¡Gracias por tu mensaje! Te responderemos a la brevedad.";
            responseDiv.style.display = "block";
  
            setTimeout(() => {
                responseDiv.style.display = "none";
            }, 5000);
  
            contactForm.reset();
        });
    }
  
    // Manejo de cookies
    if (!localStorage.getItem("cookiesAccepted")) {
        const cookieBanner = document.createElement("div");
        cookieBanner.classList.add("cookie-banner");
        cookieBanner.innerHTML = `
            <p class="cookie-banner__text">Usamos cookies para mejorar tu experiencia en el sitio. 
            <a href="avisolegal.html" class="cookie-banner__link">Más información</a></p>
            <button id="acceptCookies" class="cookie-banner__button">Aceptar</button>
        `;
        document.body.appendChild(cookieBanner);
  
        document.getElementById("acceptCookies").addEventListener("click", function() {
            localStorage.setItem("cookiesAccepted", "true");
            cookieBanner.remove();
        });
    }
  });
   

    //Manejo de newsletter        
  document.addEventListener("DOMContentLoaded", function() {
    const subscribeForm = document.querySelector(".newsletter__form");
    const emailInput = document.querySelector(".newsletter__input");
    const responseMessage = document.querySelector(".newsletter__message");
    let subscribedEmails = new Set();
    
    if (subscribeForm) {
        subscribeForm.addEventListener("submit", function(e) {
            e.preventDefault();
            const email = emailInput.value.trim();
            
            if (subscribedEmails.has(email)) {
                responseMessage.textContent = "Este correo ya está suscrito.";
                responseMessage.style.color = "red";
            } else {
                subscribedEmails.add(email);
                responseMessage.textContent = "¡Gracias por suscribirte a nuestro newsletter!";
                responseMessage.style.color = "white";
                emailInput.value = "";
            }
            responseMessage.style.display = "block";
            setTimeout(() => {
                responseMessage.style.display = "none";
            }, 5000);
        });
    }
});
