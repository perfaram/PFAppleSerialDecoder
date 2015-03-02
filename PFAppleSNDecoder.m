//
//  PFAppleSNDecoder.m
//  PFSystemKit
//
//  Created by Perceval FARAMAZ on 02/03/15.
//  Copyright (c) 2015 faramaz. All rights reserved.
//

#import "PFAppleSNDecoder.h"

@implementation PFAppleSNDecoder
@synthesize manufacturingLocation;
@synthesize manufacturingWeek;
@synthesize manufacturingYear;

-(id) initWithSN:(NSString*)serial {
	self = [super init];
	if (self) {
		NSString* manfYNum=[NSString stringWithFormat:@"%c", [serial characterAtIndex:3]];
		NSString* manfWNum=[NSString stringWithFormat:@"%c", [serial characterAtIndex:4]];
		NSDictionary* manfYdict = @{
									@"C" : [NSNumber numberWithInt:2010],
									@"D" : [NSNumber numberWithInt:2010],
									@"F" : [NSNumber numberWithInt:2011],
									@"G" : [NSNumber numberWithInt:2011],
									@"H" : [NSNumber numberWithInt:2012],
									@"J" : [NSNumber numberWithInt:2012],
									@"K" : [NSNumber numberWithInt:2013],
									@"L" : [NSNumber numberWithInt:2013],
									@"M" : [NSNumber numberWithInt:2014],
									@"N" : [NSNumber numberWithInt:2014],
									@"P" : [NSNumber numberWithInt:2015],
									@"Q" : [NSNumber numberWithInt:2015],
									@"R" : [NSNumber numberWithInt:2016],
									@"S" : [NSNumber numberWithInt:2016],
									@"T" : [NSNumber numberWithInt:2017],
									@"V" : [NSNumber numberWithInt:2017],
									@"W" : [NSNumber numberWithInt:2018],
									@"X" : [NSNumber numberWithInt:2018],
									@"Y" : [NSNumber numberWithInt:2019],
									@"Z" : [NSNumber numberWithInt:2019],
									};
		NSDictionary* manfLdict = @{
									@"RM" : @"REFURBISHED",
									@"73" : @"REFURBISHED",
									@"CK" : @"Cork, Ireland",
									@"VM" : @"Czech Republic (Foxconn)",
									@"CY" : @"Korea",
									@"PT" : @"Korea (LG)",
									@"HQ" : @"Korea (LG)",
									@"SR" : @"Taiwan",
									@"LT" : @"Taiwan",
									@"V7" : @"Taiwan (Compal Electronics)",
									@"QT" : @"Taiwan (Quanta)",
									@"UV" : @"Taiwan (Universal Microelectronics)",
									@"C0" : @"China",
									@"4H" : @"China",
									@"W8" : @"Shangai, China (Quanta)",
									@"YM" : @"Shangai, China (Hon Hai - Foxconn)",
									@"SG" : @"Singapore",
									@"FC" : @"Fountain, California",
									@"F" : @"Fremont, California",
									@"XA" : @"Sacramento, California (ElkGrove)",
									@"XB" : @"Sacramento, California (ElkGrove)",
									@"G8" : @"USA",
									@"QP" : @"USA",
									@"M" : @"USA",
									@"G" : @"USA",
									@"A" : @"USA",
									@"E" : @"USA",
									@"RN" : @"Mexico",
									@"PK" : @"Mexico",
									@"SI" : @"Mexico",
									@"MX" : @"Mexico",
									@"MI" : @"Malaysia",
									@"SK" :@"Malaysia",
									};
		NSDictionary* manfWdict=@{
								  @"1" : [NSNumber numberWithInt:1],
								  @"2" : [NSNumber numberWithInt:2],
								  @"3" : [NSNumber numberWithInt:3],
								  @"4" : [NSNumber numberWithInt:4],
								  @"5" : [NSNumber numberWithInt:5],
								  @"6" : [NSNumber numberWithInt:6],
								  @"7" : [NSNumber numberWithInt:7],
								  @"8" : [NSNumber numberWithInt:8],
								  @"9" : [NSNumber numberWithInt:9],
								  @"C" : [NSNumber numberWithInt:10],
								  @"D" : [NSNumber numberWithInt:11],
								  @"F" : [NSNumber numberWithInt:12],
								  @"G" : [NSNumber numberWithInt:13],
								  @"H" : [NSNumber numberWithInt:14],
								  @"J" : [NSNumber numberWithInt:15],
								  @"K" : [NSNumber numberWithInt:16],
								  @"L" : [NSNumber numberWithInt:17],
								  @"M" : [NSNumber numberWithInt:18],
								  @"N" : [NSNumber numberWithInt:19],
								  @"P" : [NSNumber numberWithInt:20],
								  @"Q" : [NSNumber numberWithInt:21],
								  @"R" : [NSNumber numberWithInt:22],
								  @"T" : [NSNumber numberWithInt:23],
								  @"V" : [NSNumber numberWithInt:24],
								  @"W" : [NSNumber numberWithInt:25],
								  @"X" : [NSNumber numberWithInt:26],
								  @"Y" : [NSNumber numberWithInt:27],
								  };
		manufacturingYear = [manfYdict objectForKey:manfYNum];
		manufacturingWeek = [manfWdict objectForKey:manfWNum];
		//NSString *trimmedSerial=[_SIserial substringFromIndex:MAX((int)[_SIserial length]-3, 0)];
		manufacturingLocation = [manfLdict objectForKey:[serial substringToIndex:2]];
	}
	return self;
}
@end
