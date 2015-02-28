//
//  ViewController.m
//  Pavanih_Homework3_TodoApp
//
//  Created by Pavani Haridasyam on 2/14/15.
//  Copyright (c) 2015 Pavani Haridasyam. All rights reserved.
//

#import "ViewController.h"
#import "ToDoList.h"
#import "ToDoItem.h"


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.addButton.enabled = false;
    self.removeButton.enabled = false;
    self.inputTodo.delegate = self;
    
//    self.todoTable.dataSource = self;
  //  self.todoTable.delegate = self;
    // Do any additional setup after loading the view.
    
}

//- (void)setRepresentedObject:(id)representedObject {
//    [super setRepresentedObject:representedObject];
//
//    // Update the view, if already loaded.
//}

- (IBAction)textFieldAction:(id)sender {
    
}

- (IBAction)addButtonAction:(id)sender {
    
    NSTableCellView *cell = [self.todoTable makeViewWithIdentifier:@"Cell" owner: nil];
    cell.textField.stringValue = self.inputTodo.stringValue;
    NSLog(@"cell value is %@", cell.textField.stringValue);
    
}


- (IBAction)removeButtonAction:(id)sender {
}

- (IBAction)tableViewAction:(id)sender {
    
}


-(NSInteger) addButtonEnable {

    if ([self.inputTodo.stringValue length])
    {
        ToDoItem *newitem = [ToDoItem initWithTitle: (self.inputTodo.stringValue)];
        
        [self.todolist addItem: newitem];
        NSLog(@"new item is %@", newitem.title);
        NSLog(@"new list is %@", self.todolist.allItems);
        return 1;
    }
        else
        return 0;
}

-(void)controlTextDidChange:(NSNotification *)obj
{
    if ([self addButtonEnable])
        self.addButton.enabled = TRUE;
    else
        self.addButton.enabled = false;
}


@end
