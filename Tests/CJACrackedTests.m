//
//  CJACrackedTests.m
//  CJACrackedTests
//
//  Created by Carl Jahn on 11.10.13.
//  Copyright (c) 2013 Carl Jahn. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "CJACracked.h"

@interface CJACrackedTests : XCTestCase

@end

@implementation CJACrackedTests

- (void)testCrackedStatus {
 
  CJACracked *cracked = [CJACracked new];
  
  XCTAssertFalse(cracked.isCracked, @"app is cracked");
  XCTAssertTrue(!cracked.isCracked, @"app is cracked");
  XCTAssertFalse(cracked.isCracked & APPEncryptionCracked, @"app is cracked");
  XCTAssertFalse(cracked.isCracked & APPSigningCracked, @"app is cracked");
  
}

@end
