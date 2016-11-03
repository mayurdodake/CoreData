//
//  SaveData+CoreDataProperties.h
//  MachineTest CoreData
//
//  Created by apple on 24/08/16.
//  Copyright © 2016 felix-its. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "SaveData.h"

NS_ASSUME_NONNULL_BEGIN

@interface SaveData (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *username;
@property (nullable, nonatomic, retain) NSString *password;
@property (nullable, nonatomic, retain) NSData *imageview;

@end

NS_ASSUME_NONNULL_END
