//
//  ViewController.swift
//  11.2coreData
//
//  Created by student on 2018/12/8.
//  Copyright © 2018年 zhulonghao. All rights reserved.
//

import UIKit
import CoreData


class ViewController: UIViewController {

    let delegate = UIApplication.shared.delegate as! AppDelegate
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
 
    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var tfPhone: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(NSHomeDirectory())
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func add(_ sender: Any) {
        let person = Person(context: context)
        person.name = tfName.text
        person.phone = tfPhone.text
        delegate.saveContext()
    }
    @IBAction func update(_ sender: Any) {
        let fetch:NSFetchRequest<Person> = Person.fetchRequest()
        fetch.predicate = NSPredicate(format: "name=%@", tfName.text!)
        let persons = try! context.fetch(fetch)
        if let person = persons.first{
            person.name = tfName.text
            person.phone = tfPhone.text
            delegate.saveContext()
        }
    }
    @IBAction func deletes(_ sender: Any) {
        let fetch:NSFetchRequest<Person> = Person.fetchRequest()
        fetch.predicate = NSPredicate(format: "name=%@", tfName.text!)
        let persons = try! context.fetch(fetch)
        if let person = persons.first{
            context.delete(person)
            delegate.saveContext()
        }
    }
    @IBAction func query(_ sender: Any) {
        let fetch:NSFetchRequest<Person> = Person.fetchRequest()
        fetch.predicate = NSPredicate(format: "name=%@", tfName.text!)
        let persons = try! context.fetch(fetch)
        if let person = persons.first{
            tfName.text = person.name
            tfPhone.text = person.phone
            delegate.saveContext()
        }
    }
    
    @IBAction func cancel(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}

