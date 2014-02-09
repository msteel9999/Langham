//
//  Helpers.h
//  Langham
//
//  Created by martin steel on 08/02/2014.
//  Copyright (c) 2014 martin steel. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Helpers : NSObject

+ (NSMutableArray*) FetchMenuContents;
+ (NSString*) GetURLForPanoramic:(NSString*) panoramicName;

+ (BOOL) IsDeviceIpad;
@end
