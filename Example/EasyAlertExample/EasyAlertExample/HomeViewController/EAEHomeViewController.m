//
//  EAEHomeViewController.m
//  EasyAlertExample
//
//  Created by Javier Laguna on 21/01/2016.
//  Copyright © 2016 Javier Laguna. All rights reserved.
//

#import "EAEHomeViewController.h"

#import <LEAAlertController.h>

@interface EAEHomeViewController ()

@end

@implementation EAEHomeViewController

#pragma mark - LifeCycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
}

#pragma mark - Examples

- (IBAction)ShowDismissableAlert1:(id)sender
{
    LEAAlertController *alert = [LEAAlertController dismissibleAlertViewWithTitle:@"Info"
                                                                          message:@"This is an Easy Alert example"
                                                                cancelButtonTitle:@"Got it!"];
    
    [alert showInViewController:self];
}

- (IBAction)ShowDismissableAlert2:(id)sender
{
    UIAlertAction *paintItRedAction = [UIAlertAction actionWithTitle:@"Paint it Red"
                                                               style:UIAlertActionStyleDefault
                                                             handler:^(UIAlertAction  *action)
                                       {
                                           self.view.backgroundColor = [UIColor redColor];
                                       }];
    
    //If the background color is already red we don't let them try to change it again
    
    paintItRedAction.enabled = (self.view.backgroundColor == [UIColor whiteColor]);
    
    UIAlertAction *restoreAction = [UIAlertAction actionWithTitle:@"Restore"
                                                            style:UIAlertActionStyleDefault
                                                          handler:^(UIAlertAction  *action)
                                    {
                                        self.view.backgroundColor = [UIColor whiteColor];
                                    }];
    
    //If the background color is not red we don't let them try to change it
    
    restoreAction.enabled = (self.view.backgroundColor == [UIColor redColor]);
    
    LEAAlertController *alert = [LEAAlertController dismissibleAlertViewWithTitle:@"Info"
                                                                          message:@"This is an Easy Alert example"
                                                                cancelButtonTitle:@"Got it!"
                                                               otherButtonActions:paintItRedAction, restoreAction, nil
                                 ];
    
    [alert showInViewController:self];
}

- (IBAction)ShowDismissableAlert3:(id)sender
{
    UIAlertAction *paintItRedAction = [UIAlertAction actionWithTitle:@"Paint it Red"
                                                               style:UIAlertActionStyleDefault
                                                             handler:^(UIAlertAction  *action)
                                       {
                                           self.view.backgroundColor = [UIColor redColor];
                                       }];
    
    //If the background color is already red we don't let them try to change it again
    
    paintItRedAction.enabled = (self.view.backgroundColor == [UIColor whiteColor]);
    
    UIAlertAction *restoreAction = [UIAlertAction actionWithTitle:@"Restore"
                                                            style:UIAlertActionStyleDefault
                                                          handler:^(UIAlertAction  *action)
                                    {
                                        self.view.backgroundColor = [UIColor whiteColor];
                                    }];
    
    //If the background color is not red we don't let them try to change it
    
    restoreAction.enabled = (self.view.backgroundColor == [UIColor redColor]);
    
    UIAlertAction *gotItAction = [UIAlertAction actionWithTitle:@"Got it!"
                                                          style:UIAlertActionStyleCancel
                                                        handler:nil];
    
    LEAAlertController *alert = [LEAAlertController alertViewWithTitle:@"Info"
                                                               message:@"This is an Easy Alert example"
                                                               actions:gotItAction, paintItRedAction, restoreAction, nil];
    
    [alert showInViewController:self];
}

@end
