/**
 * Created by mma on 12/22/16.
 */

var tabItem;
var numberOfTotalComments;
var gameTitle

$(document).ready(function () {

    setCorrectTab()

    $(document).ready(function () {
        gameTitle = getParameterByName('game');

        var urlForHeader = my_domain +'games/' + gameTitle + '/header.json';
        $.ajax({
            url: urlForHeader, type: 'GET', headers: {'Access-Control-Allow-Origin': '*'}, success: function (data) {
                if (data.response.ok == true) {
                    var gamesData = data.response.result.game;
                    initHeader(gamesData)
                }
            }
        });

        urlForHeader = my_domain + 'games/' + gameTitle + '/' + tabItem + '.json'
        $.ajax({
            url: urlForHeader, type: 'GET', headers: {'Access-Control-Allow-Origin': '*'}, success: function (data) {
                if (data.response.ok == true) {
                    var tabData;
                    if (tabItem == 'gallery') {
                        tabData = data.response.result.gallery;
                        initGalleryTab(tabData)
                        $("#videos-tab-title").attr('load', 'loaded');
                    } else if (tabItem == 'info') {
                        tabData = data.response.result.game;
                        initInfoTab(tabData)
                        $("#info-tab-title").attr('load', 'loaded');
                    } else if (tabItem == 'comments') {
                        tabData = data.response.result.comments;
                        initCommentTab(tabData)
                        $("#comment-tab-title").attr('load', 'loaded');
                    }
                }
            }
        });
    });
});
function handlerForSearchPanel() {
    var keyword= $("#query-search").val()
    console.log(keyword)
    window.location.href = ("./games_list.html?q=" + keyword  );
}

function infoClicked(event) {
    if ($("#info-tab-title").attr('load') != 'loaded') {
        var urlForHeader = my_domain + 'games/' + gameTitle + '/info.json'
        $.ajax({
            url: urlForHeader, type: 'GET', headers: {'Access-Control-Allow-Origin': '*'}, success: function (data) {
                if (data.response.ok == true) {
                    console.log(data)
                    var tabData;

                    tabData = data.response.result.game;
                    initInfoTab(tabData)
                    $("#info-tab-title").attr('load', 'loaded');
                }
            }
        });
    }
}

function rankClicked(event) {
    if ($("#score-tab-title").attr('load') != 'loaded') {
        var urlForHeader = my_domain + 'games/' +gameTitle + '/leaderboard.json'
        $.ajax({
            url: urlForHeader, type: 'GET', headers: {'Access-Control-Allow-Origin': '*'}, success: function (data) {
                if (data.response.ok == true) {
                    console.log(data)
                    var tabData;

                    tabData = data.response.result.leaderboard;
                    initRankTab(tabData)
                    $("#score-tab-title").attr('load', 'loaded');
                }
            }
        });
    }
}
function commentClicked(event) {
    if ($("#comment-tab-title").attr('load') != 'loaded') {
        var urlForHeader = my_domain + 'games/' + gameTitle + '/comments.json'
        $.ajax({
            url: urlForHeader, type: 'GET', headers: {'Access-Control-Allow-Origin': '*'}, success: function (data) {
                if (data.response.ok == true) {
                    console.log(data)
                    var tabData;

                    tabData = data.response.result.comments;
                    initCommentTab(tabData)
                    $("#comment-tab-title").attr('load', 'loaded');
                }
            }
        });
    }
}

function handleSliderClick(item) {
    console.log("salam")
    var title = $(item.children()[1]).children()[0].textContent
    title = 'بازی ' + title
    window.location.href = ("./games.html?game=" + title);
}
function addItemToSameGamePanel(tabData) {
    $($('#related-slider-1').children()[0]).remove()
    var numOfRelated = tabData.length;

    var numOfItemSlider1 = 0, numOfItemSlider2 = 0, numOfItemSlider3 = 0

    for (var i = 0; i < numOfRelated; i++) {
        if (i % 3 == 0) {
            numOfItemSlider1++
        } else if (i % 3 == 1) {
            numOfItemSlider2++
        } else {
            numOfItemSlider3++
        }
    }

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
        $('#related-slider-owl1').append(item)
    }

    var owl1 = $('#related-slider-owl1');
    // owl1.on('initialized.owl.carousel', function (event) {
    //     handleSliderOne(gamesData, event)
    // })
    owl1.owlCarousel({
        loop: false,
        margin: 10,
        responsiveClass: true,
        center:true ,
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
            $('#related-slider-owl2').append(item)
        }

        var owl2 = $('#related-slider-owl2');
        // owl1.on('initialized.owl.carousel', function (event) {
        //     handleSliderOne(gamesData, event)
        // })
        owl2.owlCarousel({
            loop: false,
            margin: 10,
            responsiveClass: true,
            center:true ,
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
                $('#related-slider-owl3').append(item)
            }

            var owl3 = $('#related-slider-owl3');
            // owl1.on('initialized.owl.carousel', function (event) {
            //     handleSliderOne(gamesData, event)
            // })
            owl3.owlCarousel({
                loop: false,
                margin: 10,
                responsiveClass: true,
                center:true ,
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
    }


}

function initSameGameTab(tabData) {
    addItemToSameGamePanel(tabData)
}
function sameGameClicked(event) {
    if ($("#same-game-tab-title").attr('load') != 'loaded') {
        var urlForHeader = my_domain + 'games/' + gameTitle + '/related_games.json'
        $.ajax({
            url: urlForHeader, type: 'GET', headers: {'Access-Control-Allow-Origin': '*'}, success: function (data) {
                if (data.response.ok == true) {
                    console.log(data)
                    var tabData;

                    tabData = data.response.result.games;
                    initSameGameTab(tabData)
                    $("#same-game-tab-title").attr('load', 'loaded');
                }
            }
        });
    }
}

function galleryClicked(event) {
    if ($("#videos-tab-title").attr('load') != 'loaded') {
        var urlForHeader = my_domain + 'games/' + gameTitle + '/gallery.json'
        $.ajax({
            url: urlForHeader, type: 'GET', headers: {'Access-Control-Allow-Origin': '*'}, success: function (data) {
                if (data.response.ok == true) {
                    console.log(data)
                    var tabData;

                    tabData = data.response.result.gallery;
                    initGalleryTab(tabData)
                    $("#videos-tab-title").attr('load', 'loaded');
                }
            }
        });
    }
}

function addItemToRankPanel(tabData) {
    $($('#list').children()[1]).remove()
    if (tabData.length > 2) {
        $($("#person1").children()[0]).children()[1].textContent = numberToPersian(tabData[1].level)
        if (tabData[1].player.avatar != "") {
            $($($("#person1").children()[0]).children()[0]).attr('src', tabData[1].player.avatar)
        }
        $("#person1").children()[2].textContent = tabData[1].player.name
        $("#person1").children()[4].textContent = numberToPersian(tabData[1].score)

        $($("#person2").children()[0]).children()[1].textContent = numberToPersian(tabData[0].level)
        if (tabData[1].player.avatar != "") {
            $($($("#person2").children()[0]).children()[0]).attr('src', tabData[0].player.avatar)
        }
        $("#person2").children()[2].textContent = tabData[0].player.name
        $("#person2").children()[4].textContent = numberToPersian(tabData[0].score)

        $($("#person3").children()[0]).children()[1].textContent = numberToPersian(tabData[2].level)
        if (tabData[1].player.avatar != "") {
            $($($("#person3").children()[0]).children()[0]).attr('src', tabData[2].player.avatar)
        }
        $("#person3").children()[2].textContent = tabData[2].player.name
        $("#person3").children()[4].textContent = numberToPersian(tabData[2].score)

    }
    for (var i = 0; i < tabData.length; i++) {
        var rank = i + 1;
        var s = '';
        if (i % 2 == 0) {
            s += '<div class="list-item-even-2 vertical-align-wrap">'
        } else {
            s += '<div class="list-item vertical-align-wrap">'
        }
        s += '<div class="list-cell col-xs-1 col-lg-1 h4 vertical-align--middle">' +
            numberToPersian(rank) + '.' +
            '</div>' +
            '<div class="list-cell col-xs-1 col-lg-1 h4">';
        if (rank == 1) {
            s += '<i class="material-icons md-18 gold_star">star</i>';
        } else if (rank == 2) {
            s += '<i class="material-icons md-18 light_gray_star">star</i>';
        } else if (rank == 3) {
            s += '<i class="material-icons md-18 bronze-start">star</i>';
        }
        s += '</div>' +
            '<div class="list-cell personal-image col-xs-1 col-lg-1">';
        if (tabData[i].player.avatar != "") {
            s += '<img src="' + tabData[i].player.avatar + '" class="list-image">'
        } else {
            s += '<img src="assets/prof2.jpg" class="list-image">';
        }
        s += '</div>' +
            '<div class="information list-cell col-xs-3 col-lg-5 text-success h4">' +
            tabData[i].player.name +
            '</div>' +
            '<div class="list-cell col-xs-2 col-lg-1 text-warning h4">' +
            numberToPersian(tabData[i].level) +
            '</div>' +
            '<div class="list-cell col-xs-2 col-lg-1 text-primary h4">' +
            '( ' + numberToPersian(tabData[i].displacement) + ' )' +
            '</div>' +
            '<div class="list-cell col-xs-2 col-lg-2 text-warning h4">' +
            numberToPersian(tabData[i].score) +
            '</div>' +

            '</div>';

        $('#list').append(s)
    }
}

function initRankTab(tabData) {
    addItemToRankPanel(tabData)
}

function nextComments(event) {
    var urlForHeader = my_domain + 'games/' + gameTitle + '/comments.json?offset=' + $($("#comments").children()[0]).children().length
    console.log(urlForHeader)
    $.ajax({
        url: urlForHeader, type: 'GET', headers: {'Access-Control-Allow-Origin': '*'}, success: function (data) {
            if (data.response.ok == true) {
                var tabData = data.response.result.comments;
                for (var i = 0; i < tabData.length; i++) {
                    var id = i;
                    var length = $($("#comments").children()[0]).children().length;
                    var numOfRate = tabData[i].rate;
                    var s = '<div class="row">';
                    if (length % 2 == 0) {
                        s += '<div class="list-item-even">'
                    } else {
                        s += '<div class="list-item">'
                    }

                    s += '<div class="stars-block">' +
                        '<div class="stars">';
                    if (numOfRate > 0) {
                        for (var j = 0; j < numOfRate; j++) {
                            s += '<i class="material-icons md-18 dark_gray_start">star</i>'
                        }
                        for (var j = 5; j > numOfRate; j--) {
                            s += '<i class="material-icons md-18 light_gray_star">star</i>'
                        }
                    }
                    s += '</div>' +
                        '</div>' +
                        '<div class="personal-image">';
                    if (tabData[i].player.avatar == "") {
                        s += '<img src="assets/prof2.jpg" class="list-image">'
                    } else {
                        s += '<img src="' + tabData[i].player.avatar + '" class="list-image">'
                    }
                    s += '</div>' +
                        '<div class="information">' +
                        '<div class="text-muted h6">' +
                        tabData[i].date +
                        '</div>' +
                        '<div class="text-success h5">' +
                        tabData[i].player.name + ' : ' + tabData[i].text +
                        '</div>' +
                        '</div>' +
                        '</div>' +
                        '</div>';

                    $($('#comments').children()[0]).append(s)
                }

                if (tabData[0].game.number_of_comments == $($("#comments").children()[0]).children().length) {
                    console.log("salam")
                    $("#next-comment").css('visibility', 'hidden');
                }
            }
        }
    });


}
function addItemToCommentPanel(tabData) {
    for (var i = 0; i < tabData.length; i++) {
        var id = i;
        var numOfRate = tabData[i].rate;
        var s = '<div class="row">';
        if (i % 2 == 0) {
            s += '<div class="list-item-even">'
        } else {
            s += '<div class="list-item">'
        }

        s += '<div class="stars-block">' +
            '<div class="stars">';
        if (numOfRate > 0) {
            for (var j = 0; j < numOfRate; j++) {
                s += '<i class="material-icons md-18 dark_gray_start">star</i>'
            }
            for (var j = 5; j > numOfRate; j--) {
                s += '<i class="material-icons md-18 light_gray_star">star</i>'
            }
        }
        s += '</div>' +
            '</div>' +
            '<div class="personal-image list-cell">';
        if (tabData[i].player.avatar == "") {
            s += '<img src="assets/prof2.jpg" class="list-image">'
        } else {
            s += '<img src="' + tabData[i].player.avatar + '" class="list-image">'
        }
        s += '</div>' +
            '<div class="information">' +
            '<div class="text-muted h6">' +
            tabData[i].date +
            '</div>' +
            '<div class="text-success h5">' +
            tabData[i].player.name + ' : ' + tabData[i].text +
            '</div>' +
            '</div>' +
            '</div>' +
            '</div>';

        $($('#comments').children()[0]).append(s)
    }

    if (tabData[0].game.number_of_comments == $($("#comments").children()[0]).children().length) {
        $("#next-comment").css('visibility', 'hidden');
    }
}

function initCommentTab(tabData) {
    $($('#comments').children()[0]).remove()
    if (tabData.length > 0) {
        numberOfTotalComments = tabData[0].game.number_of_comments;
        console.log($("#comment-number"))
        $("#comment-number").text("( " + numberToPersian(numberOfTotalComments) + " نظر )");
    }

    addItemToCommentPanel(tabData)
}

function addItemToInfoPanel(data) {
    var s = '<p class="h5 text-primary text-justify">' + data.info + '</p>';
    //
    $('#info-content').empty()
    $('#info-content').append(s).addClass('text-justify')
    var images = $('#info').find('img')
    for (var i = 0; i < images.length; i++) {
        $(images[i]).addClass('col-xs-12 col-sm-12 col-md-12 col-lg-12 img-responsive')
    }
}
function initInfoTab(tabData) {
    addItemToInfoPanel(tabData)
}

function addItemToSlider(gamesData) {
    var numberOfItems = gamesData.images.length;
    for (var i = 0; i < numberOfItems; i++) {
        var id = i;
        var s = '<div class="slider-item-two slider-item-video text-right owl-item">' +
            '<div class="picture row vertical-align-wrap" id="' + id + '">' +
            '<div class="text-center vertical-align--middle">' +
            '<button type="button" class="btn-default trailer-button text-center"><i class="ionicons ion-ios-play"></i></span></button>' +
            '</div>' +
            '</div>' +
            '</div>';
        //
        console.log($($(s).children()[0]))
        $('#owl4').append(s)
        $('#' + i).css({
            'background': 'url(' + (gamesData.images[i]).url + ') no-repeat center center',
            'background-size': 'cover'
        })
    }
    var owl4 = $('#owl4');

    owl4.owlCarousel({
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
            600: {
                items: 2,
                nav: true,
                dots: false
            },
            1000: {
                items: 4,
                center: true,
                dots: true
            }
        }
    })
}
function initGalleryTab(data) {
    var video = videojs('trailer');
    var tab = $("#videos");
    console.log($("#trailer"))
    $("#trailer").attr('title', (data.videos[0]).title)

    video.src((data.videos[0]).url)

    addItemToSlider(data);
}

function addHeaderItem(gamesData) {

    $("#main-content").css({
        'background': 'url(' + gamesData.large_image + ') no-repeat center center',
        'background-size': 'cover'
    })
    $($($($("#header-content").children()[1]).children()[0]).children()[0]).children()[0].textContent = gamesData.title.substr(5);
    $($($($("#header-content").children()[1]).children()[0]).children()[0]).children()[1].textContent = gamesData.categories;

    var doubleRate = gamesData.rate
    var numOfComments = numberToPersian(gamesData.number_of_comments)
    var rate = parseInt(gamesData.rate)
    doubleRate = numberToPersian(String(doubleRate).substring(0, 3))
    var starsBlock = $($($("#header-content").children()[1]).children()[0]).children()[1];
    for (var i = 0; i < rate; i++) {
        $(starsBlock).append('<i class="material-icons md-18 blue_star">star</i>')
    }
    for (var i = 5; i > rate; i--) {
        $(starsBlock).append('<i class="material-icons md-18 light_gray_star">star</i>')
    }
    $(starsBlock).append('<span class="text-muted">' + ' ' + doubleRate + ' ' + '( ' + numOfComments + ' ' + 'رای )' + '</span>');

    var pic = $($($("#header-content").children()[1]).children()[1]).css('background', 'url(' + gamesData.small_image + ') no-repeat center center');
}

function initHeader(gamesData) {
    addHeaderItem(gamesData)
}


function setCorrectTab() {
    tabItem = getParameterByName('tab');
    if (tabItem == 'gallery') {
        $("#info").removeClass('in active')
        $("#info-tab-title").removeClass('active')
        $("#comment-tab-title").removeClass('active')
        $("#comment-ta").removeClass('in active')
        $("#score-tab-title").removeClass('active')
        $("#score-tab").removeClass('in active')
        $("#same-game-tab-title").removeClass('active')
        $("#same-game").removeClass('in active')
        $("#videos").addClass('in active')
        $("#videos-tab-title").addClass('active')
        tabItem = 'gallery';
    } else if (tabItem == "comments") {
        $("#info").removeClass('in active')
        $("#info-tab-title").removeClass('active')
        $("#comment-tab-title").addClass('active')
        $("#comment").addClass('in active')
        $("#score-tab-title").removeClass('active')
        $("#score-tab").removeClass('in active')
        $("#same-game-tab-title").removeClass('active')
        $("#same-game").removeClass('in active')
        $("#videos").removeClass('in active')
        $("#videos-tab-title").removeClass('active')
        tabItem = 'comments';
    } else {
        tabItem = 'info';
    }
}