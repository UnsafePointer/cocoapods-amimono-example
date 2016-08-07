//
//  ExampleTests.m
//  ExampleTests
//
//  Created by Renzo Crisóstomo on 07/08/16.
//  Copyright © 2016 Renzo Crisóstomo. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

@interface ExampleTests : XCTestCase

@property id mockObject;

@end

@implementation ExampleTests

- (void)setUp {
    [super setUp];
    self.mockObject = OCMClassMock([NSUserDefaults class]);
}

- (void)tearDown {
    [super tearDown];
    [self.mockObject stopMocking];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
