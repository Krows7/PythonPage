let REMOVE = "Убрать из сравнения"
let ADD = "Добавить в сравнение"

window.onload = function() {
    for(let panel of document.querySelectorAll('.compare-item')) {
        if(getCookie("compare").split(',').includes(panel.dataset.item)) {
            let button = panel.querySelector('button > span')
            button.innerText = REMOVE
            panel.querySelector('button > i').style.color = 'red'
        }
    }
    document.querySelector('#scroll').style.width = document.querySelector("#slider").scrollWidth + 'px'
}

function convert(value, nonCheck) {
    return nonCheck ? value : parseFloat(value)
}

function argMin(array, nonCheck) {
    let result = [0]
    let mx = convert(array[0], nonCheck)
    for(let i = 1; i < array.length; i++) {
        if(convert(array[i], nonCheck) < mx) {
            result = []
            mx = convert(array[i], nonCheck)
            result.push(i)
        } else if(convert(array[i], nonCheck) == mx) result.push(i)
    }
    return result
}

function argMax(array, nonCheck) {
    let result = [0]
    let mx = convert(array[0], nonCheck)
    for(let i = 1; i < array.length; i++) {
        if(convert(array[i], nonCheck) > mx) {
            result = []
            mx = convert(array[i], nonCheck)
            result.push(i)
        } else if(convert(array[i], nonCheck) == mx) result.push(i)
    }
    return result
}

function markBest(item, color, nonCheck, isMin) {
    let v = item.parentElement.nextElementSibling.querySelectorAll('*')
    if(v.length) {
        for(let i of isMin ? argMin(Array.from(v).map(x => x.innerText), nonCheck) : argMax(Array.from(v).map(x => x.innerText), nonCheck)) {
        v[i].style.background = color ? '' : 'darkorange'
        }
    }
}

function markAll(item, nonCheck, isMin) {
    markBest(item, true, nonCheck, isMin)
}

function move(width) {
    let el = document.querySelector("#slider")
    el.scrollTo({
    left: el.scrollLeft + width,
    behavior: "smooth"
});
}

function switchCart(id, panel) {
    let i = panel.querySelector('i')
    panel = panel.querySelector('span')
    let add = panel.innerText == ADD
	if(add) {
	    i.style.color = 'red'
	    panel.innerText = REMOVE
	} else {
	    i.style.color = 'black'
	    panel.innerText = ADD
	}
	if(add) addToCompare(id)
	else removeFromCompare(id)
}

function addToCompare(id) {
    addToCookieList("compare", id)
}

function removeFromCompare(id) {
    removeFromCookieList("compare", id)
}

function addToCookieList(key, value) {
    let v = getCookie(key)
    if(v) updateCookie(key, v + ',' + value)
    else updateCookie(key, value)
}

function removeFromCookieList(key, value) {
    let v = getCookie(key).split(',')
    let r = ''
    for(let el of v) if(el != value) r += ',' + el
    updateCookie(key, r.substring(1))
}

function updateCookie(key, value) {
    document.cookie = key + "=" + value + ';expires=Sun, 1 Jan 2023 00:00:00 UTC; path=/';
}

function getCookie(key) {
    var match = document.cookie.match(new RegExp('(^| )' + key + '=([^;]+)'));
    if(match) return match[2];
}

function checkCookie(id, panel) {
    if(getCookie("compare").split(',').includes(id)) panel.innerText = 'Убрать из сравнения'
    else panel.innerText = 'Добавить в сравнение'
}