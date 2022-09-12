//
//  MyLibraryTests.swift
//  MyLibraryTests
//
//  Created by Hieu Luong on 12/09/2022.
//

import XCTest
@testable import MyLibrary

class MyLibraryTests: XCTestCase {

    func testText() {
        let lib = MyLibrary()
        XCTAssertEqual(lib.text, "Hello, World! How are you")
    }
}
