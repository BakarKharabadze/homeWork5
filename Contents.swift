import Foundation
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

// 1. დაწერეთ ფუნქცია რომელიც პარამეტრად მიიღებს String-ს და დააბრუნებს ბულიანს. ფუნქციამ უნდა შეამოწმოს მიღებული სტრინგი სარკისებურია თუ არა (სიტყვა ან წინადადება რომელიც იკითხება ერთნაირად როგორც თავიდან, ისე ბოლოდან მაგ: “ანა”, “აირევი ივერია”, “მადამ”)

func checkIsPalindrome(n: String) -> Bool {
    var word = ""
    for i in n {
        word = String(i) + word
    }
    if word == n {
        return true
    } else {
        return false
    }
}
checkIsPalindrome(n: "გოჩა")

// 2. დაწერეთ ფუნქცია რომელიც გადაცემულ რიცხვების array-ს ააკვარდატებს, დაპრინტავს და დააბრუნებს მნიშვნელობას.

func squareNumbers(in array: [Int]) -> [Int] {
    var secondArray = [Int]()
    for n in array {
        secondArray.append(n * n)
    }
    print(secondArray)
    return secondArray
}
squareNumbers(in: [2,3,4,5,6,7,8])

// 3. დაწერეთ Closure რომელიც გაფილტრავს ლუწ რიცხვებს Int-ების Array-დან

var array1 = [1,2,3,4,5,5,6,7,8,9,10]

let removeOddNumbers: ([Int]) -> [Int] = { numbers in
    var evenNumbers = [Int]()
    for i in array1 {
        if i % 2 == 0 {
            evenNumbers.append(i)
        }
    }
    return evenNumbers
}
let finalResult = removeOddNumbers(array1)

print(finalResult)

// 4. დაწერეთ ფუნქცია, რომელიც პარამეტრად იღებს Int-ების მასივს. Escaping closure-ის მეშვეობით დაბეჭდეთ მიწოდებული მასივის ჯამი 5 წამის შემდეგ. დარწმუნდით რომ closure არის escaping და გამოიძახეთ ის მას შემდეგ რაც ფუნქცია დაბრუნდება.

func arraySum(n: [Int], date: @escaping (Int) -> Void) {
    var sum = 0
    
    for i in n {
        sum = i + sum
    }
    DispatchQueue.main.asyncAfter(deadline: .now() + 5.0)  {
        date(sum)
    }
}
arraySum(n: [1,2,3]) { sum in
    print(sum)
}

// 5. შექმენით  კონტაქტების Dict სადაც key არის სახელი და value ტელეფონის ნომერი, დაამატეთ, დაბეჭდეთ/მოძებნეთ და წაშალეთ კონტაქტი

var contacts: [String: Int] = [
    "გიორგი": 112,
    "გელა": 113,
    "გვანცა": 114,
    "ავთო" : 115
]
let valueForKey = contacts["გელა"]
print(valueForKey)
contacts["გრიგოლი"] = 115
contacts["გიორგი"] = nil

// 6. დაწერეთ ფუნქცია რომელიც პარამეტრად იღებს [String: Int] ტიპის Dictionary-ს და დააბრუნებს ანბანურად დალაგებულ dictionary-ს key ელემენტების მასივს.

func alphabetSort( dictionary: [String : Int]) -> [String] {
    
    dictionary.keys.sorted()
    }

print(alphabetSort(dictionary: contacts))

// 7. შექმენით Double-ების მასივი, შეავსეთ ის თქვენთვის სასურველი რიცხვებით.  loop-ის გამოყენებით იპოვეთ ყველაზე დიდი რიცხვი ამ მასივში და დაბეჭდეთ.

var arrays: [Double] = [112.5,2.34,1.2,5.3,7.89,2.1]
var largestNumber: Double = 0

for number in arrays {
    if number > largestNumber {
        largestNumber = number
    }
}
print(largestNumber)
