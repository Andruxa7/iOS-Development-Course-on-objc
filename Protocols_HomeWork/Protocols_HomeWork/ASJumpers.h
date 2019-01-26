//
//  ASJumpers.h
//  Protocols_HomeWork
//
//  Created by Andrey Stecenko on 17.12.16.
//  Copyright © 2016 Andrey Stecenko. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ASJumpers <NSObject>

@required
@property (strong, nonatomic) NSString* jumperName;
@property (assign, nonatomic) float jumpHeightMax;

- (void) jump;


@optional
- (void) broadJump;


@end
