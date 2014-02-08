//
//  LanghamTests.m
//  LanghamTests
//
//  Created by martin steel on 08/02/2014.
//  Copyright (c) 2014 martin steel. All rights reserved.
//

#import "LanghamTests.h"


@implementation LanghamTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample
{
    NSMutableArray* menuItems = [Helpers FetchMenuContents];
    
    STAssertEqualObjects(@"MAIN AREAS", [menuItems objectAtIndex:0],@"First Menu Item is wrong");
}

@end
