//
//  DiaryEntry+CoreDataProperties.h
//  Diary
//
//  Created by Konstantinos Livieratos on 9/23/15.
//  Copyright © 2015 Konstantinos Livieratos. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "DiaryEntry.h"

NS_ASSUME_NONNULL_BEGIN

@interface DiaryEntry (CoreDataProperties)

@property (nonatomic) NSTimeInterval date;
@property (nullable, nonatomic, retain) NSString *body;
@property (nullable, nonatomic, retain) NSData *images;
@property (nonatomic) int16_t mood;
@property (nullable, nonatomic, retain) NSString *location;

@property (nonatomic, readonly) NSString *sectionName;

@end

NS_ASSUME_NONNULL_END
