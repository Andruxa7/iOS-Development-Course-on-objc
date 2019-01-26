//
//  ASActor.h
//  Protocols_HomeWork
//
//  Created by Andrey Stecenko on 17.12.16.
//  Copyright © 2016 Andrey Stecenko. All rights reserved.
//

#import "ASHuman.h"
#import "ASJumpers.h"
#import "ASSwimmers.h"
#import "ASRunners.h"

@interface ASActor : ASHuman <ASJumpers, ASSwimmers, ASRunners>

@property (strong, nonatomic) NSString* lastName;
@property (assign, nonatomic) NSInteger age;

//ASActor
@property (strong, nonatomic) NSString* actorName;

//ASJumpers
@property (strong, nonatomic) NSString* jumperName;
@property (assign, nonatomic) float jumpHeightMax;

//ASSwimmers
@property (strong, nonatomic) NSString* swimmerName;
@property (assign, nonatomic) float swimSpeedMax;
@property (assign, nonatomic) float diveDepth;

//ASRunners
@property (strong, nonatomic) NSString* runnerName;
@property (assign, nonatomic) float runSpeedMax;


@end
