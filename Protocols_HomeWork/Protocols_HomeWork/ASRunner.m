//
//  ASRunner.m
//  Protocols_HomeWork
//
//  Created by Andrey Stecenko on 17.12.16.
//  Copyright © 2016 Andrey Stecenko. All rights reserved.
//

#import "ASRunner.h"

@implementation ASRunner

- (void) makeMove {
    NSLog(@"Human - \"%@\" is runner. Runner can run very fast", self.name);
}

- (NSString*) description {
    NSString* string = [NSString stringWithFormat: @"%@, runner name = %@, run speed max = %.1f m/sec",
                        super.description, _runnerName,  _runSpeedMax];
    return string;
}


#pragma mark - ASRunners

- (void) run {
    NSLog(@"\"%@\" is running!", self.runnerName);
}


@end
