  const observer = new IntersectionObserver((entries, observer) => {
    entries.forEach((entry, index) => {
      if (entry.isIntersecting) {
        entry.target.classList.add('visible');
        entry.target.style.setProperty('--delay', `${index * 0.3}s`); 
        observer.unobserve(entry.target); 
      }
    });
  }, {
    threshold: 0.5
  });

  const boxes = document.querySelectorAll('.box');
  boxes.forEach((box, index) => {
    observer.observe(box);
  });
  document.addEventListener("DOMContentLoaded", () => {
    const images = document.querySelectorAll(".animate-on-scroll");

    const observer = new IntersectionObserver((entries) => {
        entries.forEach((entry) => {
            if (entry.isIntersecting) {
                entry.target.classList.add("active");
            } else {
                entry.target.classList.remove("active");
            }
        });
    });

    images.forEach((image) => observer.observe(image));
});
document.addEventListener("DOMContentLoaded", () => {
    const elementsToAnimate = document.querySelectorAll(".animate-on-scroll");

    const observer = new IntersectionObserver((entries) => {
        entries.forEach((entry) => {
            if (entry.isIntersecting) {
                entry.target.classList.add("active");
            } else {
                entry.target.classList.remove("active");
            }
        });
    });

    elementsToAnimate.forEach((element) => observer.observe(element));
});






