//
//  ASEagle.m
//  Protocols_HomeWork
//
//  Created by Andrey Stecenko on 17.12.16.
//  Copyright © 2016 Andrey Stecenko. All rights reserved.
//

#import "ASEagle.h"

@implementation ASEagle

- (void) makeMove {
    NSLog(@"Eagle - \"%@\" can fly!", self.nickname);
}

- (NSString*) description {
    
    return [NSString stringWithFormat:
            @"eagle nickname = %@. %@", self.nickname, self.enjoyMyLife];
}

- (NSString*) enjoyMyLife {
    
    return @("I don't want to jump, swim or run, I just like to enjoy my flight ;))");
}

@end
