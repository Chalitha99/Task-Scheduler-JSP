/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
const navSlide = () => {
    const burger = document.querySelector('.burger');
    const nav = document.querySelector('.nav-links');
    const navLinks = document.querySelectorAll('.nav-links li');

    burger.addEventListener('click', () => {
        // Toggle nav
        nav.classList.toggle('nav-active');

        // Animate links
        navLinks.forEach((link, index) => {
            if (link.style.animation) {
                link.style.animation = '';
            } else {
                link.style.animation = `navLinkFade 0.5s ease forwards ${index / 7 + 0.5}s`;
            }
        });

        // Burger animation
        burger.classList.toggle('toggle');
    });
};

navSlide();



  $(document).ready(function(){
    $('.carousel').slick({
      dots: true, // Display navigation dots
      arrows: true, // Display navigation arrows
      slidesToShow: 1, // Number of slides to show at a time
      slidesToScroll: 1, // Number of slides to scroll on navigation
      autoplay: true, // Auto-rotate carousel
      autoplaySpeed: 3000, // Time between slide transitions (in milliseconds)
      responsive: [
        {
          breakpoint: 768, // Medium-sized breakpoint (adjust as needed)
          settings: {
            slidesToShow: 1,
            slidesToScroll: 1,
          }
        }
        // Add more breakpoints for other screen sizes if desired
      ]
    });
  });

