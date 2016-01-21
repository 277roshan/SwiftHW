//: Playground - noun: a place where people can play

import UIKit

class User {
    var name:String = ""
    var age:Int = 0
    var address:String=""
    
    init (name:String,age:Int, address:String){
        self.name = name
        self.age = age
        self.address = address
    }
    
    init(){
        self.name=""
        self.age=0
        self.address=""
    }
    
    func get_name() ->String{
        return (name)
        
    }
    
    func get_address() ->String{
        return(address)
    }
    
    func get_age() ->Int{
        return(age)
    }
}


var aaron = User(name:"Aaron Saunders",age:100,address:"DC")
var roshan = User(name:"Roshan Thapaliya",age:50,address:"Kathmandu")
var john = User(name:"John Cena",age:35,address:"Arizona")
var liv = User(name:"Liv Tyler",age:22,address:"New York")
var eritrea = User(name:"Eritrea Smith",age:21,address:"Bulgaria")
//Array

var users:[User] = [User]()
users.append(aaron)
users.append(roshan)
users.append(john)
users.append(liv)
users.append(eritrea)


//Finding highest age user and lowest age 
//Calculating average age
var tot_items:Int = users.count
var tot_age:Int = 0
var highest_age:Int=0
var youngest_age:Int = 1000
var highest_age_user = User()
var youngest_age_user = User()


for i in users{
    var current_age:Int = i.age
    if current_age>highest_age{
        highest_age_user = i
        highest_age = current_age
    }
    if current_age<youngest_age{
        youngest_age_user = i
        youngest_age = current_age
    }
    
    tot_age += i.age

}

//printing
print("Highest age user is \(highest_age_user.get_name()) from \(highest_age_user.get_address()) at \(highest_age_user.get_age()) years old.")

print("Lowest age user is \(youngest_age_user.get_name()) from \(youngest_age_user.get_address()) at \(youngest_age_user.get_age()) years old.")

print("Average age is \(Float(tot_age)/Float(tot_items))")

