

import Foundation

class Teacher:Person{
    var title:String
    init(firstName:String,lastName:String,age:Int,value:String,title:String){
        self.title = title
        super.init(firstName:firstName,lastName:lastName,age:age,value:value)
    }
    func getTitle() -> String{
        return self.title
    }
    override var description:String{
        return "\(super.description)  title:\(title)"
    }
}
