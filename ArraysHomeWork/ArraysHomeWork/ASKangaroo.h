//
//  ASKangaroo.h
//  ProtocolsHomeWork
//
//  Created by Andrey Stecenko on 14.12.16.
//  Copyright © 2016 Andrey Stecenko. All rights reserved.
//

#import "ASAnimal.h"
#import "ASJumpers.h"

@interface ASKangaroo : ASAnimal <ASJumpers>

@property (assign, nonatomic) float jumpHeightMax;

- (void) jump;

@end
