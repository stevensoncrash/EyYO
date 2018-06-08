//
//  Channel.swift
//  EyYo
//
//  Created by Stephen Reyes on 5/31/18.
//  Copyright © 2018 Stephen Reyes. All rights reserved.
//

import Foundation

struct Channel : Decodable {
    public private(set) var channelTitle: String!
    public private(set) var channelDescription: String!
    public private(set) var id: String!
}
