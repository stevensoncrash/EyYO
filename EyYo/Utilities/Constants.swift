//
//  Constants.swift
//  EyYo
//
//  Created by Stephen Reyes on 5/10/18.
//  Copyright © 2018 Stephen Reyes. All rights reserved.
//

import Foundation


typealias CompletionHandler = (_ Succces: Bool) -> ()

// URL Constants

let BASE_URL = "https://eyyoh.herokuapp.com/"
let URL_REGISTER = "\(BASE_URL)account/register"
let URL_LOGIN = "\(BASE_URL)account/login"
let URL_USER_ADD = "\(BASE_URL)user/add"


// identifiers for segues

let TO_LOGIN = "toLogin"
let TO_CREATE_ACCOUNT = "toCreateAccount"
let UNWIND = "unwindToChannel"

// User Defaults

let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"

// Headers

let HEADER = [
    "Content-Type": "application/json; charset=utf-8"
]
