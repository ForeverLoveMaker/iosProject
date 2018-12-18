

import Foundation

class Person:CustomStringConvertible{
    var firstName:String
    var lastName:String
    var age:Int
    var value:String
    enum gender:String{
        case male = "nan"
        case female = "nv"
    };
    init(firstName:String,lastName:String,age:Int){
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
        self.value = "nan"
    }
    init(firstName:String,lastName:String,age:Int,value:String){
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
        if value == gender.male.rawValue{
            self.value = value
        }
        else if  value == gender.female.rawValue{
            self.value = value
        }
        else{
            self.value = "错误"
            print("性别错误！！")
        }
    }
    var description:String{
        return "fullName:\(self.fullName())  age:\(age)  gender:\(value)"
    }
    func fullName() -> String{
        return firstName+lastName
    }
    
    static func ==(person:Person,person1:Person) -> Bool{
        return (person1.fullName() == person.fullName() && person1.age == person.age && person1.value == person.value )
    }
    static func !=(person:Person,person1:Person) -> Bool{
        return (person1.fullName() != person.fullName() || person1.age != person.age || person1.value != person.value )
    }
}
