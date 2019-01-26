//
//  ASActor.m
//  ArraysHomeWork
//
//  Created by Andrey Stecenko on 21.11.16.
//  Copyright © 2016 Andrey Stecenko. All rights reserved.
//

#import "ASActor.h"

@implementation ASActor

- (void) makeMove {
    [super makeMove];
    NSLog(@"Human - \"%@\" is actor. Everyone recognize him when they meet on the street!", self.name);
}

- (NSString*) description {
    
    NSString* string = [NSString stringWithFormat: @"%@, Age = %ld, LastName = %@",
                        super.description, _age,  _lastName];
    return string;
}


@end
