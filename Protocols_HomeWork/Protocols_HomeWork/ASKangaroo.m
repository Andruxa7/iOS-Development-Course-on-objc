//
//  ASKangaroo.m
//  Protocols_HomeWork
//
//  Created by Andrey Stecenko on 17.12.16.
//  Copyright © 2016 Andrey Stecenko. All rights reserved.
//

#import "ASKangaroo.h"

@implementation ASKangaroo

- (void) makeMove {
    NSLog(@"Kangaroo \"%@\" can jump and walk.", self.nickname);
}

- (NSString*) description {

    return [NSString stringWithFormat:
            @"jumper name = %@, jump height max = %.1f meters", _jumperName, _jumpHeightMax];
}

#pragma mark - ASJumpers

- (void) jump {
    NSLog(@"\"%@\" can  very good jump!", self.jumperName);
}


@end
