//
//  AppDelegate.m
//  TypesTestHomeWork
//
//  Created by Andrey Stecenko on 07.12.16.
//  Copyright © 2016 Andrey Stecenko. All rights reserved.
//

#import "AppDelegate.h"
#import "ASEnumsPractice.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    

// 1) Практика создавать и использовать enum списки:
    NSLog(@"======================================================");
    NSLog(@"  1) Практика создавать и использовать enum списки:");
    NSLog(@"\n");
    
    // Person1
    ASEnumsPractice* person1 = [[ASEnumsPractice alloc] init];

    person1.gender = ASGenderMale;
    person1.colorOfCar = ASColorOfCarYellow;
    
    NSLog(@"Gender of \"Person1\" is - %@",
          [person1 stringWithASGender:ASGenderMale]);
    NSLog(@"\"Person1\" likes drive on - %@",
          [person1 stringWithASColorOfCar:ASColorOfCarYellow]);
    NSLog(@"\n");
    
    // Person2
    ASEnumsPractice* person2 = [[ASEnumsPractice alloc] init];
    
    person2.gender = ASGenderFemale;
    person2.colorOfCar = ASColorOfCarRed;
    
    NSLog(@"Gender of \"Person2\" is - %@",
          [person2 stringWithASGender:ASGenderFemale]);
    NSLog(@"\"Person2\" likes drive on - %@",
          [person2 stringWithASColorOfCar:ASColorOfCarRed]);
    NSLog(@"======================================================");
    
    
// 2) Практика со структурами:
    NSLog(@"  2) Практика со структурами:");
    NSLog(@"\n");
    
    CGPoint point;
    point.x = 0;
    point.y = 0;
    
    CGSize size;
    size.width = 10;
    size.height = 10;

    NSInteger numberOfShots = 15;
    NSInteger countOfShots = 0;
    
    CGRect zoneOfShots = CGRectMake((point.x), (point.y), (size.width), (size.height));
    CGRect target = CGRectMake(3, 3, 4, 4);
    
    NSMutableArray* points = [[NSMutableArray alloc] init];
    
    for (int i = 1; i <= numberOfShots; i++) {
        CGPoint p = CGPointMake(arc4random_uniform(10), arc4random_uniform(10));
        [points addObject:[NSValue valueWithCGPoint:p]];
    }
    
    NSLog(@"Zone of shots has origin %@ and size %@",
          NSStringFromCGPoint(zoneOfShots.origin),
          NSStringFromCGSize(zoneOfShots.size));
    
    NSLog(@"Target has origin %@ and size %@",
          NSStringFromCGPoint(target.origin),
          NSStringFromCGSize(target.size));
    NSLog(@"\n");


    for (NSValue* value in points) {
        CGPoint p = [value CGPointValue];
        
        countOfShots++;
        
        BOOL shotResults = (CGRectContainsPoint(zoneOfShots, p)) && (CGRectContainsPoint(target, p));
        BOOL shotMiss = CGRectContainsPoint(zoneOfShots, p);
        
        if (shotResults) {
            NSLog(@"Point%ld %@ shot in the target!", countOfShots, NSStringFromCGPoint(p));
        } else if (shotMiss) {
            NSLog(@"Point%ld %@ is missed", countOfShots, NSStringFromCGPoint(p));
        }
    }
    
    NSLog(@"======================================================");
    
    
// 3) Практика с оболочкой "NSNumber":
    NSLog(@"  3) Практика с оболочкой \"NSNumber\":");
    NSLog(@"\n");
    
    NSMutableArray* numbers = [[NSMutableArray alloc] init];
    
    for (int i = 0; i < 3; i++) {
        [numbers addObject:[NSNumber numberWithBool:arc4random() % 2]];
    }
    
    for (int i = 0; i < 3; i++) {
        [numbers addObject:[NSNumber numberWithInteger:arc4random() % 11]];
    }
    
    for (int i = 0; i < 3; i++) {
        [numbers addObject:[NSNumber numberWithFloat:(CGFloat)arc4random_uniform(11)]];
    }
    
    NSInteger index = 0;
    
    for (NSNumber* number in numbers) {
        NSInteger i = [number integerValue];
        NSLog(@"Number%ld = %@", index, [NSNumber numberWithInteger:i]);
        //NSLog(@"Number%ld = %@", index, [[numbers objectAtIndex:index] stringValue]);
        index++;
    }
  
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
