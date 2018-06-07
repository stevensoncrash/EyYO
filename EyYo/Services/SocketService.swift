//
//  SocketService.swift
//  EyYo
//
//  Created by Stephen Reyes on 6/7/18.
//  Copyright © 2018 Stephen Reyes. All rights reserved.
//

import UIKit
import SocketIO

class SocketService: NSObject {
    
    static let instance = SocketService()
    
    override init() {
        super.init()
    }
    
    let manager = SocketManager(socketURL: URL(string: BASE_URL)!)
    lazy var socket:SocketIOClient = manager.defaultSocket
    
    
    func establishConnection() {
        socket.connect()
    }
    
    func closeConnection() {
        socket.disconnect()
    }
    
    func addChannel(channelName: String, channelDescription: String, completion: @escaping CompletionHandler ){
        socket.emit("newChannel", channelName, channelDescription)
        completion(true)
    }
    
    
    func getChannel(completion: @escaping CompletionHandler){
        socket.on("channelCreated") { (dataArray, ack) in
            guard let channelName = dataArray[0] as? String else {return}
            guard let channelDescr = dataArray[1] as? String else {return}
            guard let channelID = dataArray[2] as? String else {return}
            
            let newChannel = Channel(_id: channelID, name: channelName, description: channelDescr, __v: 0)
            MessageService.instance.channels.append(newChannel)
            completion(true)
            }
        }
    }
    
    

