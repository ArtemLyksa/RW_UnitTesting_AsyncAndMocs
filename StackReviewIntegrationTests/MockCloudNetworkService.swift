//
//  MockCloudNetworkService.swift
//  StackReview
//
//  Created by Artem Lyksa on 4/5/17.
//  Copyright © 2017 Razeware. All rights reserved.
//

import Foundation
@testable import StackReview

public class MockCloudNetworkService: CloudNetworkService {
    
    public lazy var pancakeHouses: [PancakeHouse] = {
        let bundle = Bundle(for: type(of: self))
        let path = bundle.path(forResource: "test_pancake_houses",
                               ofType: "plist")!
        let array = NSArray(contentsOfFile: path)
        return PancakeHouse.from(array as! [[String : Any]])
    }()
    
    public func login(userName: String, password: String,
                      success: ()->(),
                      failure: (Error)->()) {
        success()
    }
    
    public func loadPancakeHouses(
        success: @escaping ([PancakeHouse])->(),
        failure: @escaping (CloudNetworkError)->()) {
        success(pancakeHouses)
    } }
