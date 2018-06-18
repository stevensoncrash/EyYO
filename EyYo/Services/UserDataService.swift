//
//  UserDataService.swift
//  EyYo
//
//  Created by Stephen Reyes on 5/18/18.
//  Copyright © 2018 Stephen Reyes. All rights reserved.
//

import Foundation

class UserDataService {
    
    static let instance = UserDataService()
    
    public private(set) var id =  ""
    public private(set) var avatarName =  ""
    public private(set) var avatarColor =  ""
    public private(set) var email =  ""
    public private(set) var name =  ""
    
    
    func setUserData(id:String, avatarName: String, avatarColor: String, email: String, name: String) {
        self.id = id
        self.avatarName = avatarName
        self.avatarColor = avatarColor
        self.email = email
        self.name = name
    }
        
        func setAvatarName(avatarName: String) {
            self.avatarName = avatarName
        
        }
    
    func returnUIColor(components: String) -> UIColor {
        let scanner = Scanner(string: components)
        let skipped = CharacterSet(charactersIn: "[], ")
        let comma = CharacterSet(charactersIn: ",")
        scanner.charactersToBeSkipped = skipped
        
        var r, g, b, a : NSString?
        
        scanner.scanUpToCharacters(from: comma, into: &r)
        scanner.scanUpToCharacters(from: comma, into: &g)
        scanner.scanUpToCharacters(from: comma, into: &b)
        scanner.scanUpToCharacters(from: comma, into: &a)
        
        let defualtColor = UIColor.lightGray
        
        guard let rUnwrapped = r  else {
            return defualtColor
        }
        guard let gUnwrapped = g  else {
            return defualtColor
        }
        guard let bUnwrapped = b  else {
            return defualtColor
        }
        guard let aUnwrapped = a  else {
            return defualtColor
        }
        // conversion of unwrapped strings to a double, then conversions of that double into a CGFloat
        let rFloat = CGFloat(rUnwrapped.doubleValue)
        let gFloat = CGFloat(gUnwrapped.doubleValue)
        let bFloat = CGFloat(bUnwrapped.doubleValue)
        let aFloat = CGFloat(aUnwrapped.doubleValue)
        
        let newUIColor = UIColor(red: rFloat, green: gFloat, blue: bFloat, alpha: aFloat)
        
        return newUIColor
    }
    
    func logoutUser() {
        id = ""
        avatarName = ""
        avatarColor = ""
        email = ""
        name = ""
        AuthService.instance.isLoggedIn = false
        AuthService.instance.email = ""
        AuthService.instance.authToken = ""
        MessageService.instance.clearChannels()
        MessageService.instance.clearmessages()
    }
   
    
    
}
