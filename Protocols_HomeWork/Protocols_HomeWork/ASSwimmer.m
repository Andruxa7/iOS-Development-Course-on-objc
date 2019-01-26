//
//  ASSwimmer.m
//  Protocols_HomeWork
//
//  Created by Andrey Stecenko on 17.12.16.
//  Copyright © 2016 Andrey Stecenko. All rights reserved.
//

#import "ASSwimmer.h"

@implementation ASSwimmer

- (void) makeMove {    
    NSLog(@"Human - \"%@\" is swimmer. Swimmer can swim very quickly!", self.name);
}

- (NSString*) description {
    NSString* string = [NSString stringWithFormat: @"%@, swimmer name = %@, swim speed max = %.1f m/sec",
                        super.description, _swimmerName,  _swimSpeedMax];
    return string;
}


#pragma mark - ASSwimmers

- (void) swim {
    NSLog(@"\"%@\" is swimming!", self.swimmerName);
}


@end
