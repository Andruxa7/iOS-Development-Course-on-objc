//
//  ASKangaroo.h
//  Protocols_HomeWork
//
//  Created by Andrey Stecenko on 17.12.16.
//  Copyright © 2016 Andrey Stecenko. All rights reserved.
//

#import "ASAnimal.h"
#import "ASJumpers.h"

@interface ASKangaroo : ASAnimal <ASJumpers>

@property (strong, nonatomic) NSString* jumperName;
@property (assign, nonatomic) float jumpHeightMax;

- (void) jump;


@end
