//
//  ViewController.m
//  Kip Up
//
//  Created by Jainam on 10/09/15.
//  Copyright (c) 2015 Kip Up. All rights reserved.
//

#import "ViewController.h"
#import "SWRevealViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(BOOL) textFieldShouldReturn:(UITextField *)textField {
    [txtTest resignFirstResponder];
    return YES;
}
- (void)viewDidLoad {
    txtTest.delegate = self;
    [super viewDidLoad];
    
    _barButton.target = self.revealViewController;
    _barButton.action = @selector(revealToggle:);
    
    
 //   [self.panGestureRecognizer:self.revealViewController.revealViewController.panGestureRecognizer];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)firstlastnextpressed:(id)sender {
}
@end
