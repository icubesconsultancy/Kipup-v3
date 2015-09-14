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
@synthesize firstname,lastname,phonenumber,emailid,confirmationcode; // variables

- (void)viewDidLoad {
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
    
    NSString *first_name = firstname.text;
    NSString *last_name = lastname.text;
    
    NSLog(@"First Name from Text box : %@", first_name);
    NSLog(@"Last Name from Text box : %@", last_name);
    
}

- (IBAction)regstrationSignup:(id)sender {
    
    NSString *phone_number = phonenumber.text;
    NSString *email = emailid.text;
    
    NSLog(@"Phone Number from Text box : %@", phone_number);
    NSLog(@"email Address from Text box : %@", email);
    
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:@"http://www.trykipup.com/api/v1/users/register?first_name=%@&last_name=%@&phone_number=%@&email=%@",firstname.text,lastname.text,phone_number,email];
                                                           cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                       timeoutInterval:10.0];
    [request setHTTPMethod:@"POST"];
    
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLSessionDataTask *dataTask = [session dataTaskWithRequest:request
                                                completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
                                                    if (error) {
                                                        NSLog(@"%@", error);
                                                    } else {
                                                        NSHTTPURLResponse *httpResponse = (NSHTTPURLResponse *) response;
                                                        NSLog(@"%@", httpResponse);
                                                    }
                                                }];
    [dataTask resume];
    
    
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:@"http://www.trykipup.com/api/v1/users/request_login_pin"]
                                                           cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                       timeoutInterval:10.0];
    [request setHTTPMethod:@"POST"];
    
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLSessionDataTask *dataTask = [session dataTaskWithRequest:request
                                                completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
                                                    if (error) {
                                                        NSLog(@"%@", error);
                                                    } else {
                                                        NSHTTPURLResponse *httpResponse = (NSHTTPURLResponse *) response;
                                                        NSLog(@"%@", httpResponse);
                                                    }
                                                }];
    [dataTask resume];
    
}

- (IBAction) confirmCode:(id)sender {
   
    NSString *ccode = confirmationcode.text;
    NSLog(@"Confirmation Code from Text box : %@", ccode);
    
    
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:@"http://www.trykipup.com/api/v1/users/login_with_pin?pin_code=%@&phone_number=%@",pin_code,phone_number]
                                                           cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                       timeoutInterval:10.0];
    [request setHTTPMethod:@"POST"];
    
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLSessionDataTask *dataTask = [session dataTaskWithRequest:request
                                                completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
                                                    if (error) {
                                                        NSLog(@"%@", error);
                                                    } else {
                                                        NSHTTPURLResponse *httpResponse = (NSHTTPURLResponse *) response;
                                                        NSLog(@"%@", httpResponse);
                                                    }
                                                }];
    [dataTask resume];
    
    
}

@end
