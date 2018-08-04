//: Playground - noun: a place where people can play


/*
 TaskType이라는 이너머레이션에 Associated Value를 설정
 Task 구조체 안에 선언한 doBasicTask( )라는 메소드
 Task의 타입 값에 따라 switch 문을 통해 각각 다른 작업을 수행
 .Call 이면 전화 번호를 number 상수로
 .Report이면 receiver와 time이라는 값
 .Meet과 .Support의 경우 적당한 상수값
 */

import Cocoa

struct Task{
    var title:String
    var time:Int?
    
    var owner:Employee
    //var participant:Employee? -> 이게 필요없어짐
    
    var type:TaskType
    
    enum TaskType {
        case Call(number:String)
        case Report(to:Employee, when:String)
        case Meet(with:Employee, location:String)
        case Support(who:Employee, duration:Int)
        
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
    
    init (type:TaskType, owner:Employee) {
        self.type = type
        self.title = type.typeTitle
        self.owner = owner
        self.time = nil
        //self.participant = nil //-> 여기 필요없어짐
    }
    
    func doBasicTask() ->String {
        let taskDescription:String
        switch type {
        case .Call(let number):
            taskDescription = "\(owner.name) make a call to \(number)"
        case .Report(let receiver, let time) :
            taskDescription("\(owner.name) report to \(receiver.name) at \(time)"
        case .Meet(let partipipant, let location) :
            taskDescription = "\(owner.name) meet \(participant.name) at \(location)"
        case .Support(let taskOwner, let duration) :
            taskDescription = "\(owner.name) support \(taskOwner.name) for \(duration) days"
        default:
            taskDescription = "Need more information for task."
        }
        return taskDescription
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
            var callTask = Task(type: .Call(callTo), owner: self)
        }
        return nil
    }
}
    
var todayTask:[Task] = []
    
let me:Employee = Employee(name: "Alex", phone: "010-1234-5678")
    
let toby = Employee(name: "Toby")
toby.phoneNumber = "011-5678-1234"
    
me.boss = toby
me.report()
    
var reportTask = Task (type: .Report(to:toby when:"Afternoon"), owner: me)
todayTask += [reportTask]
if let callTask = me.callTaskBoss() {
    todayTask += [callTask]
    callTask.doBasicTask()
}

reportTask.doBasicTask()
