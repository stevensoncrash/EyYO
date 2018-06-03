//
//  MessageService.swift
//  EyYo
//
//  Created by Stephen Reyes on 5/31/18.
//  Copyright © 2018 Stephen Reyes. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class MessageService {
    
    static let instance = MessageService()
    
    var channels = [Channel]()
    //finish up parsing func
    func findAllChannel(completion: @escaping CompletionHandler){
        Alamofire.request(URL_GET_CHANNELS, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: BEARER_HEADER).responseJSON { (response) in
        
               if response.result.error == nil {
               guard let data = response.data else {return}
                //swift 4 parsing (requires exact JSON data that is being called back )
                do {
                    self.channels = try JSONDecoder().decode([Channel].self, from: data)
                } catch let error {
                    debugPrint(error as Any)
                }
                print(self.channels)
                
    }
   }
  }
 }
