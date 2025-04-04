
document.addEventListener("DOMContentLoaded", function () {
    "use strict";
    /* Preloader */
    window.onload = function () {
        setTimeout(function () {
            var preloader = document.querySelector(".spinner-wrapper");
            if (preloader) preloader.style.display = "none";
        }, 500);
    };

    /* Navbar Scripts */
    window.addEventListener("scroll", function () {
        var navbar = document.querySelector(".navbar");
        var fixedTop = document.querySelector(".fixed-top");
    
        if (!navbar || !fixedTop) return; // Kiểm tra phần tử có tồn tại không
    
        if (window.scrollY > 20) { // Dùng scrollY thay vì getBoundingClientRect()
            fixedTop.classList.add("top-nav-collapse");
        } else {
            fixedTop.classList.remove("top-nav-collapse");
        }
    });
    

    /* Smooth Scroll */
    document.querySelectorAll("a.page-scroll").forEach(anchor => {
        anchor.addEventListener("click", function (event) {
            event.preventDefault();
            document.querySelector(this.getAttribute("href")).scrollIntoView({
                behavior: "smooth",
                block: "start"
            });
        });
    });

    /* Close Responsive Menu On Click */
    document.querySelectorAll(".navbar-nav li a").forEach(link => {
        link.addEventListener("click", function () {
            var navbarCollapse = document.querySelector(".navbar-collapse");
            if (navbarCollapse && !this.parentElement.classList.contains("dropdown")) {
                navbarCollapse.classList.remove("show");
            }
        });
    });

    /* Move Form Fields Label When User Types */
    document.querySelectorAll("input, textarea").forEach(input => {
        input.addEventListener("input", function () {
            if (this.value !== "") {
                this.classList.add("notEmpty");
            } else {
                this.classList.remove("notEmpty");
            }
        });
    });

    /* Back To Top Button */
    let backToTop = document.createElement("a");
    backToTop.href = "#";
    backToTop.className = "back-to-top page-scroll";
    backToTop.innerText = "Back to Top";
    document.body.prepend(backToTop);

    window.addEventListener("scroll", function () {
        if (window.scrollY > 700) {
            backToTop.style.display = "block";
        } else {
            backToTop.style.display = "none";
        }
    });


    function handleFormSubmission(formId, url) {
        var form = document.getElementById(formId);
        if (form) {
            form.addEventListener("submit", function (event) {
                event.preventDefault();
                var formData = new FormData(form);
                fetch(url, {
                    method: "POST",
                    body: formData
                }).then(response => response.text()).then(responseText => {
                    if (responseText === "success") {
                        form.reset();
                        alert("Form submitted successfully!");
                    } else {
                        alert("Form submission failed: " + responseText);
                    }
                }).catch(error => console.error("Error:", error));
            });
        }
    }
});
