//
//  ToDoItem.h
//  Pavanih_Homework3_TodoApp
//
//  Created by Pavani Haridasyam on 2/15/15.
//  Copyright (c) 2015 Pavani Haridasyam. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ToDoItem : NSObject

//properties
@property (copy) NSString *title;

//constructors
+(instancetype)initWithTitle:(NSString*)name;

@end
