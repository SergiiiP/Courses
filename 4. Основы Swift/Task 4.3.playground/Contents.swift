import Foundation

calculate(string:"27/3")
calculate(string:"2*2")

func calculate(string:String){
    var arr = Array(string)
    var indexOfDivider = arr.firstIndex(of: "/")
    var indexOfPlus = arr.firstIndex(of:"+")
    var indexOfMinus = arr.firstIndex(of:"-")
    var indexOfMultiplier = arr.firstIndex(of:"*")
    if arr.contains("/"){
        var firstNumberStringArray = arr[arr.startIndex...(indexOfDivider!-1)]
        var firstNumber = Double(firstNumberStringArray.map(String.init).joined())!
        var secondNumberStringArray = arr[(indexOfDivider!+1)...arr.count-1]
        var secondNumber = Double(secondNumberStringArray.map(String.init).joined())!
        var result: Double = Double(firstNumber/secondNumber)
        print(result)
    } else if arr.contains("*") {
        var firstNumberStringArray = arr[arr.startIndex...(indexOfMultiplier!-1)]
        var firstNumber = Int(firstNumberStringArray.map(String.init).joined())!
        var secondNumberStringArray = arr[(indexOfMultiplier!+1)...arr.count-1]
        var secondNumber = Int(secondNumberStringArray.map(String.init).joined())!
        var result: Double = Double(firstNumber*secondNumber)
        print(result)
    }
    else if arr.contains("+") {
        var firstNumberStringArray = arr[arr.startIndex...(indexOfPlus!-1)]
        var firstNumber = Int(firstNumberStringArray.map(String.init).joined())!
        var secondNumberStringArray = arr[(indexOfPlus!+1)...arr.count-1]
        var secondNumber = Int(secondNumberStringArray.map(String.init).joined())!
        var result: Double = Double(firstNumber+secondNumber)
        print(result)
    }
    else if arr.contains("-") {
        var firstNumberStringArray = arr[arr.startIndex...(indexOfMinus!-1)]
        var firstNumber = Int(firstNumberStringArray.map(String.init).joined())!
        var secondNumberStringArray = arr[(indexOfMinus!+1)...arr.count-1]
        var secondNumber = Int(secondNumberStringArray.map(String.init).joined())!
        var result: Double = Double(firstNumber-secondNumber)
        print(result)
    }
    else {
        print("You didnt enter any math symbol")
    }
    
}


