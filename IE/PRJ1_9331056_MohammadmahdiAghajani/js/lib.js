/*
 Back-end Library for MineSweeper Project
 Please Make Pull Requests to https://github.com/AUT-CEIT/ie for fixes
 Released under MIT License.
 */

/**
 * Make game.xml
 * @param {Function} [cb] - cb(xmlStr)
 * @return {String} game.xsd xml {@link https://rawgit.com/AUT-CEIT/ie/master/2016/fall/HW-3/schema/game.xsd}
 */
function getGameXML(cb) {
    // Simple Static Game Levels
    var xml = '<game id="minesweeper" title="Minesweeper Online" >'
            +'<levels default ="1">'
                +'<level id="1" title="Beginner!" timer="true">'
                    +'<rows>10</rows>'
                    +'<cols>10</cols>'
                    +'<mines>5</mines>'
                    +'<time>120</time>'
                +'</level>'
            +'</levels>'
        +'</game>'
    ;

    // Return XML File
    return _xml(xml, "game.xml", cb);
}
window.getGameXML = getGameXML;


/**
 * Make level.xml
 * @param {String} request {@link https://rawgit.com/AUT-CEIT/ie/master/2016/fall/HW-3/schema/new_game.xsd}
 * @param {Function} [cb] - cb(xmlStr)
 * @return {String} level.xsd xml {@link https://rawgit.com/AUT-CEIT/ie/master/2016/fall/HW-3/schema/level.xsd}
 */
function getNewGame(request, cb) {

    // Parse opts
    var _request = new DOMParser().parseFromString(request, 'text/xml').childNodes[0];
    var opts = ['rows', 'cols', 'mines'].reduce(function (p, c) {
        p[c] = parseInt(_request.getElementsByTagName(c)[0].innerHTML);
        return p;
    }, {});

    // Initialize empty game
    var game = [];
    for (var r = 0; r < opts.rows; r++) {
        var row = [];
        for (var c = 0; c < opts.cols; c++)
            row.push(undefined);
        game.push(row);
    }

    // Randomly place mines
    for (var i = 0; i < opts.mines; i++) {
        var x, y;
        do {
            x = _rand(0, opts.cols - 1);
            y = _rand(0, opts.rows - 1);
        } while (game[x][y] !== undefined);
        game[x][y] = true;
    }

    // Make XML
    var xml = '<grid>';
    for (var r = 0; r < opts.rows; r++) {
        xml += '<row row="${r + 1}">';
        for (var c = 0; c < opts.cols; c++) {
            xml += '<col col="${c + 1}" ${game[r][c]===true ? \'mine="true"\' : \'\'} />';
        }
        xml += '</row>';
    }
    xml += '</grid>';

    // Return XML File
    return _xml(xml, "game.xml", cb);
}
window.getNewGame = getNewGame;


// ----------------------------------------------------------------------------------
// Helpers
// ----------------------------------------------------------------------------------

// Random from [min,max]
function _rand(min, max) {
    return Math.floor(Math.random() * (max - min + 1) + min);
}

// XML Return With Some Fancy Output
function _xml(xml, title, cb) {
    xml = '<?xml version="1.0" encoding="utf-8"?>' + xml;

    console.log('Loaded ' + title, "data:text/xml;base64," + btoa(xml));
    console.log(new DOMParser().parseFromString(xml, 'text/xml').childNodes[0]);
    console.log('--------------------------------------------------');

    if (cb instanceof Function) cb(xml);
    return xml;
}
