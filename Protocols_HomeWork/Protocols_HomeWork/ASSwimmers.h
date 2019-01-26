//
//  ASSwimmers.h
//  Protocols_HomeWork
//
//  Created by Andrey Stecenko on 17.12.16.
//  Copyright © 2016 Andrey Stecenko. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ASSwimmers <NSObject>

@required
@property (strong, nonatomic) NSString* swimmerName;
@property (assign, nonatomic) float swimSpeedMax;

- (void) swim;


@optional
@property (assign, nonatomic) float diveDepth;
- (void) dive;


@end
