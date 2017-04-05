//
//  CloudNetworkService.swift
//  StackReview
//
//  Created by Artem Lyksa on 4/5/17.
//  Copyright © 2017 Razeware. All rights reserved.
//

import Foundation

public protocol CloudNetworkService {
    
    func login(userName: String, password: String,
               success: ()->(), failure: (Error)->())
    
    func loadPancakeHouses(
        success: @escaping ([PancakeHouse])->(),
        failure: @escaping (CloudNetworkError)->())
}
