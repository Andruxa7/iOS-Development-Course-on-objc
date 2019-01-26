//
//  ASAnimal.m
//  ArraysHomeWork
//
//  Created by Andrey Stecenko on 03.12.16.
//  Copyright © 2016 Andrey Stecenko. All rights reserved.
//

#import "ASAnimal.h"

@implementation ASAnimal

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.nickname = @"Animal";
        self.isPet = @"YES";
    }
    return self;
}

- (void) makeMove {
    NSLog(@"Animal - \"%@\" can walk, fly, swim!", self.nickname);
}

- (NSString*) description {
    
    return [NSString stringWithFormat:
            @"Nickname = %@, Is this animal pet? = %@",
            _nickname,
            _isPet ? @"YES" : @"NO"
            ];
}


@end
