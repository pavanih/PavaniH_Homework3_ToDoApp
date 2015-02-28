//
//  ViewController.h
//  Pavanih_Homework3_TodoApp
//
//  Created by Pavani Haridasyam on 2/14/15.
//  Copyright (c) 2015 Pavani Haridasyam. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "ToDoList.h"

@interface ViewController : NSViewController <NSTextFieldDelegate>


@property (weak) IBOutlet NSButton *addButton;
@property (weak) IBOutlet NSButton *removeButton;
@property (weak) IBOutlet NSButton *checkDuplicates;
@property (weak) IBOutlet NSTextField *inputTodo;

@property (weak) IBOutlet NSTableView *todoTable;
@property (strong, nonatomic) ToDoList *todolist;



@end

