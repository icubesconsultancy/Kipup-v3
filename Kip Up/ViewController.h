//
//  ViewController.h
//  Kip Up
//
//  Created by Jainam on 10/09/15.
//  Copyright (c) 2015 Kip Up. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate> {
    UITextField *txtTest;
}

@property (weak, nonatomic) IBOutlet UITextField *firstname;
@property (weak, nonatomic) IBOutlet UITextField *lastname;
@property (weak, nonatomic) IBOutlet UIButton *firstlastnext;


@property (weak, nonatomic) IBOutlet UIBarButtonItem *barButton;

- (IBAction)firstlastnextpressed:(id)sender;

@end

