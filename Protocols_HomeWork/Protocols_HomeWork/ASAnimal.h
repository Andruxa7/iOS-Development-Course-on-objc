//
//  ASAnimal.h
//  Protocols_HomeWork
//
//  Created by Andrey Stecenko on 17.12.16.
//  Copyright © 2016 Andrey Stecenko. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ASAnimal : NSObject

@property (strong, nonatomic) NSString* nickname;
@property (assign, nonatomic) BOOL isPet;

- (void) makeMove;


@end
