//
//  NetworkServiceFactory.swift
//  MockingDemo
//
//  Created by Bikram Aryal on 19/05/2022.
//

import Foundation


class NetworkServiceFactory {
    static func create() -> NetworkService {
        let environment = ProcessInfo.processInfo.environment["ENV"]
        
        
        if let environment = environment {
            if(environment == "TEST") {
                return MockWebService()
            } else {
                return Webservice()
            }
        } else {
            return Webservice()
        }
    }
}
