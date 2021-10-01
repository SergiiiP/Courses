import UIKit
import Foundation

public class Animal{
    func voice(){
        print("Голос!")
    }
}

public class Dog : Animal{
    override func voice() {
        print("Гав!")
    }
}


public class Snake : Animal{
    override func voice() {
        print("Шшш!")
    }
}

public class Cat : Animal{
    private func fur(){
        print("У меня есть шерсть!")
    }
    override func voice() {
        print("Мяу!")
    }
}

// несмотря на то что порода сфинкс тоже кот, у нее должен быть ограничен доступ к функции fur класса Cat,
// потому функция fur класса Cat имеет модификатор private
public class Sphynx : Cat{
    override func voice() {
        print("Мяу!")
    }
}



let animal = Animal()
let dog = Dog()
let cat = Cat()
let snake = Snake()

var array = [animal, dog, cat, snake]

for obj in array{
    obj.voice()
}










