//
//  ViewController.h
//  Kip Up
//
//  Created by Jainam on 10/09/15.
//  Copyright (c) 2015 Kip Up. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate> {
   // NSURLConnection *currentConnection;
    
}

@property (weak, nonatomic) IBOutlet UITextField *firstname;
@property (weak, nonatomic) IBOutlet UITextField *lastname;
@property (weak, nonatomic) IBOutlet UIButton *homePage;

@property (weak, nonatomic) IBOutlet UITextField *phonenumber;
@property (weak, nonatomic) IBOutlet UITextField *emailid;
@property (weak, nonatomic) IBOutlet UIButton *registerButton;

@property (weak, nonatomic) IBOutlet UITextField *confirmCode;
@property (weak, nonatomic) IBOutlet UIButton *confirmButton;

@property (weak, nonatomic) IBOutlet UIButton *sendAgainButton;





@property (weak, nonatomic) IBOutlet UIBarButtonItem *barButton;


@end

