//
//  PancakeHouseCollectionIntegrationTests.swift
//  StackReview
//
//  Created by Artem Lyksa on 4/5/17.
//  Copyright © 2017 Razeware. All rights reserved.
//

import XCTest

@testable import StackReview

class PancakeHouseCollectionIntegrationTests: XCTestCase {
    
    var collection: PancakeHouseCollection!
    
    override func setUp() {
        super.setUp()
        collection = PancakeHouseCollection()
    }
    
    func testLoadPancakesFromCloudFails() {
        //given
        let expectation = self.expectation(description: "Expected load pancakes from cloud to fail")
        
        //when
        collection.loadPancakesFromCloud { didRecieveData in
            expectation.fulfill()
            XCTAssertFalse(didRecieveData)
        }
        
        //then
        waitForExpectations(timeout: 3, handler: nil)
    }

}
