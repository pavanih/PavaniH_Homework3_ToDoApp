//
//  ToDoItem.m
//  Pavanih_Homework3_TodoApp
//
//  Created by Pavani Haridasyam on 2/15/15.
//  Copyright (c) 2015 Pavani Haridasyam. All rights reserved.
//

#import "ToDoItem.h"

@implementation ToDoItem

+(instancetype)initWithTitle:(NSString*)title
{
    ToDoItem *item = [[self alloc] init];
    item.title = title;
    return item;
}

@end
