var GUI = (function() {
    var win = $(window);
    var html = $('html,body');
    var menuMobile = function() {
        $(document).ready(function($) {
            $('.btn_sp_menu').on('click', function(event) {
                $('.animated-icon1').toggleClass('open');
                $('.bg-over-menu').toggleClass('show-over');
                $('#main-menu-mobile').toggleClass('active-menu-mobile');
                $('body').toggleClass('overflow-hidden')
            });
            $('.bg-over-menu').on('click', function(event) {
                $('.animated-icon1').toggleClass('open');
                $('.bg-over-menu').toggleClass('show-over');
                $('#main-menu-mobile').toggleClass('active-menu-mobile');
                $('body').toggleClass('overflow-hidden')
            });
            $('.close-menu-btn').on('click', function(event) {
                $('.animated-icon1').toggleClass('open');
                $('.bg-over-menu').toggleClass('show-over');
                $('#main-menu-mobile').toggleClass('active-menu-mobile');
                $('body').toggleClass('overflow-hidden')
            });
        });
        $('#main-menu-mobile .menu_clone').find("ul li").each(function() {
            if ($(this).find("ul>li").length > 0) {
                $(this).prepend('<i></i>');
            }
        });
        $('#main-menu-mobile .menu_clone ul').find('li i').click(function(event) {
            var ul = $(this).nextAll("ul");
            if (ul.is(":hidden")) {
                $(this).addClass('active');
                ul.slideDown(200);
            } else {
                $(this).removeClass('active');
                ul.slideUp();
            }
        });

        $(" .search-group__footer").find(".your-email input").attr("placeholder", "Enter your Email adress");
    };

    var _scroll_menus = function() {
        var win = $(window);
        var heighttops = $('.header').outerHeight();
        var prevScrollpos = window.pageYOffset;

        $("body").css("padding-top", heighttops);

        window.onscroll = function() {
            var currentScrollPos = window.pageYOffset;

            if (win.scrollTop() >= heighttops) {

                if (prevScrollpos > currentScrollPos) {
                    $('.header').css('top', 0);
                } else {
                    $('.header').css('top', (0 - (heighttops + 100)));
                }
                prevScrollpos = currentScrollPos;


            } else {
                $('.header').removeClass('active-fixed__headers');
                $('.header').removeClass('mobile-fixed__headers');
            }

            /* scroll header-prd mobiles */

        }

    };

    var mobilesProtecting = function() {
        $(".btn-protecting__mobiles").click(function() {
            $(this).parents(".items-protecting").find(".text-protecting__rights").slideToggle("low");
            $(".btn-protecting__mobiles").not(this).parents(".items-protecting").find(".text-protecting__rights").slideUp("low");
        });

        $(".row").next(".items-protecting").find(".text-protecting__rights").slideDown("");
        $(".row").next(".items-protecting").find(".btn-protecting__mobiles").toggleClass("active-protecting__mobiles");

        $(".btn-protecting__mobiles").click(function() {
            $(this).parents(".tour-packages__items").find(".text-tour__packages").slideToggle("low");
            $(".btn-protecting__mobiles").not(this).parents(".tour-packages__items").find(".text-tour__packages").slideUp("low");
        });

        $(".tour-packages__items:first-child").find(".text-tour__packages ").slideDown("");
        $(".tour-packages__items:first-child").find(".btn-protecting__mobiles").toggleClass("active-protecting__mobiles");

        $(".btn-protecting__mobiles").click(function() {
            $(this).parents(".join-our__items").find(".join-our__text").slideToggle("low");
            $(".btn-protecting__mobiles").not(this).parents(".join-our__items").find(".join-our__text").slideUp("low");
        });

        $(".join-our__items:first-child").find(".join-our__text").slideDown("");
        $(".join-our__items:first-child").find(".btn-protecting__mobiles").toggleClass("active-protecting__mobiles");

        $(".btn-protecting__mobiles").click(function() {
            $(this).toggleClass("active-protecting__mobiles");
            $(".btn-protecting__mobiles").not(this).removeClass("active-protecting__mobiles");
        });

        $(".btn-see__trees").click(function() {
            $(this).css("display", "none");
            $(".list-immersions .row>[class^=col]:nth-child(n+4)").fadeIn("fast");
        });

    };

    var videosTextWellcomes = function() {
        $(".intros-modals__wellcomes > div:gt(0)").hide();
        setInterval(function() {
            $('.intros-modals__wellcomes > div:first')
                .fadeOut(1000)
                .removeClass("visits")
                .next()
                .fadeIn(1000)
                .addClass("visits")
                .end()
        }, 2400);
    };
    var popupMaketing = function() {

        if ($('.showss-thums').length === 0) return;
        var swipers2 = new Swiper('.showss-thums', {
            spaceBetween: 0,
            slidesPerView: 1,
            freeMode: true,
            loop: true,
            autoplay: {
                delay: 5000,
                disableOnInteraction: false,
            },
        });

        if ($('.showss-topss').length === 0) return;
        var swipers5 = new Swiper('.showss-topss', {
            spaceBetween: 0,
            slidesPerView: 1,
            loop: false,
            autoplay: {
                delay: 5000,
                disableOnInteraction: false,
            },
        });

        $(".delete-main__thumbs").click(function() {
            $(this).parents(".showss-thums").fadeOut();
        });

        if (win.width() >= 575) {
            var isShowmodal = sessionStorage.getItem('is_showmodal');
            console.log(isShowmodal);
            if (isShowmodal == null) {
                $('#wellcomes-videos__modals').modal('show');
                sessionStorage.setItem('is_showmodal', 'showForm');
            }
            $(".modal").on('show.bs.modal', function() {
                setTimeout(function() {}, 500);
            });
            /*       var isShowmodal = localStorage.getItem('is_showmodal');*/
            /*   

                if ($("#wellcomes-videos__modals").hasClass("show-modals__wellcomes")) {
                  var html = '<iframe width="100%" src="https://www.youtube.com/embed/' + youtubeParser($('#wellcomes-videos__modals').find($('.loadIframeYoutube')).attr('data-link')) + '?autoplay=1&mute=1" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>';
                  $('#wellcomes-videos__modals').find($('.loadIframeYoutube')).html(html);
                  $('#wellcomes-videos__modals').modal('show');
                  $('body').addClass("overflow-hidden");
                  localStorage.setItem('is_showmodal', 'showForm');
              }*/
        }

        var videos_intros = $(".modals-Wellcomes__videos").find("video");
        var slide_videos = $(".shows-thumb__bigs");
        var videos_end = $(".showss-topss .swiper-slide-active").find("video");
        swipers5.autoplay.stop();

        videos_intros.on('ended', function() {
            $(".modals-Wellcomes__videos").modal("hide")
            $(".modals-Wellcomes__videos").removeClass("show")
        });

        if ($(".modals-Wellcomes__videos").not(".show")) {
            videos_end.trigger("play");
            swipers5.autoplay.start();

            $(".showss-topss .swiper-slide-active").find("video")[0].onplay = function() {
                swipers5.autoplay.stop();
            };

            videos_end.on('ended', function() {
                swipers5.autoplay.start();
                videos_end.trigger("pause");
                videos_end.trigger("load");
                swipers5.slideNext();
            });

            swipers5.on('slideChange', function() {
                $(".showss-topss .swiper-slide").find("video").trigger("load");
                $(".showss-topss .swiper-slide").find("video").trigger("play");

            });
        }

        $(".go-mains__modals").click(function() {
            $(".modals-Wellcomes__videos").modal("hide");
        });

    };

    var showPrdDetails = function() {

    };

    var Terrestrialmobiles = function() {
        if ($('.imgs-terrestrial__mobiles').length === 0) return;
        var swiper2 = new Swiper('.imgs-terrestrial__mobiles', {
            slidesPerView: 'auto',
            spaceBetween: 15,
            draggable: true,
            loop: false,
            breakpoints: {
                // when window width is >= 320px
                320: {
                    spaceBetween: 15,
                },
                576: {
                    spaceBetween: 15,
                },
                768: {
                    spaceBetween: 15,
                },
                992: {
                    spaceBetween: 15,
                },
                1200: {
                    spaceBetween: 15,
                },
                1440: {
                    spaceBetween: 15,
                }
            }
        });
    };
    var slideTextPeople = function() {
        if ($('.slide-text__peopple1').length === 0) return;
        var swiper2 = new Swiper('.slide-text__peopple1', {
            slidesPerView: 1,
            spaceBetween: 0,
            draggable: true,
            loop: true,
            pagination: {
                el: '.swiper-pagination',
                clickable: true,
            },
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
            },
            breakpoints: {
                // when window width is >= 320px
                320: {
                    slidesPerView: 1,
                    spaceBetween: 24,
                },
                576: {
                    spaceBetween: 24,
                    slidesPerView: 1,
                },
                768: {
                    spaceBetween: 24,
                    slidesPerView: 1,
                },
                992: {
                    spaceBetween: 24,
                },
                1200: {
                    spaceBetween: 24,
                },
                1440: {
                    spaceBetween: 30,
                }
            }
        });
        if ($('.slide-text__peopple2').length === 0) return;
        var swiper2 = new Swiper('.slide-text__peopple2', {
            slidesPerView: 1,
            spaceBetween: 0,
            draggable: true,
            loop: true,
            pagination: {
                el: '.swiper-pagination',
                clickable: true,
            },
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
            },
            breakpoints: {
                // when window width is >= 320px
                320: {
                    slidesPerView: "auto",
                    spaceBetween: 24,
                },
                576: {
                    spaceBetween: 24,
                    slidesPerView: "auto",
                },
                768: {
                    spaceBetween: 24,
                    slidesPerView: "auto",
                },
                992: {
                    spaceBetween: 24,
                },
                1200: {
                    spaceBetween: 24,
                },
                1440: {
                    spaceBetween: 30,
                }
            }
        });
    };
    var slideMapNinhBinh = function() {

        if ($('.slide-maps__nb2').length === 0) return;
        var swiper2 = new Swiper('.slide-maps__nb2', {
            slidesPerView: 'auto',
            spaceBetween: 30,
            draggable: true,
            loop: false,
            pagination: {
                el: '.swiper-pagination',
                clickable: true,
            },
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
            },
            breakpoints: {
                // when window width is >= 320px
                320: {
                    slidesPerView: 'auto',
                    spaceBetween: 15
                },
                576: {
                    slidesPerView: 'auto',
                    spaceBetween: 15
                },
                768: {
                    slidesPerView: 'auto',
                    spaceBetween: 15
                },
                992: {
                    slidesPerView: 'auto',
                    spaceBetween: 15
                },
                1200: {
                    slidesPerView: 'auto',
                    spaceBetween: 15
                },
                1440: {
                    spaceBetween: 30,
                }
            }
        });
    };
    var slideModalsProvinces = function() {
        $(".modal").on('show.bs.modal', function() {
            setTimeout(function() {
                if ($('.slide-modals__provinces').length === 0) return;
                var swiper2 = new Swiper('.slide-modals__provinces', {
                    slidesPerView: 1,
                    spaceBetween: 0,
                    draggable: true,
                    loop: true,
                    pagination: {
                        el: '.swiper-pagination',
                        clickable: true,
                    },
                    navigation: {
                        nextEl: '.swiper-button-next',
                        prevEl: '.swiper-button-prev',
                    },
                    breakpoints: {
                        // when window width is >= 320px
                        320: {
                            slidesPerView: 1,
                            spaceBetween: 0
                        },
                        576: {
                            spaceBetween: 0
                        },
                        768: {
                            spaceBetween: 0
                        },
                        992: {
                            spaceBetween: 0
                        },
                        1200: {
                            spaceBetween: 0
                        },
                        1440: {
                            spaceBetween: 0,
                        }
                    }
                });
            }, 500);
        });
    };
    var slideTopsBannerimgs = function() {
        if ($('.imgs-banner__pages').length === 0) return;
        var swiper2 = new Swiper('.imgs-banner__pages', {
            slidesPerView: 5,
            spaceBetween: 30,
            draggable: true,
            loop: true,
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
            },
            pagination: {
                el: '.swiper-pagination',
                clickable: true,
            },
            breakpoints: {
                // when window width is >= 320px
                320: {
                    slidesPerView: 'auto',
                    spaceBetween: 15,
                },
                576: {
                    spaceBetween: 15,
                    slidesPerView: 'auto',
                },
                768: {
                    spaceBetween: 15,
                    slidesPerView: 'auto',
                },
                992: {
                    spaceBetween: 30
                },
                1200: {
                    spaceBetween: 30
                },
                1440: {
                    spaceBetween: 30,
                }
            }
        });

        $(".banner-button-prev").click(function() {
            $(this).parents(".slider-tops__banner").find(".imgs-banner__pages .swiper-button-prev").trigger("click");
        });

        $(".banner-button-next").click(function() {
            $(this).parents(".slider-tops__banner").find(".imgs-banner__pages .swiper-button-next").trigger("click");
        });

        $('.imgs-banner__pages').find(".swiper-wrapper").each(function() {
            if ($(this).find(".swiper-slide").length < 1) {
                $(".slider-tops__banner").addClass("d-none");
            }

        });

        $('.imgs-tops__pages').click(function() {
            $(this).addClass("active-banner__page");
            var bigImgs = $(this).find('a').attr('href');
            $('.imgs-tops__pages').not(this).removeClass("active-banner__page");
            $('.banner-pages').children('img').attr('src', bigImgs);
        });



        $('.slider-tops__banner .banner-button-next').click(function() {
            $(".imgs-banner__pages .swiper-slide").each(function() {
                var bannersImgs = $(this).find('a').attr('href');
                if ($(this).hasClass("swiper-slide-active")) {
                    $('.banner-pages').children('img').attr('src', bannersImgs);
                }
            });
        });


        $('.slider-tops__banner .banner-button-prev').click(function() {
            $(".imgs-banner__pages .swiper-slide").each(function() {
                var bannersImgs = $(this).find('a').attr('href');
                if ($(this).hasClass("swiper-slide-active")) {
                    $('.banner-pages').children('img').attr('src', bannersImgs);
                }
            });
        });
    };

    var noItemsSlides = function() {
        $('.swiper-container').find(".swiper-wrapper").each(function() {
            if ($(this).find(".swiper-slide").length < 1) {
                $(this).parents(".swiper-container").find(".swiper-pagination").addClass("d-none");
                $(this).parents(".swiper-container").find(".swip-prev__nexts").addClass("d-none");
            }
        });
    };

    var slideRoomBottoms = function() {
        if ($('.gadens-slider__roomsss ').length === 0) return;
        var swiper2 = new Swiper('.gadens-slider__roomsss ', {
            slidesPerView: 3,
            spaceBetween: 30,
            draggable: true,
            loop: true,
            pagination: {
                el: '.swiper-pagination',
                clickable: true,
            },
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
            },
            breakpoints: {
                // when window width is >= 320px
                320: {
                    slidesPerView: 'auto',
                    spaceBetween: 15,
                },
                576: {
                    slidesPerView: 'auto',
                    spaceBetween: 15,
                },
                768: {
                    slidesPerView: 'auto',
                    spaceBetween: 15,
                },
                992: {
                    spaceBetween: 15,
                },
                1200: {
                    spaceBetween: 15,
                },
                1440: {
                    spaceBetween: 30,
                }
            }
        });
    };
    var slideFreeSevices = function() {
        if ($('.slide-free__sevices ').length === 0) return;
        var swiper2 = new Swiper('.slide-free__sevices ', {
            slidesPerView: 4,
            slidesPerColumn: 2,
            spaceBetween: 30,
            draggable: true,
            loop: false,
            pagination: {
                el: '.swiper-pagination',
                clickable: true,
            },
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
            },
            breakpoints: {
                // when window width is >= 320px
                320: {
                    spaceBetween: 15,
                    slidesPerView: 'auto',
                    slidesPerColumn: 1,
                },
                576: {
                    spaceBetween: 15,
                    slidesPerView: 'auto',
                    slidesPerColumn: 1,
                },
                768: {
                    spaceBetween: 15,
                    slidesPerView: 'auto',
                    slidesPerColumn: 1,
                },
                992: {
                    spaceBetween: 15,
                    slidesPerView: 3,
                },
                1200: {
                    spaceBetween: 30,
                },
                1440: {
                    spaceBetween: 30,
                }
            }
        });
    };
    var slideTheGadern = function() {
        if ($('.gadens-slider__1').length === 0) return;
        var swiper2 = new Swiper('.gadens-slider__1', {
            slidesPerView: 3,
            spaceBetween: 30,
            draggable: true,
            loop: false,
            pagination: {
                el: '.swiper-pagination',
                clickable: true,
            },
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
            },
            breakpoints: {
                // when window width is >= 320px
                320: {
                    slidesPerView: 'auto',
                    spaceBetween: 15,
                },
                576: {
                    slidesPerView: 'auto',
                    spaceBetween: 15,
                },
                768: {
                    spaceBetween: 15,
                    slidesPerView: 'auto',
                },
                992: {
                    spaceBetween: 15,
                },
                1200: {
                    spaceBetween: 15,
                },
                1440: {
                    spaceBetween: 30,
                }
            }
        });
        if ($('.gadens-slider__2').length === 0) return;
        var swiper2 = new Swiper('.gadens-slider__2', {
            slidesPerView: 3,
            spaceBetween: 30,
            draggable: true,
            loop: false,
            pagination: {
                el: '.swiper-pagination',
                clickable: true,
            },
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
            },
            breakpoints: {
                // when window width is >= 320px
                320: {
                    slidesPerView: 'auto',
                    spaceBetween: 15,
                },
                576: {
                    slidesPerView: 'auto',
                    spaceBetween: 15,
                },
                768: {
                    spaceBetween: 15,
                    slidesPerView: 'auto',
                },
                992: {
                    spaceBetween: 15,
                },
                1200: {
                    spaceBetween: 15,
                },
                1440: {
                    spaceBetween: 30,
                }
            }
        });
    };
    var slideQuocteGallerys = function() {
        if ($('.the-gallerys__quoctes ').length === 0) return;
        var swiper2 = new Swiper('.the-gallerys__quoctes ', {
            slidesPerView: 1,
            spaceBetween: 0,
            draggable: true,
            loop: false,
            pagination: {
                el: '.swiper-pagination',
                clickable: true,
            },
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
            },
            breakpoints: {
                // when window width is >= 320px
                320: {
                    slidesPerView: 1,
                    spaceBetween: 0
                },
                576: {
                    spaceBetween: 0
                },
                768: {
                    spaceBetween: 0
                },
                992: {
                    spaceBetween: 0
                },
                1200: {
                    spaceBetween: 0
                },
                1440: {
                    spaceBetween: 0,
                }
            }
        });
    };
    var slideJourneysSlider = function() {
        if ($('.videos-journeys__slider').length === 0) return;
        var swiper2 = new Swiper('.videos-journeys__slider', {
            slidesPerView: 1,
            spaceBetween: 0,
            draggable: true,
            loop: false,
            pagination: {
                el: '.swiper-pagination',
                clickable: true,
            },
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
            },
            breakpoints: {
                // when window width is >= 320px
                320: {
                    slidesPerView: 1,
                    spaceBetween: 0
                },
                576: {
                    spaceBetween: 0
                },
                768: {
                    spaceBetween: 0
                },
                992: {
                    spaceBetween: 0
                },
                1200: {
                    spaceBetween: 0
                },
                1440: {
                    spaceBetween: 0,
                }
            }
        });
    };
    var slideImgfooter = function() {
        if ($('.slider-images__footer').length === 0) return;
        var swiper2 = new Swiper('.slider-images__footer', {
            slidesPerView: 6,
            spaceBetween: 0,
            draggable: true,
            loop: true,
            breakpoints: {
                // when window width is >= 320px
                320: {
                    slidesPerView: 3,
                    spaceBetween: 0
                },
                576: {
                    spaceBetween: 0,
                    slidesPerView: 4,
                },
                768: {
                    spaceBetween: 0,
                    slidesPerView: 5,
                },
                992: {
                    spaceBetween: 0,
                    slidesPerView: 5,
                },
                1200: {
                    spaceBetween: 0,
                    slidesPerView: 6,
                },
                1440: {
                    slidesPerView: 6,
                    spaceBetween: 0,
                }
            }
        });
    };
    var slideCitronellaSlider = function() {
        if ($('.imgs-citronella__slider').length === 0) return;
        var swiper2 = new Swiper('.imgs-citronella__slider', {
            slidesPerView: 4,
            spaceBetween: 30,
            draggable: true,
            loop: true,
            pagination: {
                el: '.swiper-pagination',
                clickable: true,
            },
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
            },
            breakpoints: {
                // when window width is >= 320px
                320: {
                    slidesPerView: 'auto',
                    spaceBetween: 15,
                },
                576: {
                    slidesPerView: 'auto',
                    spaceBetween: 15,
                },
                768: {
                    spaceBetween: 15,
                    slidesPerView: 'auto',
                },
                992: {
                    spaceBetween: 15,
                },
                1200: {
                    spaceBetween: 15,
                },
                1440: {
                    spaceBetween: 30,
                }
            }
        });
        if ($('.imgs-longani__slider').length === 0) return;
        var swiper2 = new Swiper('.imgs-longani__slider', {
            slidesPerView: 4,
            spaceBetween: 30,
            draggable: true,
            loop: true,
            pagination: {
                el: '.swiper-pagination',
                clickable: true,
            },
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
            },
            breakpoints: {
                // when window width is >= 320px
                320: {
                    slidesPerView: 'auto',
                    spaceBetween: 15,
                },
                576: {
                    slidesPerView: 'auto',
                    spaceBetween: 15,
                },
                768: {
                    spaceBetween: 15,
                    slidesPerView: 'auto',
                },
                992: {
                    spaceBetween: 0
                },
                1200: {
                    spaceBetween: 0
                },
                1440: {
                    spaceBetween: 30,
                }
            }
        });
    };
    var ImgsCulinarySlider = function() {

        $(".pool-boxs").next(".zens-boxs").find(".the-gadens__slider").addClass("imgs-culinary__slider1sss");
        $(".pool-boxs").next(".zens-boxs").find(".the-gadens__slider").removeClass("imgs-culinary__slider");

        $(".imgs-culinary__slider1sss .province-nb__items").click(function() {
            $(".modals-wellness__intross").addClass("open-attractions__modals");
            $("body").addClass("overflows");
        });

        $(".imgs-culinary__slider1sss").find(".province-nb__items").css("height", "100%");
        $(".imgs-culinary__slider").find(".province-nb__items").css("height", "100%");


        $(".close-modals__alls").click(function() {
            $(".modals-wellness__intross ").removeClass("open-attractions__modals");
            $("body").removeClass("overflows");
        });

        $(document).click(function(e) {
            if (!$(e.target).closest('.province-nb__items , .modals-wellness__intross .modal-dialog').length) {
                $('.modals-wellness__intross').stop(true).removeClass("open-attractions__modals");
                $('body').stop(true).removeClass("overflows");
            }
        });
        console.log(12345678);

        if ($('.imgs-culinary__slider').length > 0){
    		var swiper2 = new Swiper('.imgs-culinary__slider', {
                slidesPerView: 3,
                spaceBetween: 30,
                draggable: true,
                updateOnWindowResize: true,
                watchSlidesVisibility: true,
                watchSlidesProgress: true,
                loop: true,
                navigation: {
                    nextEl: '.swiper-button-next',
                    prevEl: '.swiper-button-prev',
                },
                pagination: {
                    el: '.swiper-pagination',
                    clickable: true,
                },
                breakpoints: {
                    // when window width is >= 320px
                    320: {
                        spaceBetween: 15,
                        slidesPerView: 'auto',
                    },
                    576: {
                        spaceBetween: 15,
                        slidesPerView: 'auto',
                    },
                    768: {
                        spaceBetween: 15,
                        slidesPerView: 'auto',
                    },
                    992: {
                        spaceBetween: 15,
                    },
                    1200: {
                        spaceBetween: 30,
                    },
                    1440: {
                        spaceBetween: 30,
                    }
                }
            });
    	}
        if ($('.imgs-culinary__slider1sss').length === 0){
    		var swiper3s = new Swiper('.imgs-culinary__slider1sss', {
                slidesPerView: 3,
                spaceBetween: 30,
                draggable: true,
                updateOnWindowResize: true,
                watchSlidesVisibility: true,
                watchSlidesProgress: true,
                loop: true,
                navigation: {
                    nextEl: '.swiper-button-next',
                    prevEl: '.swiper-button-prev',
                },
                pagination: {
                    el: '.swiper-pagination',
                    clickable: true,
                },
                breakpoints: {
                    // when window width is >= 320px
                    320: {
                        spaceBetween: 15,
                        slidesPerView: 'auto',
                    },
                    576: {
                        spaceBetween: 15,
                        slidesPerView: 'auto',
                    },
                    768: {
                        spaceBetween: 15,
                        slidesPerView: 'auto',
                    },
                    992: {
                        spaceBetween: 15,
                    },
                    1200: {
                        spaceBetween: 30,
                    },
                    1440: {
                        spaceBetween: 30,
                    }
                }
            });

    	}
        

        if ($('.slides-wellness__intross').length === 0){
        	var swiper2 = new Swiper('.slides-wellness__intross', {
                slidesPerView: 1,
                watchSlidesVisibility: true,
                watchSlidesProgress: true,
                updateOnWindowResize: true,
                spaceBetween: 0,
                draggable: true,
                loop: true,
                thumbs: {
                    swiper: swiper3s,
                },
                pagination: {
                    el: '.swiper-pagination',
                    clickable: true,
                },
                navigation: {
                    nextEl: '.swiper-button-next',
                    prevEl: '.swiper-button-prev',
                },
            });
        }
    };

    var ImgExperiencesMainss = function() {
        if ($('.imgs-experiences__mainss').length === 0) return;
        var swiper2 = new Swiper('.imgs-experiences__mainss', {
            slidesPerView: 5,
            spaceBetween: 30,
            draggable: true,
            loop: false,
            pagination: {
                el: '.swiper-pagination',
                clickable: true,
            },
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
            },
            breakpoints: {
                // when window width is >= 320px
                320: {
                    slidesPerView: 'auto',
                    spaceBetween: 15
                },
                576: {
                    spaceBetween: 15,
                    slidesPerView: 'auto',
                },
                768: {
                    spaceBetween: 15,
                    slidesPerView: 3,
                },
                992: {
                    spaceBetween: 15,
                    slidesPerView: 4,
                },
                1200: {
                    spaceBetween: 15,
                    slidesPerView: 4,
                },
                1440: {
                    spaceBetween: 30,
                    slidesPerView: 5,
                }
            }
        });
    };
    var GalleryMains = function() {
        if ($('.gallery-mains__slide').length === 0) return;
        var swiper2 = new Swiper('.gallery-mains__slide', {
            slidesPerView: 3,
            spaceBetween: 30,
            draggable: true,
            loop: true,
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
            },
            breakpoints: {
                // when window width is >= 320px
                320: {
                    spaceBetween: 15,
                    slidesPerView: 'auto',
                },
                576: {
                    spaceBetween: 15,
                },
                768: {
                    spaceBetween: 15,
                },
                992: {
                    spaceBetween: 15,
                },
                1200: {
                    spaceBetween: 15,
                },
                1440: {
                    spaceBetween: 30,
                }
            }
        });
        $(".showss-button-prev").click(function() {
            $(".gallery-mains__slide").find(".swiper-button-prev").trigger("click");
        });
        $(".showss-button-next").click(function() {
            $(".gallery-mains__slide").find(".swiper-button-next").trigger("click");
        });
    };
    var wellNessModalsSlider = function() {


        $(".attractions-intros__modals.modals-attraction0").find(".slide-modals__wellness").addClass("slide-modals__attractions1");
        $(".attractions-intros__modals.modals-attraction1").find(".slide-modals__wellness").addClass("slide-modals__attractions2");

        if ($('.slide-maps__nb1').length === 0) return;
        var swiper1ssssss = new Swiper('.slide-maps__nb1', {
            slidesPerView: 'auto',
            spaceBetween: 30,
            draggable: true,
            loop: false,
            updateOnWindowResize: true,
            watchSlidesVisibility: true,
            watchSlidesProgress: true,
            pagination: {
                el: '.swiper-pagination',
                clickable: true,
            },
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
            },

        });

        if ($('.slide-maps__nb2').length === 0) return;
        var swiper2ssssss = new Swiper('.slide-maps__nb2', {
            slidesPerView: 'auto',
            spaceBetween: 30,
            draggable: true,
            watchSlidesVisibility: true,
            watchSlidesProgress: true,
            updateOnWindowResize: true,
            loop: false,
            pagination: {
                el: '.swiper-pagination',
                clickable: true,
            },
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
            },
        });
        if ($('.slide-modals__attractions1').length === 0) return;
        var swiper1s = new Swiper('.slide-modals__attractions1', {
            slidesPerView: 1,
            updateOnWindowResize: true,
            spaceBetween: 0,
            draggable: true,
            loop: false,
            thumbs: {
                swiper: swiper1ssssss,
            },
            pagination: {
                el: '.swiper-pagination',
                clickable: true,
            },
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
            },

        });


        if ($('.slide-modals__attractions2').length === 0) return;
        var swiper2s = new Swiper('.slide-modals__attractions2', {
            slidesPerView: 1,
            updateOnWindowResize: true,
            spaceBetween: 0,
            draggable: true,
            loop: false,
            thumbs: {
                swiper: swiper2ssssss,
            },
            pagination: {
                el: '.swiper-pagination',
                clickable: true,
            },
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
            },

        });

        $(".modal").on('show.bs.modal', function() {
            setTimeout(function() {

            }, 500);
        });

        if ($('.modals-attraction1').length > 0) {
            $('.modal-backdrop').hide();
        }

        $(".slide-maps__nb1 .province-nb__items").click(function() {
            $(".modals-attraction0").addClass("open-attractions__modals");
            $("body").addClass("overflows");

        });

        $(".slide-maps__nb2 .province-nb__items").click(function() {
            $(".modals-attraction1").addClass("open-attractions__modals");
            $("body").addClass("overflows");
        });

        $(".close-modals__alls").click(function() {
            $(".attractions-intros__modals").removeClass("open-attractions__modals");
            $("body").removeClass("overflows");
        });

        $(document).click(function(e) {
            if (!$(e.target).closest('.province-nb__items , .attractions-intros__modals .modal-dialog').length) {
                $('.attractions-intros__modals').stop(true).removeClass("open-attractions__modals");
                $('body').stop(true).removeClass("overflows");
            }
        });
    }

    var file_forms = function() {
        $(".input-files").on("change", function() {
            var fileName = $(this).val().split("\\").pop();
            $(this).parents(".up-file__advisory").find(".input-label p").addClass("selected").html(fileName);
        });
        $(".btn-Choose__file").click(function() {
            $(this).parents(".up-file__advisory").find(".input-files").trigger("click");
        });

        $(".btn-see__trees").click(function() {
            $(".gallery-imgs__lists").addClass("shows-alls__garelly");
            $(this).css("display", "none");
        });
    }

    var scrollTopss = function() {
        $(".btn-up-topss").click(function() {
            $("html, body").animate({ scrollTop: 0 }, 1000);
            return false;
        });
    }

    var backToTop = function() {
        if ($(".back-to-top").length > 0) {
            $(window).scroll(function() {
                var e = $(window).scrollTop();
                if (e > 300) {
                    $(".back-to-top").show();
                } else {
                    $(".back-to-top").hide();
                }
            });
            $(".back-to-top").click(function() {
                $('body,html').animate({
                    scrollTop: 0
                }, 500)
            })
        }

    }
    var initWowJs = function() {
        new WOW().init();
    }
    var allHeights = async function() {
        var win = await $(window);

        $('.swiper-container').each(async function() {
            var highestBox = await 0;
            $(this).find('.province-nb__items').each(function() {
                if ($(this).height() > highestBox) {
                    highestBox = $(this).height();
                }
            })
            $(this).find('.province-nb__items').height(highestBox);
        });


        $('.slide-free__sevices').each(function() {
            var highestBoxx = 0;
            $(this).find('.items-free__sevices').each(function() {
                if ($(this).height() > highestBoxx) {
                    highestBoxx = $(this).height();
                }
            })
            $(this).find('.items-free__sevices').height(highestBoxx);
        });
    }
    var vidoesSlideMains = function() {
        if ($('.play-bt').length > 0) {
            $('.play-bt').click(function() {
                $(this).parents(".items").find(".items-slide__mains img").hide();
                $(this).removeClass("active-btn");
                $(this).parents('.items-slide__mains').find(".pause-bt").addClass("active-btn");
                $(this).parents(".items-slide__mains").find(".slide-mains__video").trigger('play');
                $(".play-bt").not(this).parents(".items-slide__mains").find(".slide-mains__video").trigger('pause');
                $(".play-bt").not(this).parents(".items-slide__mains").find(".play-bt").addClass("active-btn");
                $(".play-bt").not(this).parents(".items-slide__mains").find(".pause-bt").removeClass("active-btn");
            });
        }
        if ($('.pause-bt').length > 0) {
            $('.pause-bt').click(function() {
                $(this).parents('.items-slide__mains').find(".play-bt").addClass("active-btn");
                $(this).removeClass("active-btn");
                $(this).parents(".items-slide__mains").find(".slide-mains__video").trigger('pause');
            });
        }
    }
    var slideTopsBanner = function() {

    }
    return {
        _: function() {
            menuMobile();
            _scroll_menus();
            slideMapNinhBinh();
            slideTextPeople();
            Terrestrialmobiles();
            slideModalsProvinces();
            slideTopsBannerimgs();
            slideTheGadern();
            slideRoomBottoms();
            slideQuocteGallerys();
            slideJourneysSlider();
            slideCitronellaSlider();
            wellNessModalsSlider();
            slideFreeSevices();
            file_forms();
            allHeights();
            slideImgfooter();
            showPrdDetails();
            ImgExperiencesMainss();
            GalleryMains();
            mobilesProtecting();
            popupMaketing();
            videosTextWellcomes();
            scrollTopss();
            initWowJs();
            vidoesSlideMains();
            slideTopsBanner();
            ImgsCulinarySlider();
            noItemsSlides();
        }
    };
})();
$(document).ready(function() {
    GUI._();
});