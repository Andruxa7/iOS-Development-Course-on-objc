//
//  ASEnumsPractice.m
//  TypesTestHomeWork
//
//  Created by Andrey Stecenko on 09.12.16.
//  Copyright © 2016 Andrey Stecenko. All rights reserved.
//

#import "ASEnumsPractice.h"

@implementation ASEnumsPractice

- (NSString*) stringWithASGender: (ASGender) gend {
    NSString* string = (gend == ASGenderMale) ? @"Male":@"Female";
    return string;
}

- (NSString*) stringWithASColorOfCar: (ASColorOfCar) color {
    
    NSString* choice = nil;
    
    if (color == ASColorOfCarYellow) {
        choice = @"Yellow Car";
    } else if (color == ASColorOfCarGreen) {
        choice = @"Green Car";
    } else if (color == ASColorOfCarRed) {
        choice = @"Red Car";
    } else if (color == ASColorOfCarBlue) {
        choice = @"Blue Car";
    }
    
    return choice;
}

@end
