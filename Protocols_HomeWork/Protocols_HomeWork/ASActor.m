//
//  ASActor.m
//  Protocols_HomeWork
//
//  Created by Andrey Stecenko on 17.12.16.
//  Copyright © 2016 Andrey Stecenko. All rights reserved.
//

#import "ASActor.h"

@implementation ASActor

- (void) makeMove {
    [super makeMove];
    NSLog(@"Human - \"%@\" is actor. Everyone recognize him when they meet on the street!", self.name);
}

- (NSString*) description {
    NSString* string = [NSString stringWithFormat: @"%@, LastName = %@, Age = %ld, jump height max = %.1f meters, swim speed max = %.1f m/sec, dive depth = %.1f meters, run speed max = %.1f m/sec",
                        super.description,
                        _lastName,
                        _age,
                        _jumpHeightMax,
                        _swimSpeedMax,
                        _diveDepth,
                        _runSpeedMax
                        ];
    return string;
}

//ASJumpers
#pragma mark - ASJumpers

- (void) jump {
    NSLog(@"\"%@\" is jumping!", self.actorName);
}

- (void) broadJump {
    NSLog(@"\"%@\" also can broad jump!", self.actorName);
}

//ASSwimmers
#pragma mark - ASSwimmers

- (void) swim {
    NSLog(@"\"%@\" is swimming!", self.actorName);
}

- (void) dive {
    NSLog(@"\"%@\" also can dive on depth = %.1f meters!",
          self.actorName, self.diveDepth);
}

//ASRunners
#pragma mark - ASRunners

- (void) run {
    NSLog(@"\"%@\" is running!", self.actorName);
}

- (void) runOverBarrier {
    NSLog(@"\"%@\" also can ran over barrier!", self.actorName);
}


@end
