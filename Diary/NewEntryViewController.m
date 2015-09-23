//
//  NewEntryViewController.m
//  Diary
//
//  Created by Konstantinos Livieratos on 9/23/15.
//  Copyright © 2015 Konstantinos Livieratos. All rights reserved.
//

#import "NewEntryViewController.h"
#import "DiaryEntry.h"
#import "CoreDataStack.h"

@interface NewEntryViewController ()

@end

@implementation NewEntryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(void)insertDiaryEntry {
    CoreDataStack *coreDataStack = [CoreDataStack defaultStack];
    DiaryEntry *entry = [NSEntityDescription insertNewObjectForEntityForName:@"DiaryEntry" inManagedObjectContext:coreDataStack.managedObjectContext];
    entry.body = self.textField.text;
    entry.date = [[NSDate date] timeIntervalSince1970];
    [coreDataStack saveContext];
}

-(void)dismissSelf {
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)doneWasPressed:(id)sender {
    [self insertDiaryEntry];
    [self dismissSelf];
}

- (IBAction)cancelWasPressed:(id)sender {
    [self dismissSelf];
}

@end
