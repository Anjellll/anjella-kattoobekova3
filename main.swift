// №1
//Разобрать числа от 1 до 1000
//Выписать через запятую все числа, кратные 2, 3, 4, 5 (для каждого числа разные переменные)


var numTwo = ""
var numThree = ""
var numFour  = ""
var numFive = ""

func numbers(){
    for item in 1...1000 {
        if (item % 2 == 0){
            numTwo += "Числа кратные 2 -\(item),"
            print(numTwo)
        } else if (item % 3 == 0){
            numThree += "Числа кратные 3 -\(item),"
            print(numThree)
        }else if (item % 4 == 0){
            numFour += "Числа кратные 4 -\(item),"
            print(numFour)
        }else if (item % 5 == 0){
            numFive += "Числа кратные 5 -\(item),"
            print(numFive)
        }
    }
}

print(numbers())


//№2.
//Создать программу используя известные вам методы
//Рассчитать сумму кредита. Изначально сумма - 1000000 сом
//Процентная ставка в год - 24%
//С каждым годом % снижается на 1
//Рассчитать за какой срок человек сможет выплатить кредит, если на момент получения кредита его зарплата - 20000 сом и каждые 2 месяца она увеличивается на 2000


func solarisInCredit() {
    var credit: Float = 1_000_000
    var salary: Float = 20_000
    var percent: Float = 0.24
    var months: Int = 0

    while credit > 0 {
        months += 1
        if months % 2 == 0 {
            salary += 2000
      }
        if months % 12 == 0 {
            credit += credit * percent
            percent -= 0.01
        }
        credit -= salary
    }
    print(months)
}

solarisInCredit()



//Доп

var words = ["Луна", "Цветок", "День", "Счастье", "Ёлка", "Сын", "Информация","Цикл", "Яблоко", "Один", "Семь", "Английский", "Браслет", "Котенок", "Программист", "Белка", "Лиса", "Йогурт", "Лучь", "Деньги"]

for word in words {
    print("В слове \(word) \(word.count) букв(ы)")

}

