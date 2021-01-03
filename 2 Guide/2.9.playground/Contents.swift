import UIKit

let a = 3
let b = 1

if a == b {
    print("a equals to b")
} else if a < b {
    print("b exceeds a by \(b - a)")
} else if b > a {
    print ("a exceeds b by \(a - b)")
} else {
    // useless
}

let isSunny = true
var action = ""

if isSunny {
    action = "I will go for the walk"
} else {
    action = "I will sit at home"
}

action = isSunny ? "I will go for the walk" : "I will sit at home"

if 1...4 ~= b {
    print("Hello world")
}

let c = 5

if (c == 2 && a == 10 || c == 5) {
    print("Hello, coder")
} else {
    print("!!!")
}
