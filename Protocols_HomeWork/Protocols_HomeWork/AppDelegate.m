//
//  AppDelegate.m
//  Protocols_HomeWork
//
//  Created by Andrey Stecenko on 17.12.16.
//  Copyright © 2016 Andrey Stecenko. All rights reserved.
//

#import "AppDelegate.h"
#import "ASJumpers.h"
#import "ASSwimmers.h"
#import "ASRunners.h"
#import "ASHuman.h"
#import "ASCyclist.h"
#import "ASRunner.h"
#import "ASSwimmer.h"
#import "ASActor.h"
#import "ASAnimal.h"
#import "ASDog.h"
#import "ASEagle.h"
#import "ASKangaroo.h"


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
//Родительский класс "Человек"
    ASHuman* human = [[ASHuman alloc] init];
    human.name = @"Denis";
    human.height = 1.8f;
    human.weight = 90;
    human.gender = ASGenderMale;
    
//Дочерний класс "Велосипедист"
    ASCyclist* cyclist = [[ASCyclist alloc] init];
    cyclist.name = @"Irina";
    cyclist.height = 1.69f;
    cyclist.weight = 57;
    cyclist.gender = ASGenderFemale;
    
//Дочерний класс "Бегун"
    ASRunner* runner = [[ASRunner alloc] init];
    runner.name = @"Anton";
    runner.height = 1.9f;
    runner.weight = 71;
    runner.gender = ASGenderMale;
    runner.runnerName = runner.name;
    runner.runSpeedMax = 10.4f;
    
//Дочерний класс "Пловец"
    ASSwimmer* swimmer = [[ASSwimmer alloc] init];
    swimmer.name = @"Andrey";
    swimmer.height = 1.95f;
    swimmer.weight = 82;
    swimmer.gender = ASGenderMale;
    swimmer.swimmerName = swimmer.name;
    swimmer.swimSpeedMax = 5.2f;


// Объединяем все объекты в один массив
    NSArray* array = [NSArray arrayWithObjects:human, cyclist, runner, swimmer, nil];

    /*
// 1) Уровень "Ученик"
    NSLog(@"=========================================================");
    NSLog(@"1) Уровень \"Ученик\" - вывод массива в прямом порядке:");
    
    NSUInteger countArray;
    countArray = [array count]; //Считаем колличество элементов в массиве "array2"
    
    NSLog(@"   В массиве \"array\" %ld элементов", countArray);
    NSLog(@"---------------------------------------------------------");
   
    for (ASHuman* human in array) {
        
        NSLog(@"Index: %ld", [array indexOfObject:human]);
        NSLog(@"%@", human);
        [human makeMove];
        NSLog(@" ");
    }
    NSLog(@"=========================================================");
    
// 2) Уровень "Студент"
    NSLog(@"2) Уровень \"Студент\" - вывод массива в обратном порядке:");

    */
    
//Дочерний класс "Актёр" с дополнительными свойствами (фамилия и возрост)
    ASActor* actor = [[ASActor alloc] init];
    actor.name = @"Bogdan";
    actor.height = 1.81f;
    actor.weight = 78;
    actor.gender = ASGenderMale;
    actor.age = 34;
    actor.lastName = @"Stupka";
    actor.actorName = actor.name;
    actor.jumpHeightMax = 1.8f;
    actor.swimSpeedMax = 6.5f;
    actor.diveDepth = 7.5f;
    actor.runSpeedMax = 11.5f;

    /*
    
    array = [NSArray arrayWithObjects:human, cyclist, runner, swimmer, actor, nil];
    
    NSLog(@"   В массиве \"array\" теперь %ld элементов", [array count]);
    NSLog(@"---------------------------------------------------------");
    
    for (NSInteger i = ([array count] - 1); i >=0; i--) {
        NSLog(@"Index: %ld", i);
        ASHuman* obj = [array objectAtIndex:i];
        NSLog(@"%@", obj);
        [obj makeMove];
        NSLog(@" ");
    }
    NSLog(@"=========================================================");
    
    
// 3) Уровень "Мастер"
    NSLog(@"3) Уровень \"Мастер\"");

     */
    
//Родительский класс "Животное"
    ASAnimal* animal = [[ASAnimal alloc] init];
    
//Дочерний класс "Собака" от класса "Животное"
    ASDog* dog = [[ASDog alloc] init];
    dog.nickname = @"Richard";
    dog.isPet = YES;
    
//Дочерний класс "Орёл" от класса "Животное"
    ASEagle* eagle = [[ASEagle alloc] init];
    eagle.nickname = @"Hunter";
    eagle.isPet = NO;

//Дочерний класс "Кенгуру" от класса "Животное"
    ASKangaroo* kangaroo = [[ASKangaroo alloc] init];
    kangaroo.nickname = @"Kangaroo 01";
    kangaroo.jumperName = kangaroo.nickname;
    kangaroo.jumpHeightMax = 2.5f;
    
    /*
     animal.isPet = NO;
     dog.isPet = YES;
     eagle.isPet = NO;
     kangaroo.isPet = NO;
     */
    
//Объединяем всех людей и животных в один массив
    array = [NSArray arrayWithObjects: human, dog, actor, kangaroo, runner, eagle, swimmer, cyclist, animal, nil];
    
    NSLog(@"   В массиве \"array\" %ld элементов", [array count]);
    NSLog(@"---------------------------------------------------------");
    
//В цикле выводить тип объекта (человек или животное) перед тем как выводить его свойства и вызывать метод
    for (int i = 0; i < [array count]; i++) {
        
        NSObject* obj = [array objectAtIndex:i];
        
        NSLog(@"Index = %d", i);
        
        id creature = nil;
        
        if ([obj isKindOfClass:[ASHuman class]]) {
            
            NSLog(@"Type = Human");
            
            creature = (ASHuman*)obj;
            
        } else if ([obj isKindOfClass:[ASAnimal class]]) {
            
            NSLog(@"Type = Animal");
            
            creature = (ASAnimal*)obj;
            
        }
        NSLog(@"%@", creature);
        [creature makeMove];
        NSLog(@" ");
    }
    
    NSLog(@"=========================================================");
    
//=========================================================================================
    
    
    NSArray* creatures = @[human, dog, actor, kangaroo, runner, eagle, swimmer, cyclist, animal];
    
    int i = 0;
    
    for (id <ASJumpers, ASSwimmers, ASRunners> creature in creatures) {
        
        NSLog(@"Index = %d", i);
        NSLog(@"%@", creature);
        
        if (!(
              [creature conformsToProtocol:@protocol(ASJumpers)] ||
              [creature conformsToProtocol:@protocol(ASSwimmers)] ||
              [creature conformsToProtocol:@protocol(ASRunners)]
              )) {
            
            NSLog(@"Slacker Creature!!!");
            
        } else {
            
            if ([creature conformsToProtocol:@protocol(ASJumpers)]) {
                [creature jump];
                
                if ([creature respondsToSelector:@selector(broadJump)]) {
                    [creature broadJump];
                }
            }
            
            if ([creature conformsToProtocol:@protocol(ASSwimmers)]) {
                [creature swim];
                
                if ([creature respondsToSelector:@selector(dive)]) {
                    [creature dive];
                }
            }
            
            if ([creature conformsToProtocol:@protocol(ASRunners)]) {
                [creature run];
                if ([creature respondsToSelector:@selector(runOverBarrier)]) {
                    [creature runOverBarrier];
                }
            }
        }
        NSLog(@"\n");

        i++;
    }
    
    
    /*
     int i = 0;
     
     for (id creature in creatures) {
     
     NSLog(@"Index = %d", i);
     NSLog(@"%@", creature);
     
     if (!(
     [creature conformsToProtocol:@protocol(ASJumpers)] ||
     [creature conformsToProtocol:@protocol(ASSwimmers)] ||
     [creature conformsToProtocol:@protocol(ASRunners)]
     )) {
     NSLog(@"Slacker Creature!!!");
     } else {
     if ([creature conformsToProtocol:@protocol(ASJumpers)]) {
     id <ASJumpers> jumper = creature;
     [jumper jump];
     if ([creature respondsToSelector:@selector(broadJump)]) {
     [jumper broadJump];
     }
     }
     if ([creature conformsToProtocol:@protocol(ASSwimmers)]) {
     id <ASSwimmers> swimmer = creature;
     [swimmer swim];
     if ([creature respondsToSelector:@selector(dive)]) {
     [swimmer dive];
     }
     }
     if ([creature conformsToProtocol:@protocol(ASRunners)]) {
     id <ASRunners> runner = creature;
     [runner run];
     if ([creature respondsToSelector:@selector(runOverBarrier)]) {
     [runner runOverBarrier];
     }
     }
     }
     NSLog(@"\n");
     i++;
     }
     */


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
