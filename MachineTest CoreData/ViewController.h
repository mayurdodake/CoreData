//
//  ViewController.h
//  MachineTest CoreData
//
//  Created by apple on 24/08/16.
//  Copyright © 2016 felix-its. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *usernametf;

@property (weak, nonatomic) IBOutlet UITextField *passwordtf;

@property (weak, nonatomic) IBOutlet UISegmentedControl *segment;

@property (weak, nonatomic) IBOutlet UIImageView *imgview1;

@property (weak, nonatomic) IBOutlet UIImageView *imgview2;

@property (weak, nonatomic) IBOutlet UIImageView *imgview3;

- (IBAction)saveBtnClick:(id)sender;


@end

