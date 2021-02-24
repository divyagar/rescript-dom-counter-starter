@val external document: {..} = "document"
@val external window: {..} = "window"
window["count"] = 0

let plusButton = document["getElementById"]("plus-one")
let minusButton = document["getElementById"]("minus-one")

let countElement = document["getElementById"]("count")

let renderText = n => {
  countElement["innerText"] = `Count is ${n}`
}

let changeCountElement = n => {
  window["count"] = window["count"] + n
  if window["count"] > 0 {
    renderText("50")
  } else if window["count"] < 0 {
    renderText("-50")
  } else {
    renderText("0")
  }
}

let plusOne = () => changeCountElement(1)
let minusOne = () => changeCountElement(-1)

plusButton["addEventListener"]("click", plusOne)
minusButton["addEventListener"]("click", minusOne)
