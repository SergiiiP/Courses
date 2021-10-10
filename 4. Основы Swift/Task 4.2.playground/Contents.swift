import Cocoa

var hashString = "sadjhjkh2312kASDHAHKH@#@!kdasdkkl@31c1"

var upperCasedCharacters: [Character] = []
var characters: [Character] = []
var number: [Character] = []
var symbols: [Character] = []

for ch in hashString {
   if ch >= "A" && ch <= "Z"{
    upperCasedCharacters.append(ch)
   }
}


for ch in hashString {
   if ch >= "a" && ch <= "z"{
    characters.append(ch)
   }
}


for ch in hashString {
    if ch >= "0" && ch <= "9"{
    number.append(ch)
   }
}


for ch in hashString {
    if !(ch >= "0" && ch <= "9" || ch >= "a" && ch <= "z" || ch >= "A" && ch <= "Z") {
    symbols.append(ch)
   }
}


var result = [ "upperCasedCharacters": upperCasedCharacters, "characters": characters, "number": number, "symbols": symbols ]

print(result)




