//
//  ASDog.m
//  Protocols_HomeWork
//
//  Created by Andrey Stecenko on 17.12.16.
//  Copyright © 2016 Andrey Stecenko. All rights reserved.
//

#import "ASDog.h"

@implementation ASDog

- (void) makeMove {
    NSLog(@"Dog \"%@\" can walk and run.", self.nickname);
}

- (NSString*) description {
    return [NSString stringWithFormat:
            @"dog nickname = %@", self.nickname];
}


@end
