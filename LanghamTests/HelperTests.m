//
//  HelperTests.m
//  Langham
//
//  Created by martin steel on 09/02/2014.
//  Copyright (c) 2014 martin steel. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Helpers.h"


@interface HelperTests : XCTestCase

@end

@implementation HelperTests

- (void)setUp
{
    [super setUp];
    // Put setup code here; it will be run once, before the first test case.
}

- (void)tearDown
{
    // Put teardown code here; it will be run once, after the last test case.
    [super tearDown];
}

- (void)testFetchMenuContents
{
    NSMutableArray* menuItems = [Helpers FetchMenuContents];
    
    XCTAssertEqualObjects(@"MAIN AREAS", [menuItems objectAtIndex:0],@"First Menu Item is wrong");
}

- (void)testFetchMenuContentsSecondItem
{
    NSMutableArray* menuItems = [Helpers FetchMenuContents];
    
    XCTAssertEqualObjects(@"ACCOMMODATION", [menuItems objectAtIndex:1],@"Second Menu Item is wrong");
}

- (void)testFetchMenuContentsLastItem
{
    NSMutableArray* menuItems = [Helpers FetchMenuContents];
    
    XCTAssertEqualObjects(@"RESERVATION", [menuItems lastObject],@"Last Menu Item is wrong");
}

- (void)testGetURLForPanoramic
{
    //GetURLForPanoramic:(NSString*) panoramicName

}
@end
