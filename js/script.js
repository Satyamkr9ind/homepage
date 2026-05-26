/* global gsap */

// =========================================
// COUNTER ANIMATION
// =========================================
document.querySelectorAll('.stat-number').forEach(counter => {
    const target = +counter.dataset.target;
    let count = 0;

    const updateCounter = () => {
        const increment = target / 40;
        count += increment;

        if (count < target) {
            counter.innerText = Math.ceil(count).toLocaleString();
            requestAnimationFrame(updateCounter);
        } else {
            counter.innerText = target.toLocaleString();
        }
    };
    updateCounter();
});

// =========================================
// APPLICATION TRACKING LOGIC
// =========================================
function fetchJobStatus() {
    const radar = document.getElementById('radar');
    const result = document.getElementById('resultCard');

    radar.style.display = 'block';
    result.style.display = 'none';

    setTimeout(() => {
        radar.style.display = 'none';
        result.style.display = 'block';
    }, 800);
}

// =========================================
// AUTHENTICATION LOGIC
// =========================================
function handleLogin() {
    const userId = document.getElementById("userId").value.trim();
    const passcode = document.getElementById("passwordInput").value.trim();
    const errorMsg = document.getElementById("loginError");
    const authCard = document.querySelector(".auth-card");

    errorMsg.style.display = "none";
    errorMsg.innerText = "";

    if (userId === "" || passcode === "") {
        errorMsg.innerText = "WARNING: User ID and Password are required.";
        errorMsg.style.display = "block";
        shakeElement(authCard);
        return; 
    }

    if (userId !== "admin" || passcode !== "admin") {
        errorMsg.innerText = "ACCESS DENIED: Invalid credentials.";
        errorMsg.style.display = "block";
        shakeElement(authCard);
        return; 
    }

    triggerSuccessAnimation();
}

function triggerSuccessAnimation() {
    const overlay = document.getElementById("authSuccessOverlay");
    const countdown = document.getElementById("countdown");
    const rocket = document.getElementById("rocketWrapper");
    const smokeContainer = document.getElementById("smokeContainer");

    overlay.style.display = "flex";
    let count = 3;

    const timer = setInterval(() => {
        count--;
        if (count > 0) {
            countdown.innerText = count;
        } else {
            clearInterval(timer);
            countdown.innerText = "VERIFIED";

            const smokeInterval = setInterval(() => {
                for (let i = 0; i < 3; i++) {
                    const smoke = document.createElement("div");
                    smoke.className = "smoke";
                    smoke.style.left = Math.random() * 220 + "px";
                    smoke.style.animationDuration = "1s";
                    smokeContainer.appendChild(smoke);
                    setTimeout(() => { smoke.remove(); }, 1000);
                }
            }, 80);

            let shake = 0;
            const shakeInterval = setInterval(() => {
                document.body.style.transform = `translateX(${shake % 2 ? 4 : -4}px)`;
                shake++;
            }, 20);

            rocket.animate([
                { transform: 'translateY(0)' },
                { transform: 'translateY(-1600px)' }
            ], {
                duration: 700,
                easing: 'ease-in',
                fill: 'forwards'
            });

            setTimeout(() => {
                clearInterval(smokeInterval);
                clearInterval(shakeInterval);
                document.body.style.transform = 'none';
                overlay.style.display = "none";
                window.location.href = "welcome.jsp";
            }, 1000);
        }
    }, 500);
}

function shakeElement(element) {
    element.animate([
        { transform: 'translateX(0)' },
        { transform: 'translateX(-10px)' },
        { transform: 'translateX(10px)' },
        { transform: 'translateX(-10px)' },
        { transform: 'translateX(10px)' },
        { transform: 'translateX(0)' }
    ], { 
        duration: 400, 
        easing: 'ease-in-out' 
    });
}

// =========================================
// GSAP ENTRY ANIMATIONS
// =========================================
gsap.from(".hero-text", {
    opacity: 0,
    x: -60,
    duration: 0.8
});

gsap.from(".auth-card", {
    opacity: 0,
    y: 60,
    duration: 0.8
});

// =========================================
// CAROUSEL LOGIC
// =========================================
let currentSlide = 0;
const totalSlides = 3; 
let slideInterval;

function moveCarousel(index) {
    currentSlide = index;
    updateCarousel();
    resetInterval(); 
}

function updateCarousel() {
    const track = document.getElementById('carouselTrack');
    const dots = document.querySelectorAll('.dot');

    if (track && dots.length > 0) {
        track.style.transform = `translateX(-${currentSlide * 100}%)`;
        dots.forEach(dot => dot.classList.remove('active'));
        dots[currentSlide].classList.add('active');
    }
}

function startInterval() {
    slideInterval = setInterval(() => {
        currentSlide = (currentSlide + 1) % totalSlides;
        updateCarousel();
    }, 4000); 
}

function resetInterval() {
    clearInterval(slideInterval);
    startInterval();
}

startInterval();

// =========================================
// VERSION TOGGLE LOGIC
// =========================================
function changeVersion(version) {
    if (version === "v2.0") {
        alert("SYSTEM NOTICE: Reverting to Legacy Build v2.0 UI parameters.");
    } else {
        console.log("System running on Latest Build (v3.0)");
    }
}