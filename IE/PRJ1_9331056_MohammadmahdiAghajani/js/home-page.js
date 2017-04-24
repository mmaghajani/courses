/**
 * Created by mma on 12/22/16.
 */
var numberOfItemsInSmall = 1;
var numberOfItemsInMedium = 3;
var numberOfItemsInLarge = 6;
var titleOfActiveGame = "";


$(document).ready(function () {


    var requestURL = my_domain + 'home.json'
    console.log(requestURL)
    $.ajax({
        url: requestURL, type: 'GET', headers: {'Access-Control-Allow-Origin': '*'}, success: function (data) {
            if (data.response.ok == true) {
                var gamesData = data.response.result.homepage;

                initSliderOne(gamesData)
                initSliderTwo(gamesData)
                initComment(gamesData)
                initGuides(gamesData)
            }
        }
    });

});


function handleGuideItemClick(item, gamesData) {
    var num = gamesData.tutorials.length;
    var title = $($(item.children()[0]).children()[1]).children()[0].textContent
    var date = $($(item.children()[0]).children()[1]).children()[1].textContent

    for (var i = 0; i < num; i++) {
        if( date == (gamesData.tutorials[i]).date && title == (gamesData.tutorials[i]).title){
            var gameTitle = (gamesData.tutorials[i]).game.title
            window.location.href = ("./games.html?game=" + gameTitle + "&tab=info");
        }
    }
}

function addItemsToGuideBody(num, gamesData) {
    for (var i = 0; i < num; i++) {
        var id = i;
        var title = (gamesData.tutorials[i]).title;
        var date = (gamesData.tutorials[i]).date;
        var gameAvatar = (gamesData.tutorials[i]).game.small_image;

        var s = '<div class="row" id="' + id + '">' +
            '<div class="list-item">' +
            '<div class="personal-image col-sm-4 col-md-4 col-lg-3 col-xs-4">' +
            '<img src="' + gameAvatar + '" class="guide-image">' +
            '</div>' +
            '<div class="information col-sm-8 col-md-8 col-lg-9 col-xs-8">' +
            '<div class="text-success h4">' +
            title +
            '</div>' +
            '<div class="text-muted h5">' +
            date +
            '</div>' +
            '</div>' +
            '</div>' +
            '</div>';

        var item = $(s).click(function () {
            handleGuideItemClick($(this) , gamesData)
        })
        $('#guide-content-body').append(item)
    }
}

function initGuides(gamesData) {
    var num = gamesData.tutorials.length;
    addItemsToGuideBody(num, gamesData)
}

function handleCommentItemClick(item, gamesData) {
    var num = gamesData.comments.length;
    var text = $($(item.children()[0]).children()[1]).children()[0].textContent
    console.log(item.attr("name"))
    for (var i = 0; i < num; i++) {
        if( item.attr("name") == (gamesData.comments[i]).player.name && text == (gamesData.comments[i]).text){
            var gameTitle = (gamesData.comments[i]).game.title
            window.location.href = ("./games.html?game=" + gameTitle + "&tab=comments");
        }
    }
}

function addItemsToCommentBody(num, gamesData) {
    for (var i = 0; i < num; i++) {
        var id = i;
        var text = (gamesData.comments[i]).text;
        var date = (gamesData.comments[i]).date;
        var playerAvatar = (gamesData.comments[i]).player.avatar;

        var s = '<div class="row" id="' + id + '">' +
            '<div class="list-item">' +
            '<div class="personal-image col-sm-4 col-md-4 col-lg-3 col-xs-4">' +
            '<img src="' + playerAvatar + '" class="list-image">' +
            '</div>' +
            '<div class="information col-sm-8 col-md-8 col-lg-9 col-xs-8">' +
            '<div class="text-success h4">' +
            text +
            '</div>' +
            '<div class="text-muted h5">' +
            date +
            '</div>' +
            '</div>' +
            '</div>' +
            '</div>';

        var item = $(s).click(function () {
            handleCommentItemClick($(this) , gamesData)
        })
        item.attr( "name", (gamesData.comments[i]).player.name)
        $('#comment-content-body').append(item)
    }
}

function initComment(gamesData) {
    var num = gamesData.comments.length;
    addItemsToCommentBody(num, gamesData)
}

function handleSliderTwoClick(item) {
    var title = $(item.children()[1]).children()[0].textContent
    title = 'بازی ' + title
    window.location.href = ("./games.html?game=" + title);
}

function addHandller() {
    var items = $("#owl20").find(".owl-item")
    for( var i = 0 ; i < items.length ; i++ ){
        $(items[i]).click(function () {
            handleSliderTwoClick($(this))
        })
    }
}
function addItemsToSliderTwo(numberOfItems, gamesData) {
    for (var i = 0; i < numberOfItems; i++) {
        var id = i;
        var title = (gamesData.new_games[i]).title.substr(5);
        var categories = (gamesData.new_games[i]).categories;
        var numOfBlueStar = parseInt((gamesData.new_games[i]).rate);
        var numOfGrayStar = 5 - numOfBlueStar;
        var s = '<div class="slider-item-two  text-right owl-item" id="' + id + '">' +
            '<div class="picture row">' +
            '<img class="img-responsive picture"' +
            'src="' + (gamesData.new_games[i]).small_image + '">' +
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
        // var item = $(s).click(function () {
        //     handleSliderTwoClick($(this))
        // })
        $('#owl20').append(s)
    }
}

function initSliderTwo(gamesData) {
    var num = gamesData.new_games.length;
    addItemsToSliderTwo(num, gamesData)

    var owl2 = $('#owl20');
    // owl1.on('initialized.owl.carousel', function (event) {
    //     handleSliderOne(gamesData, event)
    // })
    owl2.owlCarousel({
        loop: true,
        margin: 10,
        responsiveClass: true,
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
                nav:true,
                dots:false
            },
            1400: {
                items: 4,
                center: true,
                dots:true
            }
        }
    })

    addHandller()
    // owl1.on('changed.owl.carousel', function (event) {
    //     handleSliderOne(gamesData, event)
    // })

}

function initSliderOne(gamesData) {
    var num = gamesData.slider.length;
    addItemsToSliderOne(num, gamesData)

    var owl1 = $('#owl1');
    owl1.on('initialized.owl.carousel', function (event) {
        handleSliderOne(gamesData, event)
    })
    owl1.owlCarousel({
        loop: false, rewind: true, center: false, dots: false, responsiveClass: true, animateOut: 'fadeOut',
        animateIn: 'fadeIn',
        autoplay: true,
        autoplayTimeout: 5000,
        autoplayHoverPause: false,
        responsive: {
            0: {
                items: numberOfItemsInSmall,
                nav: true
            },
            600: {
                items: numberOfItemsInMedium,
                nav: false
            },
            1000: {
                items: numberOfItemsInLarge,
                loop: false,
                rewind: true,
                center: false
            }
        }
    });
    owl1.on('changed.owl.carousel', function (event) {
        handleSliderOne(gamesData, event)
    })
}
function addItemsToSliderOne(numberOfItems, gamesData) {
    for (var i = 0; i < numberOfItems; i++) {
        var id = i;
        var item = $('<div class="slider-item-one  text-right vertical-align-wrap" id="' + id + '">' +
            '<p class="vertical-align text-info vertical-align--bottom h5"><strong>بررسی ' +
            (gamesData.slider[i]).title + '</strong></p>' +
            '</div>').css('background', 'url(' + (gamesData.slider[i]).small_image + ') no-repeat center center').click(function () {
            handleSliderOneClick($(this), gamesData)
        })
        $('#owl1').append(item)
    }
}

function handleSliderOneClick(item, gamesData) {
    var sliderItem = item;
    var child = sliderItem.children();
    setActiveGame(gamesData, child, item)
}

function handleSliderOne(gamesData, event) {
    var slider = document.getElementById('owl1')
    var activeItems = slider.getElementsByClassName('active')
    // var id;
    // if (activeItems.length == numberOfItemsInLarge) {
    //     id = event.item.index - 6;
    // } else if (activeItems.length == numberOfItemsInMedium) {
    //     id = event.item.index - 3;
    // } else {
    //     id = event.item.index - 2;
    // }
    //var sliderItem = document.getElementById(id);
    var id = event.item.index
    var sliderItem = $("#" + id);
    //console.log(sliderItem)
    var child = $(sliderItem).children();
    setActiveGame(gamesData, child, sliderItem)
}

function setActiveGame(gamesData, child, item) {
    var title = $(child[0]).children()[0].textContent.substr(6)
    titleOfActiveGame = title;
    for (var i = 0; i < gamesData.slider.length; i++) {
        if (title == (gamesData.slider[i]).title) {
            $("#main-content").fadeTo("slow", 0.8);
            $('#main-content').css({
                'background': 'url(' + (gamesData.slider[i]).large_image + ') no-repeat center center',
                'background-size': 'cover'
            })
            $("#main-content").fadeTo("slow", 1);
            // console.log(i)
            // console.log(item);
            $(item).empty()
            //console.log(item);
            var template = $('<div class="slider-item-one-frame slider-item-one-active text-right vertical-align-wrap">'
                + '<div class="vertical-align--middle">' +
                '<p class="h4 text-info">' + title + '</p>' +
                '<p class="h6 text-info">' + 'تعداد نظرات : ' + (gamesData.slider[i]).number_of_comments + '</p>' +
                '<br>' +
                '<button type="button" class="text-muted btn-default" onclick="enterGamePageBtnHandler()">صفحه بازی</button>' +
                '</div></div>');
            $(item).append(template)
            // console.log(item);
            $("#subject").children().text((gamesData.slider[i]).title.substr(5))
            $("#explain").children().text((gamesData.slider[i]).abstract)
            break;
        }
    }

    var allItems = $("#owl1").children(".owl-stage-outer").children(".owl-stage").children(".owl-item").children();
    for (var i = 0; i < allItems.length; i++) {
        var but = $(allItems[i]).children();

        var classes = $(but[0]).attr('class').split(' ');
        if (containes(classes, "slider-item-one-frame")) {
            var title = ($($(but[0]).children()[0]).children()[0]).textContent;
            if (title != titleOfActiveGame) {
                $(allItems[i]).children().remove()
                var template = $('<p class="vertical-align text-info vertical-align--bottom h5"><strong>بررسی ' +
                    title + '</strong></p>');
                $(allItems[i]).append(template)
            }
        }
    }
}

function containes(arr, key) {
    for (var i = 0; i < arr.length; i++) {
        if (arr[i] == key) {
            return true
        }
    }
    return false;
}

function enterGamePageBtnHandler(e) {
    window.location.href = ("./games.html?game=" + titleOfActiveGame);
}

function enterGamePageBtnHandlerTrailer(e) {
    $('#trailer-link').attr("href", "./games.html#videos?game=" + titleOfActiveGame + "&tab=gallery")
    window.location.href = ("./games.html#videos?game=" + titleOfActiveGame + "&tab=gallery" );
}