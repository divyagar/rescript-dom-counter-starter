@val external document: {..} = "document"
@val external window: {..} = "window"
// @val external count: int = 0
window["count"] = 0

let plusButton = document["getElementById"]("plus-one")
let minusButton = document["getElementById"]("minus-one")

let countElement = document["getElementById"]("count")
let count = ref(0)

let changeClassNames = () => {
  if count.contents > 0 {
    "count-positive"
  } else if count.contents < 0 {
    "count-negative"
  } else {
    "count-zero"
  }
}

let changeCountElement = n => {
  count := count.contents + n
  countElement["innerText"] = `Count is ${Belt.Int.toString(count.contents)}`
  countElement["classList"] = `count ${changeClassNames()}`
}

let plusOne = () => changeCountElement(1)
let minusOne = () => changeCountElement(-1)

plusButton["addEventListener"]("click", plusOne)
minusButton["addEventListener"]("click", minusOne)
