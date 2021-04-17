import Foundation

public enum Situation {
    case success, failed, none
}

public func verifyInputConstant(input: String) -> Situation {
    var result: Situation
    
    if(input == "let myConstant") {
        result = Situation.success
    } else {
        result = Situation.failed
    }
    return result
}

public func verifyInputVariable(input: String) -> Situation {
    var result: Situation
    
    if(input == "let myVariable") {
        result = Situation.success
    } else {
        result = Situation.failed
    }
    return result
}

public func verifyInputTypedVariable(input: String) -> Situation {
    var result: Situation
    
    if(input == "var myVariable: String") {
        result = Situation.success
    } else {
        result = Situation.failed
    }
    return result
}

public func verifyInputComment(input: String) -> Situation {
    var result: Situation
    
    if(input == "// This is a comment" || input == "/* This is also a comment\nbut is written over multiple lines. */") {
        result = Situation.success
    } else {
        result = Situation.failed
    }
    return result
}

public func verifyInputTuple(input: String) -> Situation {
    var result: Situation
    
    if(input == "let http404Error = (404, 'Not Found')" || input == "let http404Error=(404,'Not Found')" || input == "let http404Error =(404, 'Not Found')" || input == "let http404Error = (404, Not Found)") {
        result = Situation.success
    } else {
        result = Situation.failed
    }
    return result
}
