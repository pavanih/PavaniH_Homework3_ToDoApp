//
//  ToDoList.m
//  Pavanih_Homework3_TodoApp
//
//  Created by Pavani Haridasyam on 2/15/15.
//  Copyright (c) 2015 Pavani Haridasyam. All rights reserved.
//

#import "ToDoList.h"
#import "ToDoItem.h"

@implementation ToDoList

-(void)addItem:(ToDoItem *)item {
  
  [_allItems addObject:item];
   
    NSLog(@"in add item %@",self.allItems);
    
    
}


+(instancetype)groceryList {
    NSMutableArray *listArray = [[NSMutableArray alloc] init];
    [listArray addObject:@"Tomatoes"];
    [listArray addObject:@"Spinach"];
    [listArray addObject:@"Cheese"];
    [listArray addObject:@"Salt"];
    [listArray addObject:@"Sugar"];
    
    
    
    ToDoList *grocerylist = [ToDoList new];
    grocerylist.allItems = listArray;
    
    NSLog(@ "the grocery list is %@", grocerylist.allItems);
    
    return grocerylist;
}

+(instancetype)airplaneLandingChecklist {

    NSMutableArray *listArray = [[NSMutableArray alloc] init];
    [listArray addObject:@"Check seat back pockets"];
    [listArray addObject:@"Close devices"];
    [listArray addObject:@"Wear shoes"];
    [listArray addObject:@"Wear scarf"];
    [listArray addObject:@"Empty bladder"];
    
    
    ToDoList *airportList = [ToDoList new];
    airportList.allItems = listArray;
    
    NSLog(@ "the grocery list is %@", airportList.allItems);

    return airportList;
}


-(BOOL)canAddItem:(ToDoItem *)item{
 
    bool value = true;
    return value;
}

@end
