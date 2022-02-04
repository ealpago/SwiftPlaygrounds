let numbers = [0,1,2,3,4,5]

func firstNumber(_ numbers:[Int]) -> Int{
    return numbers[0]
}

let typeInt = firstNumber(numbers)
print(typeInt)


//Different type

let letters = ["a","b","c"]

func firstLetter(_ numbers:[String]) -> String{
    return letters[0]
}

let typeString = firstLetter(letters)
print(typeString)

print("\n--\n")
//But doing same thing
//Generics solve this problem.

func firstGenerics<T>(_ list:[T]) -> T{
    return list[0]
}

let firstN = firstGenerics(numbers)
let firstL = firstGenerics(letters)
print(firstN)
print(firstL)

