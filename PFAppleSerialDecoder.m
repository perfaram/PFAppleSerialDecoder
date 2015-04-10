//
//  PFAppleSerialDecoder.m
//  PFSystemKit
//
//  Created by Perceval FARAMAZ on 02/03/15.
//  Copyright (c) 2015 faramaz. All rights reserved.
//

#import "PFAppleSerialDecoder.h"

@implementation PFAppleSerialDecoder
@synthesize manufacturingLocation;
@synthesize manufacturingWeek;
@synthesize manufacturingYear;

-(id) initWithSN:(NSString*)serial {
	self = [super init];
	if (self) {
		if (serial.length==12) {
			NSString* manfYNum=[NSString stringWithFormat:@"%c", [serial characterAtIndex:3]];
			NSString* manfWNum=[NSString stringWithFormat:@"%c", [serial characterAtIndex:4]];
			NSDictionary* manfYdict = @{
										@"A" : @"2009",
										@"B" : @"2009-2",
										@"C" : @"2010",
										@"D" : @"2010-2",
										@"F" : @"2011",
										@"G" : @"2011-2",
										@"H" : @"2012",
										@"J" : @"2012-2",
										@"K" : @"2013",
										@"L" : @"2013-2",
										@"M" : @"2014",
										@"N" : @"2014-2",
										@"P" : @"2015",
										@"Q" : @"2015-2",
										@"R" : @"2016",
										@"S" : @"2016-2",
										@"T" : @"2017",
										@"V" : @"2017-2",
										@"W" : @"2018",
										@"X" : @"2018-2",
										@"Y" : @"2019",
										@"Z" : @"2019-2",
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
										@"SK" : @"Malaysia",
										};
			NSDictionary* manfWdict=@{
									  @"1" : @1,
									  @"2" : @2,
									  @"3" : @3,
									  @"4" : @4,
									  @"5" : @5,
									  @"6" : @6,
									  @"7" : @7,
									  @"8" : @8,
									  @"9" : @9,
									  @"C" : @10,
									  @"D" : @11,
									  @"F" : @12,
									  @"G" : @13,
									  @"H" : @14,
									  @"J" : @15,
									  @"K" : @16,
									  @"L" : @17,
									  @"M" : @18,
									  @"N" : @19,
									  @"P" : @20,
									  @"Q" : @21,
									  @"R" : @22,
									  @"T" : @23,
									  @"V" : @24,
									  @"W" : @25,
									  @"X" : @26,
									  @"Y" : @27,
									  };
			if ([[manfYdict objectForKey:manfYNum] rangeOfString:@"-2" options:NSCaseInsensitiveSearch].location == NSNotFound ? false : true) {
				manufacturingYear = [[manfYdict objectForKey:manfYNum] substringToIndex:[[manfYdict objectForKey:manfYNum] length] - 1];
				manufacturingWeek = [@([[manfWdict objectForKey:manfWNum] integerValue] + 26) stringValue];
			} else {
				manufacturingYear = [manfYdict objectForKey:manfYNum];
				manufacturingWeek = [manfWdict objectForKey:manfWNum];
			}
			//NSString *trimmedSerial=[_SIserial substringFromIndex:MAX((int)[_SIserial length]-3, 0)];
			manufacturingLocation = [manfLdict objectForKey:[serial substringToIndex:2]];
		else if (serial.length==11) {
			return nil; //soon
		} else {
			return nil; //not a known SN
		}
	}
	return self;
}
@end
