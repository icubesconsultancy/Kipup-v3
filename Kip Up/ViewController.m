//
//  ViewController.m
//  Kip Up
//
//  Created by Jainam on 10/09/15.
//  Copyright (c) 2015 Kip Up. All rights reserved.
//

#import "ViewController.h"
#import "SWRevealViewController.h"
#import <Foundation/Foundation.h>

@interface ViewController ()

@end

@implementation ViewController
@synthesize firstname,lastname,phonenumber,emailid,confirmCode; // variables
NSString *first_name=@"";
NSString *last_name=@"";
NSString *phone_number=@"";
NSString *email_id=@"";
NSString *cCode=@"";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _barButton.target = self.revealViewController;
    _barButton.action = @selector(revealToggle:);
    
    
 //   [self.panGestureRecognizer:self.revealViewController.revealViewController.panGestureRecognizer];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)homePage:(id)sender {
    first_name = firstname.text;
    last_name = lastname.text;
    
    NSLog(@"First Name from Text box : %@", first_name);
    NSLog(@"Last Name from Text box : %@", last_name);

}
- (IBAction)registerButton:(id)sender {
    phone_number = phonenumber.text;
    email_id = emailid.text;
    
    NSLog(@"Phone Number from Text box : %@", phone_number);
    NSLog(@"Email Address from Text box : %@", email_id);
    
}
- (IBAction)confirmButton:(id)sender {
    cCode = confirmCode.text;
    
    NSLog(@"Confirmation Code from Text box : %@", cCode);
    
    
}
- (IBAction)sendAgainButton:(id)sender {
}
@end
