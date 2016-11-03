//
//  ViewController.m
//  MachineTest CoreData
//
//  Created by apple on 24/08/16.
//  Copyright © 2016 felix-its. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import "SaveData.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)saveBtnClick:(id)sender {
    
    
    UIApplication *myapplication=[UIApplication sharedApplication];
    
    AppDelegate *mydelegate=(AppDelegate *)myapplication.delegate;
    
    NSManagedObjectContext *context=mydelegate.managedObjectContext;
    
    SaveData *s1=[NSEntityDescription insertNewObjectForEntityForName:@"SaveData" inManagedObjectContext:context];
    
    
    s1.username=_usernametf.text;
    s1.password=_passwordtf.text;
   
    if(_segment.selectedSegmentIndex==0)
    {
        NSData *data=UIImagePNGRepresentation(_imgview1.image);
        s1.imageview=data;
        
    }
    else if (_segment.selectedSegmentIndex==1)
    {
        NSData *data=UIImagePNGRepresentation(_imgview2.image); // image is in NSData so we r com=nverting img into NSData format
        
        s1.imageview=data;

    }
    else
    {
        NSData *data=UIImagePNGRepresentation(_imgview3.image);
        s1.imageview=data;

    }
    
    
    [context save:nil];
    
    _usernametf.text=@"";
    _passwordtf.text=@"";
    

    
    
}
@end
