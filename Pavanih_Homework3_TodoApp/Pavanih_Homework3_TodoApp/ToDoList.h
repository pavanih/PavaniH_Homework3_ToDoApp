//
//  ToDoList.h
//  Pavanih_Homework3_TodoApp
//
//  Created by Pavani Haridasyam on 2/15/15.
//  Copyright (c) 2015 Pavani Haridasyam. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ToDoItem.h"



@interface ToDoList : NSObject

//properties
@property (copy,nonatomic) NSMutableArray *allItems;    // an array of all items
@property (nonatomic) NSUInteger itemCount; // number of items contained in list
//-(NSArray*)itemTitles;  // an array of all item titles (NSString*)
@property (nonatomic) BOOL allowDuplicateItems;


//constructors
+(instancetype)groceryList; // make a list filled with grocery items
+(instancetype)airplaneLandingChecklist; // put on scarf. check!


//methods
-(void)addItem:(ToDoItem *)item;    // insert item if OK
-(BOOL)canAddItem:(ToDoItem *)item; // check if OK to insert

//-(void)addItemWithTitle:(NSString*)title; // create and insert item if OK
//-(BOOL)canAddItemWithTitle:(NSString *)item; // check if OK to insert
//-(BOOL)hasItemWithTitle:(NSString*)title; // check if any item contained already has same title



@end
