//
//  ASRunner.h
//  Protocols_HomeWork
//
//  Created by Andrey Stecenko on 17.12.16.
//  Copyright © 2016 Andrey Stecenko. All rights reserved.
//

#import "ASHuman.h"
#import "ASRunners.h"

@interface ASRunner : ASHuman <ASRunners>

@property (strong, nonatomic) NSString* runnerName;
@property (assign, nonatomic) float runSpeedMax;


@end
