//
//  ASSwimmer.h
//  Protocols_HomeWork
//
//  Created by Andrey Stecenko on 17.12.16.
//  Copyright © 2016 Andrey Stecenko. All rights reserved.
//

#import "ASHuman.h"
#import "ASSwimmers.h"

@interface ASSwimmer : ASHuman <ASSwimmers>

@property (strong, nonatomic) NSString* swimmerName;
@property (assign, nonatomic) float swimSpeedMax;


@end
