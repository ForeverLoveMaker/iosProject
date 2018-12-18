

import Foundation

class Student:Person {
    var stuNo:String
    init(firstName:String,lastName:String,age:Int,value:String,stuNo:String){
        self.stuNo = stuNo
        super.init(firstName:firstName,lastName:lastName,age:age,value:value)
    }
    func getStuNo() -> String{
        return self.stuNo
    }
    override var description:String{
        return "\(super.description)  stuNo:\(stuNo)"
    }
}
