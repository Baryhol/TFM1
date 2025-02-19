document.addEventListener("DOMContentLoaded", function () {
  // Manejo del menú de navegación
  const navMenu: HTMLElement | null = document.querySelector(".header__nav-menu");

  // Manejo del formulario de contacto
  const contactForm: HTMLFormElement | null = document.getElementById("contactForm") as HTMLFormElement;
  if (contactForm) {
    contactForm.addEventListener("submit", function (e: Event) {
      e.preventDefault();
      const responseDiv: HTMLElement | null = document.getElementById("formResponse");
      if (responseDiv) {
        responseDiv.textContent = "¡Gracias por tu mensaje! Te responderemos a la brevedad.";
        responseDiv.style.display = "block";

        setTimeout(() => {
          responseDiv.style.display = "none";
        }, 5000);
      }
      contactForm.reset();
    });
  }

  // Manejo de cookies
  if (!localStorage.getItem("cookiesAccepted")) {
    const cookieBanner: HTMLDivElement = document.createElement("div");
    cookieBanner.classList.add("cookie-banner");
    cookieBanner.innerHTML = `
      <p class="cookie-banner__text">Usamos cookies para mejorar tu experiencia en el sitio. 
      <a href="avisolegal.html" class="cookie-banner__link">Más información</a></p>
      <button id="acceptCookies" class="cookie-banner__button">Aceptar</button>
    `;
    document.body.appendChild(cookieBanner);

    const acceptButton: HTMLButtonElement | null = document.getElementById("acceptCookies") as HTMLButtonElement;
    if (acceptButton) {
      acceptButton.addEventListener("click", function () {
        localStorage.setItem("cookiesAccepted", "true");
        cookieBanner.remove();
      });
    }
  }
});

// Manejo del formulario de newsletter
document.addEventListener("DOMContentLoaded", function () {
  const subscribeForm: HTMLFormElement | null = document.getElementById("newsletter-subscribe-form") as HTMLFormElement;
  const emailInput: HTMLInputElement | null = document.getElementById("newsletter-email") as HTMLInputElement;
  const responseMessage: HTMLElement | null = document.getElementById("newsletter-response");

  if (subscribeForm && emailInput && responseMessage) {
    let subscribedEmails: Set<string> = new Set(JSON.parse(localStorage.getItem("subscribedEmails") || "[]"));

    subscribeForm.addEventListener("submit", function (e: Event) {
      e.preventDefault();
      const email: string = emailInput.value.trim();

      if (!email || !email.includes("@")) {
        responseMessage.textContent = "Por favor, introduce un correo electrónico válido.";
        responseMessage.style.color = "red";
      } else if (subscribedEmails.has(email)) {
        responseMessage.textContent = "Este correo ya está suscrito.";
        responseMessage.style.color = "red";
      } else {
        subscribedEmails.add(email);
        localStorage.setItem("subscribedEmails", JSON.stringify(Array.from(subscribedEmails)));
        responseMessage.textContent = "¡Gracias por suscribirte a nuestro newsletter!";
        responseMessage.style.color = "green";
        emailInput.value = "";
      }
      responseMessage.style.display = "block";
      setTimeout(() => {
        responseMessage.style.display = "none";
      }, 5000);
    });
  }
});
