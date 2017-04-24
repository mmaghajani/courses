// Test Funcs
// See Inspect Element's Console Log Output

var gameInformation = [];
var mines = [];
var currentInformation = [];
var interval;

createBasicElement();

startGame();

function startGame() {
    mines = [];
    currentInformation = [];
    processGameInformation();

    newGame();

    console.log(mines);
    initializeCurrentInformation();

    setEventListeners();
}

function initializeCurrentInformation() {
    currentInformation["numOfClicks"] = 0;
    if ((gameInformation["levels"])[0].timer == "true") {
        document.getElementById("timer").textContent = (gameInformation["levels"])[0].time;
    } else {
        document.getElementById("timer").textContent = "000";
    }

    if ((gameInformation["levels"])[0].mines / 10 < 1) {
        document.getElementById("mines").textContent = "00" + (gameInformation["levels"])[0].mines;
    }
    else if ((gameInformation["levels"])[0].mines / 10 < 10) {
        document.getElementById("mines").textContent = "0" + (gameInformation["levels"])[0].mines;
    } else {
        document.getElementById("mines").textContent = (gameInformation["levels"])[0].mines;
    }

    document.addEventListener('contextmenu', function (e) {
        e.preventDefault();
    });
}

function setEventListeners() {
    // var grid = document.getElementById("grid");
    // grid.onclick = clickOnCells ;
    var okBtn = document.getElementById("ok-button");
    okBtn.onclick = okBtnClicked;
    var nameBox = document.getElementById("name");
    nameBox.addEventListener("keyup", function (e) {
        console.log(e.keyCode);
        if (e.keyCode < 65 || e.keyCode > 90) {
            nameBox.value = nameBox.value.substring(0, nameBox.value.length - 1);
        }
    });

    var cells = document.getElementById("grid").childNodes;
    for (var i = 0; i < cells.length; i++) {
        cells[i].addEventListener("mouseup", function (e) {
            clickOnCells(e);
        })

        cells[i].addEventListener("mousedown", function (e) {
            mouseDownOnCells(e);
        })

        cells[i].addEventListener("contextmenu", function (e) {
            rightClickOnCell(e);
        }, false);
    }

    var smile = document.getElementById('smile');

    smile.addEventListener('click', function () {
        smileClicked();

    });
}

function smileClicked() {
    var level = window.prompt("Choose game level : Beginner or Hard!")
    document.getElementById("window").removeChild(document.getElementById("grid"));
    clearInterval(interval);

    startGame();
    (gameInformation["levels"])[0].title = level;
    console.log((gameInformation["levels"])[0])
    document.getElementById("game-title").textContent = gameInformation["game_title"] + " - " +
        (gameInformation["levels"])[0].title;
}

function rightClickOnCell(element) {
    var cell = element.srcElement;
    if (cell.className != "revealed") {
        if (cell.className == "flag") {
            var mines = Number(document.getElementById('mines').textContent);
            mines = mines + 1 + 1000;
            document.getElementById('mines').textContent = (mines.toString()).substr(1);
            cell.className = "";
        } else {
            var mines = Number(document.getElementById('mines').textContent);
            mines = mines - 1 + 1000;
            document.getElementById('mines').textContent = (mines.toString()).substr(1);
            cell.className = "flag";
        }
    }

    if (isWin()) {
        win();
    }
}

function okBtnClicked() {
    var nameBox = document.getElementById("name");
    if (nameBox.value == "") {
        alert("please enter name")
    }
    else {
        var modal = document.getElementById("alert-modal");
        document.body.removeChild(modal);
    }

}

function loose() {
    document.getElementById("smile").setAttribute("data-value", "hover");
    for (var i = 1; i <= (gameInformation['levels'])[0].cols * (gameInformation['levels'])[0].rows; i++) {
        if (mines[i] == true) {
            document.getElementById(i.toString()).className = "revealed";
            document.getElementById(i.toString()).setAttribute("data-value", "mine");
        }
    }
    window.alert('You loose')
    document.getElementById("window").removeChild(document.getElementById("grid"));
    clearInterval(interval);
    document.getElementById("smile").setAttribute("data-value", "normal");
    startGame();
}

function getNeighbors(cell) {
    var id = cell.id;
    var neighbors = [];
    var temp = Number(id) - Number((gameInformation['levels'])[0].cols);
    if (temp > 0) {
        neighbors.push(document.getElementById(temp.toString()))
        temp = temp + 1;
        if (Number(id) % (gameInformation['levels'])[0].cols != 0) {
            neighbors.push(document.getElementById(temp.toString()))
        }
        temp = temp - 2;
        if (Number(id) % (gameInformation['levels'])[0].cols != 1) {
            neighbors.push(document.getElementById(temp.toString()))
        }
    }

    temp = Number(id) + Number((gameInformation['levels'])[0].cols);
    if (temp < Number((gameInformation['levels'])[0].cols) * Number((gameInformation['levels'])[0].rows)) {
        neighbors.push(document.getElementById(temp.toString()))
        temp = temp + 1;
        if (Number(id) % (gameInformation['levels'])[0].cols != 0) {
            neighbors.push(document.getElementById(temp.toString()))
        }
        temp = temp - 2;
        if (Number(id) % (gameInformation['levels'])[0].cols != 1) {
            neighbors.push(document.getElementById(temp.toString()))
        }
    }

    temp = Number(id) + 1;
    if (Number(id) % (gameInformation['levels'])[0].cols != 0) {
        neighbors.push(document.getElementById(temp.toString()))
    }
    temp = Number(id) - 1;
    if (Number(id) % (gameInformation['levels'])[0].cols != 1) {
        neighbors.push(document.getElementById(temp.toString()))
    }
    return neighbors;
}

function numOfMines(cell) {
    var count = 0;
    var neighbors = getNeighbors(cell);
    for (var i = 0; i < neighbors.length; i++) {
        var id = neighbors[i].id;
        if (mines[id] == true) {
            count++;
        }
    }
    return count;
}

function revealNeighbors(cell) {
    var neighbors = getNeighbors(cell);
    for (var i = 0; i < neighbors.length; i++) {
        if (neighbors[i].className != "revealed") {
            triggerMouseEvent(neighbors[i], "mouseup");
        }
    }
}

function clickOnCells(element) {
    if (element.which == 1) {
        var grid = document.getElementById("grid");
        var cell = element.srcElement;
        if (currentInformation["numOfClicks"] == 0) {
            if ((gameInformation["levels"])[0].timer == "true") {
                //TODO start timer
                interval = setInterval(function () {
                    document.getElementById("timer").textContent = Number(document.getElementById("timer").textContent) - 1 + 1000;
                    document.getElementById("timer").textContent = document.getElementById("timer").textContent.substr(1);
                    if (document.getElementById("timer").textContent == "000") {
                        loose();
                        clearInterval(interval);
                    }
                }, 1000);
            } else {
                document.getElementById("timer").textContent = "001";
            }
            currentInformation["numOfClicks"]++;
            // console.log(currentInformation['numOfClicks'])
        } else {
            if ((gameInformation["levels"])[0].timer == "false") {
                document.getElementById("timer").textContent = 1 + Number(document.getElementById("timer").textContent) + 1000;
                document.getElementById("timer").textContent = document.getElementById("timer").textContent.substr(1);
            }
            currentInformation["numOfClicks"]++;
            // console.log(currentInformation['numOfClicks'])

        }
        // console.log(cell.className);

        if (cell.className == "revealed") {
            var numOfMine = cell.getAttribute("data-value");
            var neighbors = getNeighbors(cell);
            // console.log(neighbors);
            var count = 0;
            for (var i = 0; i < neighbors.length; i++) {
                if (neighbors[i].className == "flag")
                    count++;
            }
            // console.log(numOfMine + " "  + count );
            if (count == numOfMine && numOfMine != 0) {
                for (var i = 0; i < neighbors.length; i++) {
                    if (neighbors[i].className != "flag" && mines[neighbors[i].id] != true) {
                        if (neighbors[i].className != "revealed") {
                            triggerMouseEvent(neighbors[i], "mouseup");
                        }
                    }
                }
                for( var i = 0 ; i < neighbors.length ; i++ ){
                    if( neighbors[i].className != "flag" && mines[neighbors[i].id] == true) {
                        triggerMouseEvent (neighbors[i], "mouseup");
                        break ;
                    }
                }
            }
        }

        if (cell.className != "flag") {
            if (mines[cell.id] == true) {
                cell.className = "revealed";
                cell.setAttribute("data-value", "mine");
                loose();
            } else {
                cell.className = "revealed";
                cell.setAttribute("data-value", numOfMines(cell));
                if (numOfMines(cell) == 0) {
                    revealNeighbors(cell);
                }
            }
        }

        if (isWin()) {
            win();
        }
    }
}

function win() {
    document.getElementById("smile").setAttribute("data-value", "ok");
    for (var i = 1; i <= (gameInformation['levels'])[0].cols * (gameInformation['levels'])[0].rows; i++) {
        if (mines[i] == true) {
            document.getElementById(i.toString()).className = "revealed";
            document.getElementById(i.toString()).setAttribute("data-value", "mine");
        }
    }
    window.alert('You win')
    document.getElementById("window").removeChild(document.getElementById("grid"));
    clearInterval(interval);
    document.getElementById("smile").setAttribute("data-value", "normal");
    startGame();
}

function isWin() {
    var cells = document.getElementById("grid").childNodes;
    var numOfRevealed = 0;
    var numOfFlagged = 0;
    for (var i = 0; i < cells.length; i++) {
        if (cells[i].className == "revealed") {
            numOfRevealed++;
        }
        if (cells[i].className == "flag") {
            numOfFlagged++;
        }
    }

    if (Number((gameInformation['levels'])[0].cols) * Number((gameInformation['levels'])[0].rows) ==
        numOfFlagged + numOfRevealed) {
        return true;
    }

    return false;
}

function triggerMouseEvent(node, eventType) {
    var clickEvent = document.createEvent('MouseEvents');
    clickEvent.initEvent(eventType, true, true);
    node.dispatchEvent(clickEvent);
}

function mouseDownOnCells(element) {
    if (element.which == 1) {
        var cell = element.srcElement;
        if (cell.className != "flag" && cell.className != "revealed") {
            cell.className = "active";
        }
    }
}

function createModal() {
    var modal = createCustomElement("div", "modal", "alert-modal", null);

    var modal_content = createCustomElement("div", "modal-content", null, null);

    var name = createCustomElement("input", "field", "name", null);
    name.placeholder = "Enter your name";

    var OKButton = createCustomElement("button", "btn", "ok-button", "OK");
    OKButton.style.marginLeft = "10px";

    modal_content.appendChild(name);
    modal_content.appendChild(OKButton);
    modal.appendChild(modal_content);

    return modal;
}

function createWindow() {
    var window = createCustomElement("div", "window", "window", null);

    var titleBar = createCustomElement("div", "title-bar", null, null);

    var gameTitle = createCustomElement("span", null, "game-title", "Minesweeper");

    var div = document.createElement("div");
    var btnMinimize = createCustomElement("span", "btn", "btn-minimize", '-');
    var btnClose = createCustomElement("span", "btn", "btn-close", 'x');

    var top = createCustomElement("div", "top", null, null);

    var remainingMines = createCustomElement("span", "counter", "mines", "123");
    var smile = createCustomElement("span", "smile", "smile", null);
    smile.setAttribute("data-value", "normal");
    var timer = createCustomElement("span", "counter", "timer", "321");

    // var grid = createCustomElement("div", "grid", "grid", null);

    div.appendChild(btnMinimize);
    div.appendChild(btnClose);
    titleBar.appendChild(gameTitle);
    titleBar.appendChild(div);
    top.appendChild(remainingMines);
    top.appendChild(smile);
    top.appendChild(timer);
    window.appendChild(titleBar);
    window.appendChild(top);
    // window.appendChild(grid);

    return window;
}

function createBasicElement() {
    var modal = createModal();
    var window = createWindow();
    document.body.appendChild(modal);
    document.body.appendChild(window);
}

/**
 * This method create an element with DOM and sets class or id  or text if are not null
 * @param tagName name of element
 * @param className css class for this element
 * @param id an id for element
 * @param text a text label for element
 * @returns {Element}
 */
function createCustomElement(tagName, className, id, text) {
    var element = document.createElement(tagName);

    if (className != null) {
        element.className = className;
    }
    if (id != null) {
        element.id = id;
    }
    if (text != null) {
        var text = document.createTextNode(text);
        element.appendChild(text);
    }

    return element;
}

function processGameInformation() {
    var parser = new DOMParser();
    var xmlDoc = parser.parseFromString(getGameXML(), "text/xml");
    gameInformation["game_title"] = xmlDoc.getElementsByTagName("game")[0].getAttribute("title");
    gameInformation["game_id"] = xmlDoc.getElementsByTagName("game")[0].getAttribute("id");
    var levels = xmlDoc.getElementsByTagName("levels")[0].children;
    var levelArray = [];
    for (var i = 0; i < levels.length; i++) {
        levelArray[i] = {
            id: levels[i].getAttribute("id"),
            title: levels[i].getAttribute("title"),
            timer: levels[i].getAttribute("timer"),
            rows: levels[i].getElementsByTagName("rows")[0].childNodes[0].nodeValue,
            cols: levels[i].getElementsByTagName("cols")[0].childNodes[0].nodeValue,
            mines: levels[i].getElementsByTagName("mines")[0].childNodes[0].nodeValue,
            time: levels[i].getElementsByTagName("time")[0].childNodes[0].nodeValue
        }
    }
    gameInformation["levels"] = levelArray;
    document.getElementById("game-title").textContent = gameInformation["game_title"] + " - " +
        (gameInformation["levels"])[0].title;
    console.log(gameInformation);
}

function makeXSL() {
    // This XSL Should Convert level.xml to
    // appreciate DOM elements for #grid.
    var xml = '<?xml version="1.0" encoding="UTF-8"?>'
        + '<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform">'
        + '<xsl:template match="/">'
        + '<div class=\'grid\' id=\'grid\'>' +
        '<xsl:for-each select=\'grid/row\'>' +
        '<xsl:for-each select=\'./col\'>' +
        '<span></span>' +
        '</xsl:for-each>' +
        '</xsl:for-each>' +
        '</div>'
        + '</xsl:template>'
        + '</xsl:stylesheet>';
    return new DOMParser().parseFromString(xml, "text/xml");
}

function newGame() {
    var requestXML = '<request>' +
        '<rows>9</rows>' +
        '<cols>9</cols>' +
        '<mines>9</mines>' +
        '</request>';

    (gameInformation['levels'])[0].mines = 9;
    (gameInformation['levels'])[0].rows = 9;
    (gameInformation['levels'])[0].cols = 9;
    var game = getNewGame(requestXML);
    game = new DOMParser().parseFromString(game, "text/xml");

    var xsltProcessor = new XSLTProcessor();
    xsltProcessor.importStylesheet(makeXSL());
    var resultDocument = xsltProcessor.transformToFragment(game, document);
    resultDocument.id = "grid";
    document.getElementById('window').appendChild(resultDocument);
    //Adds ID for cells
    var cells = document.getElementById("grid").childNodes;
    for (var i = 0; i < cells.length; i++) {
        cells[i].id = i;
    }
    //Get position of mines
    var rows = game.getElementsByTagName("row");
    for (var i = 0; i < rows.length; i++) {
        var cols = rows[i].getElementsByTagName("col");
        for (var j = 0; j < cols.length; j++) {
            if (cols[j].getAttribute("mine") == "true") {
                mines[(i) * cols.length + j + 1] = true;
            }
        }
    }
}
