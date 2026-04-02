/**
 * BBike Belleville - Custom JS
 * v4 - Fixed: Bootstrap carousel slider jump, product carousel scroll
 */
document.addEventListener('DOMContentLoaded', function () {

  // Sticky header with shadow on scroll
  var header = document.getElementById('header');
  if (header) {
    window.addEventListener('scroll', function () {
      header.classList.toggle('scrolled', window.scrollY > 50);
    });
  }

  // Smooth scroll for anchor links ??? but NOT slider/carousel controls
  document.querySelectorAll('a[href^="#"]').forEach(function (anchor) {
    anchor.addEventListener('click', function (e) {
      // Skip slider/carousel controls ??? prevent default to avoid anchor jump
      if (this.closest('.carousel, .homeslider, .nivoSlider, .bbike-carousel, .slider-container') ||
          this.classList.contains('carousel-control') ||
          this.getAttribute('data-slide')) {
        e.preventDefault();
        return;
      }
      var href = this.getAttribute('href');
      if (!href || href === '#') {
        e.preventDefault();
        return;
      }
      var target = document.querySelector(href);
      if (target) {
        e.preventDefault();
        target.scrollIntoView({ behavior: 'smooth', block: 'start' });
      }
    });
  });

  // Bootstrap carousel arrows: prevent scroll jump from href="#carousel"
  document.addEventListener('click', function (e) {
    var control = e.target.closest('.carousel-control, [data-slide], .nivo-directionNav a');
    if (control && control.tagName === 'A') {
      e.preventDefault();
    }
  }, true);

  // Product carousels: scroll on arrow click
  document.querySelectorAll('.bbike-carousel').forEach(function (carousel) {
    var prevBtn = carousel.querySelector('.bbike-carousel__arrow--prev');
    var nextBtn = carousel.querySelector('.bbike-carousel__arrow--next');
    var track = carousel.querySelector('.bbike-carousel__track');

    var getProductsContainer = function () {
      return track ? track.querySelector('.products') : null;
    };

    if (prevBtn && nextBtn && track) {
      var scrollAmount = function () {
        var container = getProductsContainer();
        if (!container) return 300;
        var card = container.querySelector('.product-miniature, .js-product');
        return card ? card.offsetWidth + 20 : 300;
      };

      prevBtn.addEventListener('click', function (e) {
        e.preventDefault();
        var container = getProductsContainer();
        if (container) {
          container.scrollBy({ left: -scrollAmount(), behavior: 'smooth' });
        }
      });

      nextBtn.addEventListener('click', function (e) {
        e.preventDefault();
        var container = getProductsContainer();
        if (container) {
          container.scrollBy({ left: scrollAmount(), behavior: 'smooth' });
        }
      });
    }
  });



  // Add "Tout supprimer" link to active filters
  function addClearAllLink() {
    var section = document.getElementById('js-active-search-filters');
    if (!section || section.classList.contains('hide')) return;
    if (section.querySelector('.bbike-clear-all')) return;
    var filters = section.querySelectorAll('.filter-block');
    if (filters.length > 0) {
      var baseUrl = window.location.pathname;
      var link = document.createElement('a');
      link.href = baseUrl;
      link.className = 'bbike-clear-all';
      link.textContent = 'Tout supprimer';
      section.appendChild(link);
    }
  }

  // Run on page load and after AJAX filter updates
  addClearAllLink();
  var observer = new MutationObserver(function() { addClearAllLink(); });
  var target = document.getElementById('js-active-search-filters');
  if (target) observer.observe(target, { childList: true, subtree: true });
    // Run immediately and after a delay (touchspin inits after DOMContentLoaded)
    killTouchspin();
    setTimeout(killTouchspin, 100);
    setTimeout(killTouchspin, 500);
    setTimeout(killTouchspin, 1000);
    // Also observe for changes
    var qtyContainer = document.querySelector('.bbike-pb-qty');
    if (qtyContainer) {
      new MutationObserver(killTouchspin).observe(qtyContainer, { childList: true, subtree: true });
    }
  } // capture phase

});
