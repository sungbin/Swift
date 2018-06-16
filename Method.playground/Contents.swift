//: Playground - noun: a place where people can play

import Cocoa

struct Task{
    var title:String
    var time:Int?
    
    var owner:Employee
    var participant:Employee?
    
    var type:TaskType
    
    enum TaskType {
        case Call
        case Report
        case Meet
        case Support
        
        var typeTitle:String {
            get {
                let titleString:String
                switch self {
                case .Call:
                    titleString = "Call"
                case .Report:
                    titleString = "Report"
                case .Meet:
                    titleString = "Meet"
                case .Support:
                    titleString = "Support"
                }
                return titleString
            }
        }
    }
}

class Employee {
    var name:String?
    var phoneNumber:String?
    var boss:Employee?
    
    init (name:String) {
        self.name = name
    }
    
    convenience init (name:String, phone:String) {
        self.init(name:name)
        self.phoneNumber = phone
    }
    
    func report() {
        if let myBoss = boss {
            print("\(self.name) reported to \(myBoss.name)")
        } else {
            print("\(name) don't have boss")
        }
    }
    
    func callTaskToBoss() -> Task? {
        if let myBoss = boss, callTo = myBoss.phoneNumber {
            var callTask = Task(type: .Call, owner: self)
        }
        return nil
    }
    
    var todayTask:[Task] = []
    
    let me:Employee = Employee(name: "Alex", phone: "010-1234-5678")
    
    let toby = Employee(name: "Toby")
    toby.phoneNumber = "011-5678-1234"
    
    me.boss = toby
    me.report()
    
    var reportTask = Task (type: .Report, owner: me)
    todayTask += [reportTask]
    if let callTask = me.callTaskBoss() {
        todayTask += [callTask]
    }
}
