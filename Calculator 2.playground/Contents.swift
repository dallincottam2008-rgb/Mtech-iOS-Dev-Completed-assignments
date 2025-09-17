import Cocoa

struct Calculator {
    enum Operation {
        case add
        case subtract
        case multiply
        case divide
        case invert
        case percentage
        case nonePressed
    }
    
    enum Numbers {
        case one, two, three, four, five, six, seven, eight, nine, zero
    }
    
    
    var value1 = ""
    var value2 = ""
    var finalVal = 0.0
    var finalValue = ""
    private var invertPressed = false
    private var equalsPressed = false
    private var clearPressed = false
    var operation: Operation = .nonePressed
    
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
        var appendedInput: Int
        switch input {
        case .one:
            appendedInput = 1
        case .two:
            appendedInput = 2
        case .three:
            appendedInput = 3
        case .four:
            appendedInput = 4
        case .five:
            appendedInput = 5
        case .six:
            appendedInput = 6
        case .seven:
            appendedInput = 7
        case .eight:
            appendedInput = 8
        case .nine:
            appendedInput = 9
        case .zero:
            appendedInput = 0
        }
                
        if operation == .nonePressed  {
            value1.append(String(appendedInput))
            appendedInput = 0
        } else {
            value2.append(String(appendedInput))
        }
        
    }
    
    mutating func operationButtonPressed(_ operationPressed: Operation) {
        if equalsPressed {
            equalsPressed = false
        }
        
        if finalVal != 0.0 {
            value1 = String(finalVal)
            equalsPressed = false
            invertPressed = false
            clearPressed = false
            value2 = ""
            finalVal = 0.0
        }
        
        switch operationPressed {
        case .invert:
            if var invertedValue1 = Double(value1){
                if equalsPressed {
                    finalVal *= -1
                } else if operation == .nonePressed {
                    invertedValue1 *= -1
                    value1 = String(invertedValue1)
                } else if var invertedValue2 = Double(value2){
                    invertedValue2 *= -1
                    value2 = String(invertedValue2)
                }
                
                if equalsPressed {
                    invertPressed = true
                }
            }
            
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
                case .invert:
                    return "error"
                case .percentage:
                    finalVal += finalVal1 / finalVal2
                case .nonePressed:
                    return ""
                }
            }
        }
        let returnedVal = finalVal.formatted(.number)
        guard operation == .percentage else {
            return String(returnedVal)
        }
        let returnedValPercent = finalVal.formatted(.percent)
        return String(returnedValPercent)
        
    }
}



var cal = Calculator()

cal.inputButtonPressed(.one)
cal.operationButtonPressed(.add)
cal.clearButtonPressed()
cal.inputButtonPressed(.one)
cal.equalsButtonPressed()
cal.operationButtonPressed(.add)
cal.inputButtonPressed(.one)
print(cal.equalsButtonPressed())

