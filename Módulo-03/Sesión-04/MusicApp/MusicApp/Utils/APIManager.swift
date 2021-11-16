//
//  APIManager.swift
//  MusicApp
//
//  Created by Omar Guzmán on 05/10/21.
//  Copyright © 2021 Bedu. All rights reserved.
//

import Foundation
import SystemConfiguration

class APIManager {
    let baseURL = "https://jsonplaceholder.typicode.com/"
    
    static let shared = APIManager()
    static let getMusicEndpoint = "songs/"
    
    func getMusic(completion: @escaping ([Song]?, Error?) -> ()){
        let url : String = baseURL + APIManager.getMusicEndpoint
        let request: NSMutableURLRequest = NSMutableURLRequest(url: NSURL(string: url)! as URL)
        request.httpMethod = "GET"
        let session = URLSession.shared
        let task = session.dataTask(with: request as URLRequest, completionHandler: {data, response, error -> Void in
            if(error != nil){
                completion(nil, error!)
            } else{
                if let data = data {
                    let result = try? JSONDecoder().decode([Song].self, from: data)
                    completion(result, nil)
                }
            }
        })
        task.resume()
    }
    
    func checkConnectivity() -> Bool {
        var zeroAddress = sockaddr_in(sin_len: 0,
                                      sin_family: 0,
                                      sin_port: 0,
                                      sin_addr: in_addr(s_addr: 0),
                                      sin_zero: (0, 0, 0, 0, 0, 0, 0, 0))
        
        zeroAddress.sin_len = UInt8(MemoryLayout.size(ofValue: zeroAddress))
        zeroAddress.sin_family = sa_family_t(AF_INET)
        
        let defaultRouteReachability = withUnsafePointer(to: &zeroAddress) {
            $0.withMemoryRebound(to: sockaddr.self, capacity: 1) {zeroSockAddress in
                SCNetworkReachabilityCreateWithAddress(nil, zeroSockAddress)
            }
        }
        
        var flags: SCNetworkReachabilityFlags = SCNetworkReachabilityFlags(rawValue: 0)
        if SCNetworkReachabilityGetFlags(defaultRouteReachability!, &flags) == false {
            return false
        }
        
        let isReachable = (flags.rawValue & UInt32(kSCNetworkFlagsReachable)) != 0
        let needsConnection = (flags.rawValue & UInt32(kSCNetworkFlagsConnectionRequired)) != 0
        let connectedToInternet = (isReachable && !needsConnection)
        
        return connectedToInternet
    }
}
