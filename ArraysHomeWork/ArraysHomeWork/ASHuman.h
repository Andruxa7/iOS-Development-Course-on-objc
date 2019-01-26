//
//  ASHuman.h
//  ArraysHomeWork
//
//  Created by Andrey Stecenko on 19.11.16.
//  Copyright © 2016 Andrey Stecenko. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    ASGenderMale,
    ASGenderFemale
} ASGender;

@interface ASHuman : NSObject

@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) float height;
@property (assign, nonatomic) NSInteger weight;
@property (assign, nonatomic) ASGender gender;

- (void) makeMove;

@end
