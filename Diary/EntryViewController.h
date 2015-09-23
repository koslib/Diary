//
//  NewEntryViewController.h
//  Diary
//
//  Created by Konstantinos Livieratos on 9/23/15.
//  Copyright © 2015 Konstantinos Livieratos. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DiaryEntry;

@interface EntryViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *textField;

@property(nonatomic, strong) DiaryEntry *entry;

@end
