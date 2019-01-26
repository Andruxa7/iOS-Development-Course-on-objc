//
//  AppDelegate.m
//  ArraysHomeWork
//
//  Created by Andrey Stecenko on 19.11.16.
//  Copyright © 2016 Andrey Stecenko. All rights reserved.
//

#import "AppDelegate.h"
#import "ASHuman.h"
#import "ASCyclist.h"
#import "ASRunner.h"
#import "ASSwimmer.h"
#import "ASActor.h"
#import "ASAnimal.h"
#import "ASDog.h"
#import "ASEagle.h"

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
  //human.gender = @"male";
    human.gender = ASGenderMale;
    
//Дочерний класс "Велосипедист"
    ASCyclist* cyclist = [[ASCyclist alloc] init];
    
    cyclist.name = @"Irina";
    cyclist.height = 1.69f;
    cyclist.weight = 57;
  //cyclist.gender = @"female";
    cyclist.gender = ASGenderFemale;
    
//Дочерний класс "Бегун"
    ASRunner* runner = [[ASRunner alloc] init];
    
    runner.name = @"Anton";
    runner.height = 1.9f;
    runner.weight = 71;
  //runner.gender = @"male";
    runner.gender = ASGenderMale;
    
//Дочерний класс "Пловец"
    ASSwimmer* swimmer = [[ASSwimmer alloc] init];
    
    swimmer.name = @"Andrey";
    swimmer.height = 1.95f;
    swimmer.weight = 82;
  //swimmer.gender = @"male";
    swimmer.gender = ASGenderMale;
    
// Объединяем все объекты в один массив
    
    NSArray* array = [NSArray arrayWithObjects:human, cyclist, runner, swimmer, nil];
    
// 1) Уровень "Ученик"
        NSLog(@"=========================================================");
        NSLog(@"1) Уровень \"Ученик\" - вывод массива в прямом порядке:");
    
    NSUInteger countArray;
    countArray = [array count]; //Считаем колличество элементов в массиве "array2"
    
        NSLog(@"   В массиве \"array\" %ld элементов", countArray);
        NSLog(@"---------------------------------------------------------");
/*
//Выводим в консоль массив в прямом порядке
    for (ASHuman* human in array) {
        i = 0;
        NSLog(@"%d. Name of human: %@", ++i, human.name);
        NSLog(@"%d. Height of human: %f", ++i, human.height);
        NSLog(@"%d. Weight of human: %ld", ++i, human.weight);
        NSLog(@"%d. Gender of human: %@", ++i, human.gender);
 
        //[NSLog(@"%d. ", ++i), human makeMove];
        [human makeMove:++i]; //Не работает!!!
        
        NSLog(@"------------------------------------------");
    }
*/

/*
//Выводим в консоль массив в прямом порядке
    for (int i = 0; i < [array count]; i++) {
        ASHuman* obj = [array objectAtIndex:i];
        NSLog(@"Name of human: %@", obj.name);
        NSLog(@"Height of human: %1.2f", obj.height);
        NSLog(@"Weight of human: %ld", obj.weight);
        NSLog(@"Gender of human: %@", obj.gender);
        
        [obj makeMove];
        
        NSLog(@"------------------------------------------");
       
    }
*/
    
    for (ASHuman* human in array) {
        
        NSLog(@"Index: %ld", [array indexOfObject:human]);
        NSLog(@"%@", human);
        [human makeMove];
        NSLog(@" ");
    }
        NSLog(@"=========================================================");


// 2) Уровень "Студент"
        NSLog(@"2) Уровень \"Студент\" - вывод массива в обратном порядке:");

//Дочерний класс "Актёр" с дополнительными свойствами (фамилия и возрост)
        ASActor* actor = [[ASActor alloc] init];
    
        actor.name = @"Bogdan";
        actor.height = 1.81f;
        actor.weight = 78;
      //actor.gender = @"male";
        actor.gender = ASGenderMale;
        actor.age = 60;
        actor.lastName = @"Stupka";
    
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
/*
// Объединяем все объекты в один изменяемый массив
    NSMutableArray* array2 = [NSMutableArray arrayWithObjects:human, cyclist, runner, swimmer, nil];
    
    [array2 addObject:actor]; //Добавляем в массив класс "Актёр"
    
    NSUInteger countArray2;
    countArray2 = [array2 count]; //Считаем колличество элементов в массиве "array2"
        NSLog(@"В изменяемом массиве \"array2\" %ld элементов", countArray2);
        NSLog(@" ");
    
        NSLog(@"------------------------------------------");
//Выводим в консоль изменяемый массив в обратном порядке
    for (NSInteger i = ([array2 count] - 1); i >=0; i--) {
        ASHuman* obj = [array2 objectAtIndex:i];
        NSLog(@"Name of human: %@", obj.name);
        NSLog(@"Height of human: %1.2f", obj.height);
        NSLog(@"Weight of human: %ld", obj.weight);
        NSLog(@"Gender of human: %@", obj.gender);
        
//Вывод дополнительных свойств дочернего класса "Актёр"
        if ([obj isKindOfClass:[ASActor class]]) {
            
            ASActor* act = (ASActor*)obj;
            NSLog(@"Age of human: %ld", act.age);
            NSLog(@"LastName of human: %@", act.lastName);
        }
        [obj makeMove];
        NSLog(@"------------------------------------------");
    }
*/
    
    
// 3) Уровень "Мастер"
    NSLog(@"3) Уровень \"Мастер\"");
    
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
    
    
//Объединяем всех людей и животных в один массив
    array = [NSArray arrayWithObjects: human, dog, actor, runner, eagle, swimmer, cyclist, animal, nil];
    
    NSLog(@"   В массиве \"array\" теперь %ld элементов", [array count]);
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

// 4) Уровень "Звезда"
    NSLog(@"4) Уровень \"Звезда\"");
    
//Поместить всех людей в один массив, а животных в другой массив (количество людей и животных должно быть разное)
    
    NSArray* humans = [NSArray arrayWithObjects:human, cyclist, runner, swimmer, actor, nil];
    
    NSArray* animals = [NSArray arrayWithObjects:animal, dog, eagle, nil];
    
    NSUInteger humanCount = [humans count];
    NSLog(@"   В массиве \"humans\" %ld элементов", [humans count]);
    
    NSUInteger animalCount = [animals count];
    NSLog(@"   В массиве \"animals\" %ld элементов", [animals count]);
    NSLog(@"---------------------------------------------------------");
    
    NSUInteger maxCount = MAX(humanCount, animalCount);
 
// В одном цикле выводить сначала человека а потом животное, доставая данные поочередно из двух разных массивов, если в одном из массивов объектов больше, то в конце должны выводиться только объекты этого массива (так как других уже нет)
    for (int i = 0; i < maxCount; i++) {
        NSLog(@"Index = %d", i);
        
        if (i < humanCount) {
            ASHuman *creature = [humans objectAtIndex:i];
            NSLog(@"%@", creature);
        }

        if (i < animalCount) {
            ASAnimal *creature = [animals objectAtIndex:i];
            NSLog(@"%@", creature);
        }
        
        NSLog(@" ");
    }
    
    NSLog(@"=========================================================");
    
// 5) Уровень "Супермен!"
    NSLog(@"5) Уровень \"Супермен!\"");
    NSLog(@"------------------------------------------------------------");
//Соединить животных и людей в одном массиве.
    NSMutableArray *unsortedCreatures = [NSMutableArray array];
    
    [unsortedCreatures addObjectsFromArray:humans];
    
    [unsortedCreatures addObjectsFromArray:animals];
    
    NSLog(@"Не сортированный массив: %@", unsortedCreatures);
    NSLog(@"------------------------------------------------------------");


//Используя нужный метод класса NSArray отсортировать массив (как результат будет другой массив).
    NSArray *sortedCreatures = [unsortedCreatures sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {

        //Сортировать так: сначала люди, а потом животные, люди отсортированы по имени, а животные по кличкам
        if ([obj1 isKindOfClass:[ASHuman class]] && [obj2 isKindOfClass:[ASHuman class]]) {
            
            return [[(ASHuman*)obj1 name] compare:[(ASHuman*)obj2 name]];
            
        } else if ([obj1 isKindOfClass:[ASAnimal class]] && [obj2 isKindOfClass:[ASAnimal class]]) {
            
            return [[(ASAnimal*)obj1 nickname] compare:[(ASAnimal*)obj2 nickname]];
            
        } else if ([obj1 isKindOfClass:[ASHuman class]]) {
            
            return NSOrderedAscending;
            
        } else {
            
            return NSOrderedDescending;
        }
    }];
    
    NSLog(@"Сортированный массив: %@", sortedCreatures);
    NSLog(@"=========================================================");
    
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
