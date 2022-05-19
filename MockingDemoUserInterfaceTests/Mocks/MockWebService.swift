//
//  MockWebService.swift
//  MockingDemoUserInterfaceTests
//
//  Created by Bikram Aryal on 19/05/2022.
//

import Foundation

class MockWebService: NetworkService {
    func login(username: String, password: String, completion: @escaping (Result<Void, NetworkError>) -> Void) {
        
        if(username == "JohnDoe" && password == "Password") {
        
        completion(.success(()))
        } else {
            completion(.failure(.notAuthenticated))
        }
    }
    
    
}
