import Cocoa

struct Calculator {
    //operators
    enum Operation {
        case add
        case subtract
        case multiply
        case divide
        case percentage
        case nonePressed
    }
    // Input finc numbers
    enum Numbers {
        case one, two, three, four, five, six, seven, eight, nine, zero, dot, negative
    }
    
    //Values
    private var value1 = ""
    private var value2 = ""
    private var finalVal = 0.0
    private var finalValue = ""
    private var invertPressed = false
    private var equalsPressed = false
    private var clearPressed = false
    private var operation: Operation = .nonePressed
    
    
    mutating func clearButtonPressed() {
        if value1 != "" && value2 == "" && clearPressed == false {
            value1 = ""
            operation = .nonePressed
        } else if value2 != "" && clearPressed == false && equalsPressed == false {
            value2 = ""
        } else {
            value1 = ""
            value2 = ""
            finalVal = 0.0
            invertPressed = false
            equalsPressed = false
            clearPressed = false
            operation = Operation.nonePressed
        }
        
    }
    
    mutating func inputButtonPressed(_ input: Numbers) {
        var appendedInput = ""
        
        switch input {
        case .one:
            appendedInput = "1"
        case .two:
            appendedInput = "2"
        case .three:
            appendedInput = "3"
        case .four:
            appendedInput = "4"
        case .five:
            appendedInput = "5"
        case .six:
            appendedInput = "6"
        case .seven:
            appendedInput = "7"
        case .eight:
            appendedInput = "8"
        case .nine:
            appendedInput = "9"
        case .zero:
            appendedInput = "0"
        case .dot:
            appendedInput = "."
        case .negative:
            appendedInput = "-"
        }
        
        if operation == .nonePressed || value1 == "" {
            value1.append(appendedInput)
            appendedInput = ""
        } else {
            value2.append(appendedInput)
        }
        
    }
    
    mutating func invertButtonPressed() {
        if finalVal != 0.0 {
            operation = .nonePressed
            equalsPressed = true
            invertPressed = false
            clearPressed = false
            value2 = ""
            value1 = ""
            value1 = finalValue
            finalValue = ""
            equalsButtonPressed()
            
        }
        
        if equalsPressed {
            finalVal *= -1
        } else if var invertedValue1 = Double(value1){
            if operation == .nonePressed {
                invertedValue1 *= -1
                value1 = String(invertedValue1)
            } else if var invertedValue2 = Double(value2){
                invertedValue2 *= -1
                value2 = String(invertedValue2)
            }
            
            if equalsPressed {
                invertPressed = true
                equalsPressed = false
            }
            
        }
        
    }
    
    mutating func operationButtonPressed(_ operationPressed: Operation) {
        if equalsPressed {
            equalsPressed = false
            value1 = finalValue
            value2 = ""
            finalVal = 0.0
        }
        
        if finalVal != 0.0 {
            operation = .nonePressed
            equalsPressed = true
            invertPressed = false
            clearPressed = false
            finalValue = ""
        }
        
        
        switch operationPressed {
        case .add:
            operation = .add
        case .subtract:
            operation = .subtract
        case .multiply:
            operation = .multiply
        case .divide:
            operation = .divide
        case .percentage:
            operation = .percentage
        case.nonePressed:
            print("error")
        }
    }
    
    mutating func equalsButtonPressed() -> String{
        equalsPressed = true
        if !invertPressed  {
            if let finalVal1 = Double(value1), let finalVal2 = Double(value2){
                switch operation {
                case .add:
                    finalVal += (finalVal1 + finalVal2)
                case .subtract:
                    finalVal += (finalVal1 - finalVal2)
                case .multiply:
                    finalVal += (finalVal1 * finalVal2)
                case .divide:
                    finalVal += (finalVal1 / finalVal2)
                case .percentage:
                    finalVal += (finalVal1 / finalVal2)
                case .nonePressed:
                    return ""
                }
            }
        }
        finalValue = String(finalVal)
        let returnedValFormated = finalVal.formatted(.number)
        guard operation == .percentage else {
            return String(returnedValFormated)
        }
        let returnedValPercent = finalVal.formatted(.percent)
        return String(returnedValPercent)
        
    }
}



var cal = Calculator()



cal.inputButtonPressed(.one)
cal.operationButtonPressed(.add)
cal.inputButtonPressed(.one)
print(cal.equalsButtonPressed())
cal.operationButtonPressed(.add)
cal.inputButtonPressed(.one)
print(cal.equalsButtonPressed())
cal.clearButtonPressed()
cal.inputButtonPressed(.one)


