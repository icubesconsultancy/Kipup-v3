//
//  ViewController.h
//  Kip Up
//
//  Created by Jainam on 10/09/15.
//  Copyright (c) 2015 Kip Up. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
}

@property (weak, nonatomic) IBOutlet UITextField *firstname;
@property (weak, nonatomic) IBOutlet UITextField *lastname;
@property (weak, nonatomic) IBOutlet UIButton *firstlastnext;

@property (weak, nonatomic) IBOutlet UITextField *phonenumber;
@property (weak, nonatomic) IBOutlet UITextField *emailid;
@property (weak, nonatomic) IBOutlet UIButton *registrationSignup;

@property (weak, nonatomic) IBOutlet UITextField *confirmationcode;
@property (weak, nonatomic) IBOutlet UIButton *confirmcode;





@property (weak, nonatomic) IBOutlet UIBarButtonItem *barButton;


@end

