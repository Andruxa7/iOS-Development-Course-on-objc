//
//  ASHuman.m
//  ArraysHomeWork
//
//  Created by Andrey Stecenko on 19.11.16.
//  Copyright © 2016 Andrey Stecenko. All rights reserved.
//

#import "ASHuman.h"

@implementation ASHuman

- (void) makeMove {
    NSLog(@"Human - \"%@\" can walk!", self.name);
}


- (NSString*) description {

    NSString* string = [NSString stringWithFormat:
                        @"Name = %@, Height = %.2f, Weight = %.2ld, Gender = %@",
                        _name, _height, (long)_weight, (_gender == ASGenderMale) ? @"Male": @"Female"];
    
    return string;
}

@end
