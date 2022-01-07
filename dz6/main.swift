import Foundation


func random(from: Int, to: Int) -> Int { return Int.random(in: from..<to) }
func win() {
    from = 1
    to = 100
    pop = 0
    number = 0
    random = 0
    type = ""
}

var from = 1
var to = 100
var pop = 0
var number = 0
var random = 0
var type = ""

while true {
    if pop == 0 {
        print("Выберите число от 1 до 100:")
        let string = readLine()
        number = (string! as NSString).integerValue
        if number >= from && number <= to {
            random = random(from: from, to: to)
            print("Ну,поехали. Я попробую найти твое секретное число\nТвое секретное число Больше, Меньше или Ровно \(random). Напиши 'less', 'more' или 'yes' если я нашел")
            type = readLine() ?? ""
            pop += 1
        } else { print("Ты ввел неправильные данные!") }
    } else if pop != 0 && (type == "less" || type == "more" || type == "yes") {
        if type == "yes" {
            if random == number {
                print("Поздравляю себя))), Я нашел твое 'секретное число' за \(pop) попыток! Давай сиграем еще\n")
                win()
                break
            } else {
                print("ERROR!!!")
                break
            }
        } else if type == "more" { from = random } else if type == "less" { to = random }
        if type == "less" || type == "more" || type == "yes" { random = random(from: from, to: to) }
        type = ""
        pop += 1
    } else if pop != 0 {
        print("Твое секретное число Больше, Меньше или Ровно \(random). Напиши 'less', 'more' или 'yes' если я нашел")
        type = readLine() ?? ""
    } else { break }
}
