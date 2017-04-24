/**
 * Created by mma on 12/27/16.
 */
var my_domain = new String('http://localhost/ajax.php?ajax=http://api.ie.ce-it.ir/F95/' );
function numberToPersian(number) {
    var s = '' ;
    var x = new String(number)
    var str = x.split('');
    for( var i = 0 ; i < str.length ; i++){
        var digit = str[i];
        //console.log(digit)
        switch (digit){
            case '0' :
                s += '۰'
                break
            case '1' :
                s += '۱'
                break
            case '2' :
                s += '۲'
                break
            case '3' :
                s += '۳'
                break
            case '4' :
                s += '۴'
                break
            case '5' :
                s += '۵'
                break
            case '6' :
                s += '۶'
                break
            case '7' :
                s += '۷'
                break
            case '8' :
                s += '۸'
                break
            case '9' :
                s += '۹'
                break
            default :
                s += digit
        }
    }

    return s ;
}


function getParameterByName(name, url) {
    if (!url) {
        url = window.location.href;
    }
    name = name.replace(/[\[\]]/g, "\\$&");
    var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"),
        results = regex.exec(url);
    if (!results) return null;
    if (!results[2]) return '';
    return decodeURIComponent(results[2].replace(/\+/g, " "));
}