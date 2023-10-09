//
//  UserModel.swift
//  task(9-12)
//
//  Created by Жека on 09/10/2023.
//

import UIKit

struct User {
    var firstName: String
    var lastName: String
    var age: Int
    var sex: String
    var description: String
}

class UserGenerator {
    
    static func generateFakeUsers(count: Int) -> [User] {
        let firstNames = ["Andrey", "Dmitriy", "Wojceh", "Natalia", "Alexander"]
        let lastNames = ["Drake", "Future", "June", "Larry", "Balance"]
        let sex = ["m", "w"]
        let descriptions = [
            "Talented programmer with extensive experience in software development.",
            "A traveler whose adventures are captured in amazing photographs. He loves to explore remote corners of the world.",
            "Successful entrepreneur who founded his own technology startup.",
            "Mathematics teacher."
        ]
        
        var users: [User] = []
        
        for _ in 1...count {
            let randomFirstName = firstNames.randomElement() ?? ""
            let randomLastName = lastNames.randomElement() ?? ""
            let randomAge = Int.random(in: 16...99)
            let randomSex = sex.randomElement() ?? ""
            let randomDescription = descriptions.randomElement() ?? ""
            
            let user = User(
                firstName: randomFirstName,
                lastName: randomLastName,
                age: randomAge,
                sex: randomSex,
                description: randomDescription
            )
            
            users.append(user)
        }
        
        return users
    }
}
