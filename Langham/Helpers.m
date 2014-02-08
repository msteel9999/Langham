//
//  Helpers.m
//  Langham
//
//  Created by martin steel on 08/02/2014.
//  Copyright (c) 2014 martin steel. All rights reserved.
//

#import "Helpers.h"

@implementation Helpers

+ (NSMutableArray*) FetchMenuContents
{
    NSString* menuItemsString = [self GetStringFromFile:@"MenuItems":@"txt"];
    
    NSArray *menuItemsArray = [menuItemsString componentsSeparatedByString:@";"];
    
    return (NSMutableArray*)menuItemsArray;
}

+ (NSString*) GetURLForPanoramic:(NSString*) panoramicName;
{
    NSString* panormicUrlsString = [self GetStringFromFile:@"PanoramicURLS":@"txt"];
    
    NSArray *panormicUrlsArray = [panormicUrlsString componentsSeparatedByString:@";"];
    
    NSString* stringToFind = [NSString stringWithFormat:@"%@%@",panoramicName,@":"];
    
    //e.g. MAIN:http://something
    NSString* nameAndURL = nil;
    
    for (NSString* item in panormicUrlsArray)
    {
        if ([item hasPrefix:stringToFind])
        {
            nameAndURL = item;
            break;
        }
    }
    
    if(nameAndURL==nil)
        return nil;
    
    NSInteger positionOfColon = [nameAndURL rangeOfString:@":"].location + 1;
    return [nameAndURL substringFromIndex:positionOfColon];
}

+ (NSString*) GetStringFromFile:(NSString*) fileName
                               :(NSString*) fileType
{
    NSStringEncoding encoding;
    NSError* error;
    NSString* path = [[NSBundle mainBundle] pathForResource:fileName
                                    ofType:fileType];
    
    return [NSString stringWithContentsOfFile:path usedEncoding:&encoding error:&error];
}
@end
