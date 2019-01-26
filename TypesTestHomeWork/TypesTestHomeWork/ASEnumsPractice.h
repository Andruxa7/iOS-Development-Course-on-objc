//
//  ASEnumsPractice.h
//  TypesTestHomeWork
//
//  Created by Andrey Stecenko on 09.12.16.
//  Copyright © 2016 Andrey Stecenko. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    ASGenderMale,
    ASGenderFemale
} ASGender;

typedef enum {
    ASColorOfCarYellow,
    ASColorOfCarGreen,
    ASColorOfCarRed,
    ASColorOfCarBlue
} ASColorOfCar;

@interface ASEnumsPractice : NSObject

@property (assign, nonatomic) ASGender gender;
@property (assign, nonatomic) ASColorOfCar colorOfCar;

- (NSString*) stringWithASGender: (ASGender) gend;
- (NSString*) stringWithASColorOfCar: (ASColorOfCar) color;

@end
