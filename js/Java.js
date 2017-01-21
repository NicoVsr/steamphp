$(document).ready(function() {
  
  var $slider = $(".slider"),
  $slideBGs = $(".slide__bg"),
  diff = 0,
  curSlide = 0,
  numOfSlides = $(".slide").length-1,
  animating = false,
  animTime = 500,
  autoSlideTimeout,
  autoSlideDelay = 6000,
  $pagination = $(".slider-pagi");
  
  function createBullets() {
    for (var i = 0; i < numOfSlides+1; i++) {
      var $li = $("<li class='slider-pagi__elem'></li>");
      $li.addClass("slider-pagi__elem-"+i).data("page", i);
      if (!i) $li.addClass("active");
      $pagination.append($li);
    }
  };
  
  createBullets();
  
  function manageControls() {
    $(".slider-control").removeClass("inactive");
    if (!curSlide) $(".slider-control.left").addClass("inactive");
    if (curSlide === numOfSlides) $(".slider-control.right").addClass("inactive");
  };
  
  function autoSlide() {
    autoSlideTimeout = setTimeout(function() {
      curSlide++;
      if (curSlide > numOfSlides) curSlide = 0;
      changeSlides();
    }, autoSlideDelay);
  };
  
  autoSlide();
  
  function changeSlides(instant) {
    if (!instant) {
      animating = true;
      manageControls();
      $slider.addClass("animating");
      $slider.css("top");
      $(".slide").removeClass("active");
      $(".slide-"+curSlide).addClass("active");
      setTimeout(function() {
        $slider.removeClass("animating");
        animating = false;
      }, animTime);
    }
    window.clearTimeout(autoSlideTimeout);
    $(".slider-pagi__elem").removeClass("active");
    $(".slider-pagi__elem-"+curSlide).addClass("active");
    $slider.css("transform", "translate3d("+ -curSlide*100 +"%,0,0)");
    $slideBGs.css("transform", "translate3d("+ curSlide*50 +"%,0,0)");
    diff = 0;
    autoSlide();
  }

  function navigateLeft() {
    if (animating) return;
    if (curSlide > 0) curSlide--;
    changeSlides();
  }

  function navigateRight() {
    if (animating) return;
    if (curSlide < numOfSlides) curSlide++;
    changeSlides();
  }

  $(document).on("mousedown touchstart", ".slider", function(e) {
    if (animating) return;
    window.clearTimeout(autoSlideTimeout);
    var startX = e.pageX || e.originalEvent.touches[0].pageX,
    winW = $(window).width();
    diff = 0;
    
    $(document).on("mousemove touchmove", function(e) {
      var x = e.pageX || e.originalEvent.touches[0].pageX;
      diff = (startX - x) / winW * 70;
      if ((!curSlide && diff < 0) || (curSlide === numOfSlides && diff > 0)) diff /= 2;
      $slider.css("transform", "translate3d("+ (-curSlide*100 - diff) +"%,0,0)");
      $slideBGs.css("transform", "translate3d("+ (curSlide*50 + diff/2) +"%,0,0)");
    });
  });
  
  $(document).on("mouseup touchend", function(e) {
    $(document).off("mousemove touchmove");
    if (animating) return;
    if (!diff) {
      changeSlides(true);
      return;
    }
    if (diff > -8 && diff < 8) {
      changeSlides();
      return;
    }
    if (diff <= -8) {
      navigateLeft();
    }
    if (diff >= 8) {
      navigateRight();
    }
  });
  
  $(document).on("click", ".slider-control", function() {
    if ($(this).hasClass("left")) {
      navigateLeft();
    } else {
      navigateRight();
    }
  });
  
  $(document).on("click", ".slider-pagi__elem", function() {
    curSlide = $(this).data("page");
    changeSlides();
  });
  
});



/**
 * @Titulo: Slider Responsivo
 * @Autor: Creaticode
 * @URL: http://creaticode.com 
 */
 $(function() {
  /** -----------------------------------------
   * Modulo del Slider 
   -------------------------------------------*/
   var SliderModule = (function() {
    var pb = {};
    pb.el = $('#slider');
    pb.items = {
      panels: pb.el.find('.slider-wrapper > li'),
    }

    // Interval del Slider
    var SliderInterval,
    currentSlider = 0,
    nextSlider = 1,
    lengthSlider = pb.items.panels.length;

    // Constructor del Slider
    pb.init = function(settings) {
      this.settings = settings || {duration: 8000};
      var items = this.items,
      lengthPanels = items.panels.length,
      output = '';

      // Insertamos nuestros botones
      for(var i = 0; i < lengthPanels; i++) {
        if(i == 0) {
          output += '<li class="active"></li>';
        } else {
          output += '<li></li>';
        }
      }

      $('#control-buttons').html(output);

      // Activamos nuestro Slider
      activateSlider();
      // Eventos para los controles
      $('#control-buttons').on('click', 'li', function(e) {
        var $this = $(this);
        if(!(currentSlider === $this.index())) {
          changePanel($this.index());
        }
      });

    }

    // Funcion para activar el Slider
    var activateSlider = function() {
      SliderInterval = setInterval(pb.startSlider, pb.settings.duration);
    }

    // Funcion para la Animacion
    pb.startSlider = function() {
      var items = pb.items,
      controls = $('#control-buttons li');
      // Comprobamos si es el ultimo panel para reiniciar el conteo
      if(nextSlider >= lengthSlider) {
        nextSlider = 0;
        currentSlider = lengthSlider-1;
      }

      controls.removeClass('active').eq(nextSlider).addClass('active');
      items.panels.eq(currentSlider).fadeOut('slow');
      items.panels.eq(nextSlider).fadeIn('slow');

      // Actualizamos los datos del slider
      currentSlider = nextSlider;
      nextSlider += 1;
    }

    // Funcion para Cambiar de Panel con Los Controles
    var changePanel = function(id) {
      clearInterval(SliderInterval);
      var items = pb.items,
      controls = $('#control-buttons li');
      // Comprobamos si el ID esta disponible entre los paneles
      if(id >= lengthSlider) {
        id = 0;
      } else if(id < 0) {
        id = lengthSlider-1;
      }

      controls.removeClass('active').eq(id).addClass('active');
      items.panels.eq(currentSlider).fadeOut('slow');
      items.panels.eq(id).fadeIn('slow');

      // Volvemos a actualizar los datos del slider
      currentSlider = id;
      nextSlider = id+1;
      // Reactivamos nuestro slider
      activateSlider();
    }

    return pb;
  }());

   SliderModule.init({duration: 4000});

 });


 $('.form').find('input, textarea').on('keyup blur focus', function (e) {
  
  var $this = $(this),
  label = $this.prev('label');

  if (e.type === 'keyup') {
    if ($this.val() === '') {
      label.removeClass('active highlight');
    } else {
      label.addClass('active highlight');
    }
  } else if (e.type === 'blur') {
    if( $this.val() === '' ) {
      label.removeClass('active highlight'); 
    } else {
      label.removeClass('highlight');   
    }   
  } else if (e.type === 'focus') {
    
    if( $this.val() === '' ) {
      label.removeClass('highlight'); 
    } 
    else if( $this.val() !== '' ) {
      label.addClass('highlight');
    }
  }

});

 $('.tab a').on('click', function (e) {
  
  e.preventDefault();
  
  $(this).parent().addClass('active');
  $(this).parent().siblings().removeClass('active');
  
  target = $(this).attr('href');

  $('.tab-content > div').not(target).hide();
  
  $(target).fadeIn(600);
  
});


