/**
 * Created by mma on 12/27/16.
 */

$(document).ready(function () {

    var keyword = getParameterByName('q');
    console.log(keyword)
    if (keyword != "" && keyword != null && keyword != undefined) {
        var urlForHeader = my_domain + 'games.json' + '?q=' + keyword
        console.log(urlForHeader)
        $.ajax({
            url: urlForHeader, type: 'GET', headers: {'Access-Control-Allow-Origin': '*'}, success: function (data) {
                if (data.response.ok == true) {
                    var searchData = data.response.result.games;
                    $("#frame").find("p")[0].textContent = 'نتایج جست و جو برای : ' + keyword

                    addItemToResultPanel(searchData)
                }
            }
        });
    }

})

function handlerForSearchPanel() {
    var keyword= $("#query-search").val()
    console.log(keyword)
    window.location.href = ("./games_list.html?q=" + keyword  );
}

function handleSliderClick(item) {
    var title = $(item.children()[1]).children()[0].textContent
    title = 'بازی ' + title
    window.location.href = ("./games.html?game=" + title);
}

function addItemToResultPanel(tabData) {
    var numOfResults = tabData.length;

    var numOfItemSlider1 = 0, numOfItemSlider2 = 0, numOfItemSlider3 = 0

    for (var i = 0; i < numOfResults; i++) {
        if (i % 3 == 0) {
            numOfItemSlider1++
        } else if (i % 3 == 1) {
            numOfItemSlider2++
        } else {
            numOfItemSlider3++
        }
    }

    if( numOfResults > 0 ) {
        for (var i = 0; i < numOfItemSlider1; i++) {
            var id = i;
            var title = (tabData[i]).title.substr(5);
            var categories = (tabData[i]).categories;
            var numOfBlueStar = parseInt((tabData[i]).rate);
            var numOfGrayStar = 5 - numOfBlueStar;
            var s = '<div class="slider-item-two  text-right owl-item" id="' + id + '">' +
                '<div class="picture row">' +
                '<img class="img-responsive picture"' +
                'src="' + (tabData[i]).small_image + '">' +
                '</div>' +
                '<div class="container">' +
                '<p class="h4 text-success">' + title + '</p>' +
                '<p class="h6 text-muted">' + categories + '</p>' +
                '<div class="stars row">';
            for (var j = 0; j < numOfBlueStar; j++) {
                s += '<i class="material-icons md-18 blue_star">star</i>';
            }
            for (var j = 0; j < numOfGrayStar; j++) {
                s += '<i class="material-icons md-18 light_gray_star">star</i>';
            }
            s += '</div>' +
                '</div>' +
                '</div>';
            var item = $(s).click(function () {
                handleSliderClick($(this))
            })
            $('#slider-1').append(item)
        }

        var owl1 = $('#slider-1');
        // owl1.on('initialized.owl.carousel', function (event) {
        //     handleSliderOne(gamesData, event)
        // })
        owl1.owlCarousel({
            loop: false,
            margin: 10,
            responsiveClass: true,
            center: true,
            animateOut: 'fadeOut',
            animateIn: 'fadeIn',
            responsive: {
                0: {
                    items: 1,
                    nav: true,
                    dots: false
                },
                500: {
                    items: 2,
                    nav: true,
                },
                1400: {
                    items: 4,
                    center: true,
                    dots: true
                }
            }
        })

        if (numOfItemSlider2 > 0) {

            for (var i = numOfItemSlider1; i < numOfItemSlider1 + numOfItemSlider2; i++) {
                var id = i;
                var title = (tabData[i]).title.substr(5);
                var categories = (tabData[i]).categories;
                var numOfBlueStar = parseInt((tabData[i]).rate);
                var numOfGrayStar = 5 - numOfBlueStar;
                var s = '<div class="slider-item-two  text-right owl-item" id="' + id + '">' +
                    '<div class="picture row">' +
                    '<img class="img-responsive picture"' +
                    'src="' + (tabData[i]).small_image + '">' +
                    '</div>' +
                    '<div class="container">' +
                    '<p class="h4 text-success">' + title + '</p>' +
                    '<p class="h6 text-muted">' + categories + '</p>' +
                    '<div class="stars row">';
                for (var j = 0; j < numOfBlueStar; j++) {
                    s += '<i class="material-icons md-18 blue_star">star</i>';
                }
                for (var j = 0; j < numOfGrayStar; j++) {
                    s += '<i class="material-icons md-18 light_gray_star">star</i>';
                }
                s += '</div>' +
                    '</div>' +
                    '</div>';
                var item = $(s).click(function () {
                    handleSliderClick($(this))
                })
                $('#slider-2').append(item)
            }

            var owl2 = $('#slider-2');
            // owl1.on('initialized.owl.carousel', function (event) {
            //     handleSliderOne(gamesData, event)
            // })
            owl2.owlCarousel({
                loop: false,
                margin: 10,
                responsiveClass: true,
                center: true,
                animateOut: 'fadeOut',
                animateIn: 'fadeIn',
                responsive: {
                    0: {
                        items: 1,
                        nav: true,
                        dots: false
                    },
                    500: {
                        items: 2,
                        nav: true,
                    },
                    1400: {
                        items: 4,
                        center: true,
                        dots: true
                    }
                }
            })

            if (numOfItemSlider3 > 0) {
                for (var i = numOfItemSlider2 + numOfItemSlider1; i < numOfItemSlider1 +
                numOfItemSlider2 + numOfItemSlider3; i++) {
                    var id = i;
                    var title = (tabData[i]).title.substr(5);
                    var categories = (tabData[i]).categories;
                    var numOfBlueStar = parseInt((tabData[i]).rate);
                    var numOfGrayStar = 5 - numOfBlueStar;
                    var s = '<div class="slider-item-two  text-right owl-item" id="' + id + '">' +
                        '<div class="picture row">' +
                        '<img class="img-responsive picture"' +
                        'src="' + (tabData[i]).small_image + '">' +
                        '</div>' +
                        '<div class="container">' +
                        '<p class="h4 text-success">' + title + '</p>' +
                        '<p class="h6 text-muted">' + categories + '</p>' +
                        '<div class="stars row">';
                    for (var j = 0; j < numOfBlueStar; j++) {
                        s += '<i class="material-icons md-18 blue_star">star</i>';
                    }
                    for (var j = 0; j < numOfGrayStar; j++) {
                        s += '<i class="material-icons md-18 light_gray_star">star</i>';
                    }
                    s += '</div>' +
                        '</div>' +
                        '</div>';
                    var item = $(s).click(function () {
                        handleSliderTwoClick($(this))
                    })
                    $('#slider-3').append(item)
                }

                var owl3 = $('#slider-3');
                // owl1.on('initialized.owl.carousel', function (event) {
                //     handleSliderOne(gamesData, event)
                // })
                owl3.owlCarousel({
                    loop: false,
                    margin: 10,
                    responsiveClass: true,
                    center: true,
                    animateOut: 'fadeOut',
                    animateIn: 'fadeIn',
                    responsive: {
                        0: {
                            items: 1,
                            nav: true,
                            dots: false
                        },
                        500: {
                            items: 2,
                            nav: true,
                        },
                        1400: {
                            items: 4,
                            center: true,
                            dots: true
                        }
                    }
                })

            }
            else{
                $("#cont-slider-3").css('display' , 'none')
            }
        }
        else{
            $("#cont-slider-2").css('display' , 'none')
            $("#cont-slider-3").css('display' , 'none')
        }
    }else{
        $("#cont-slider-1").css('display' , 'none')
        $("#cont-slider-2").css('display' , 'none')
        $("#cont-slider-3").css('display' , 'none')
    }


}
