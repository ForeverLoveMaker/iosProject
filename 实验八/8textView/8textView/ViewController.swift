

import UIKit

class ViewController: UIViewController,
UITableViewDataSource,UITableViewDelegate{
    
    @IBOutlet weak var myTextFiled: UITextField!
    @IBOutlet weak var lastNameTF: UITextField!
    @IBOutlet weak var sexTF: UITextField!
    @IBOutlet weak var ageTF: UITextField!
    @IBOutlet weak var stuNoTF: UITextField!
    @IBOutlet weak var titleTF: UITextField!
    
    
    @IBOutlet weak var tabView: UITableView!
    @IBOutlet weak var showLabel: UILabel!
    
    var perArray = [Person]()

    @IBAction func addRow(_ sender: Any) {
        let fName = myTextFiled.text!
        let lName = lastNameTF.text!
        let sex = sexTF.text!
        let stuNo = stuNoTF.text
        let title = titleTF.text
        if(fName != "" && lName != "" && sex != "" && ageTF.text != "" && stuNo != ""){
            perArray.append(Student(firstName:fName,lastName:lName,age:Int(ageTF.text!)!,value:sex,stuNo:stuNo!))
            tabView.reloadData()
            stuNoTF.resignFirstResponder()
        }else if(fName != "" && lName != "" && sex != "" && ageTF.text != "" && title != ""){
            perArray.append(Teacher(firstName:fName,lastName:lName,age:Int(ageTF.text!)!,value:sex,title:title!))
            tabView.reloadData()
            titleTF.resignFirstResponder()
            
        }
    }
    
    @IBAction func editRow(_ sender: Any) {
        let row = tabView.indexPathForSelectedRow!.row
        let fName = myTextFiled.text!
        let lName = lastNameTF.text!
        let sex = sexTF.text!
        let stuNo = stuNoTF.text
        let title = titleTF.text
        
        if(fName != ""){
            perArray[row].firstName = fName
        }
        if(lName != ""){
            perArray[row].lastName = lName
        }
        if(sex != ""){
            perArray[row].value = sex
        }
        if(ageTF.text != ""){
            perArray[row].age = Int(ageTF.text!)!
        }
        if(perArray[row] is Student){
            let stu = perArray[row] as! Student
            stu.stuNo = stuNo!
            tabView.reloadData()
        }else if(perArray[row] is Teacher){
            let tea = perArray[row] as! Teacher
            tea.title = title!
            tabView.reloadData()
        }
    }
    
    @IBAction func deleteRow(_ sender: Any) {
        perArray.remove(at: tabView.indexPathForSelectedRow!.row)
        //tabView.deleteRows(at: [tabView.indexPathForSelectedRow!], with: .fade)
        tabView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return perArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "StuCell") as! StudentTableViewCell
        let cell1 = tableView.dequeueReusableCell(withIdentifier: "TeaCell") as! TeacherTableViewCell
         let person = perArray[indexPath.row]
        if person is Student {
            let stu = person as! Student
            cell.name.text = "姓名：" + stu.fullName()
            cell.name.sizeToFit()
            cell.age.text = "年龄：\(stu.age)"
            cell.age.sizeToFit()
            cell.gender.text = "性别：\(stu.value)"
            cell.gender.sizeToFit()
            cell.grade.text = "学号：\(stu.stuNo)"
            cell.grade.sizeToFit()
            cell.pic.image = UIImage(named: "233")
            return cell
        }else{
            let tea = person as! Teacher
            cell1.name.text = "姓名：" + tea.fullName()
            cell1.name.sizeToFit()
            cell1.age.text = "年龄：\(tea.age)"
            cell1.age.sizeToFit()
            cell1.sex.text = "性别：\(tea.value)"
            cell1.sex.sizeToFit()
            cell1.title.text = "课目：\(tea.title)"
            cell1.title.sizeToFit()
            cell1.pic.image = UIImage(named: "233")
            return cell1
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        perArray.append(Student(firstName:"王",lastName:"林",age:22,value:"nan",stuNo:"14100951"))
        
        perArray.append(Student(firstName:"郑",lastName:"伟",age:21,value:"nan",stuNo:"14110921"))
        
        perArray.append(Student(firstName:"孙",lastName:"美",age:24,value:"nv",stuNo:"14110823"))
        
        perArray.append(Teacher(firstName:"张",lastName:"军",age:41,value:"nv",title:"语文"))
        
        perArray.append(Teacher(firstName:"冯",lastName:"浩",age:40,value:"nan",title:"数学"))
        
        perArray.append(Teacher(firstName:"周",lastName:"蓉",age:44,value:"nv",title:"英语"))
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        showLabel.text = "You choose:\(perArray[indexPath.row].fullName())"
    }
 
    

}

