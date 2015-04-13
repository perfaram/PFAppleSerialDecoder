//
//  PFAppleSerialDecoder.h
//  PFSystemKit
//
//  Created by Perceval FARAMAZ on 02/03/15.
//  Copyright (c) 2015 faramaz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PFAppleSerialDecoder : NSObject
@property (readonly, nonatomic) NSString* manufacturingYear;
@property (readonly, nonatomic) NSString* manufacturingWeek;
@property (readonly, nonatomic) NSString* manufacturingLocation;

-(id) initWithMacSN:(NSString*)serial;
-(id) initWithIDeviceSN:(NSString*)serial;
-(NSString*) decodeManuLoc:(NSString*)thDigit;
@end
