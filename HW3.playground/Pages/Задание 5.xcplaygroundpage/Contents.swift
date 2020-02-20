var n = 20
let count = 100
var resultArray = [Int]() // инициализируем пустой массив для заполнения простыми числами





repeat {
    var arrayOfNumber = [Int](2...n) // инициализируем массив и заполняем его числами от 2 до n
    var simpleNumber = 0 // переменная в которую кладем текущее простое число
    resultArray = [Int]()
   
    
    for j in 0 ..< arrayOfNumber.count { //проходим по массиву чисел
        simpleNumber = arrayOfNumber[j]  //присваиваем текущий элемент массива переменной
        if simpleNumber != 0 { //если переменная не равна нулю,
            resultArray.append(simpleNumber) // кладем в массив с результатами

            for i in 1 ..< arrayOfNumber.count { //проходим по массиву параллельно и если 
                if arrayOfNumber[i] % simpleNumber == 0 { // при делении числа на каждый элемент массива в
                arrayOfNumber[i] = 0 // остатке ноль, то обнуляем этот элемент, так как он составной
                }
            }
        }
            while resultArray.count > count {
                resultArray.removeLast()
            }
        
        
    }
     n *= 2
} while (resultArray.count != count)
print(resultArray)
print(resultArray.count)
