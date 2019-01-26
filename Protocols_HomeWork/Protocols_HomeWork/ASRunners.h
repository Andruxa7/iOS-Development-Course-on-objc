//
//  ASRunners.h
//  Protocols_HomeWork
//
//  Created by Andrey Stecenko on 17.12.16.
//  Copyright © 2016 Andrey Stecenko. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ASRunners <NSObject>

@required
@property (strong, nonatomic) NSString* runnerName;
@property (assign, nonatomic) float runSpeedMax;

- (void) run;


@optional
- (void) runOverBarrier;


@end
