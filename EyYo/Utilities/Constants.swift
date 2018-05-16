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

let BASE_URL = "https://eyyoeyyo.herokuapp.com/"
let URL_REGISTER = "\(BASE_URL)account/register"


// identifiers for segues

let TO_LOGIN = "toLogin"
let TO_CREATE_ACCOUNT = "toCreateAccount"
let UNWIND = "unwindToChannel"

// User Defaults

let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"
