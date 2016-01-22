//
//  EAEHomeViewController.m
//  EasyAlertExample
//
//  Created by Javier Laguna on 21/01/2016.
//  Copyright © 2016 Javier Laguna. All rights reserved.
//

#import "EAEHomeViewController.h"

#import <LEAAlertController.h>
#import <LEAActionSheet.h>

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

- (IBAction)showDismissableAlert1:(id)sender
{
    LEAAlertController *alert = [LEAAlertController dismissibleAlertViewWithTitle:@"Info"
                                                                          message:@"This is an Easy Alert example"
                                                                cancelButtonTitle:@"Got it!"];
    
    [alert showInViewController:self];
}

- (IBAction)showDismissableAlert2:(id)sender
{
    __weak typeof (self) weakSelf = self;
    
    UIAlertAction *paintItRedAction = [UIAlertAction actionWithTitle:@"Paint it Red"
                                                               style:UIAlertActionStyleDefault
                                                             handler:^(UIAlertAction  *action)
                                       {
                                           weakSelf.view.backgroundColor = [UIColor redColor];
                                       }];
    
    //If the background color is already red we don't let them try to change it again
    
    paintItRedAction.enabled = (self.view.backgroundColor == [UIColor whiteColor]);
    
    UIAlertAction *restoreAction = [UIAlertAction actionWithTitle:@"Restore"
                                                            style:UIAlertActionStyleDefault
                                                          handler:^(UIAlertAction  *action)
                                    {
                                        weakSelf.view.backgroundColor = [UIColor whiteColor];
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

- (IBAction)showDismissableAlert3:(id)sender
{
    __weak typeof (self) weakSelf = self;
    
    UIAlertAction *paintItRedAction = [UIAlertAction actionWithTitle:@"Paint it Red"
                                                               style:UIAlertActionStyleDefault
                                                             handler:^(UIAlertAction  *action)
                                       {
                                           weakSelf.view.backgroundColor = [UIColor redColor];
                                       }];
    
    //If the background color is already red we don't let them try to change it again
    
    paintItRedAction.enabled = (self.view.backgroundColor == [UIColor whiteColor]);
    
    UIAlertAction *restoreAction = [UIAlertAction actionWithTitle:@"Restore"
                                                            style:UIAlertActionStyleDefault
                                                          handler:^(UIAlertAction  *action)
                                    {
                                        weakSelf.view.backgroundColor = [UIColor whiteColor];
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

- (IBAction)showActionSheet1:(id)sender
{
    __weak typeof (self) weakSelf = self;
    
    LEAActionSheet *actionSheet = [LEAActionSheet actionSheetWithTitle:@"Select an option:"];
    
    [actionSheet addButtonWithTitle:@"Regular option"
                              block:^(LEAActionSheet *actionSheet)
     {
         [weakSelf showDismissableAlert1:nil];
     }];
    
    [actionSheet  addCancelButtonWithTitle:@"Cancel"
                                     block:^(LEAActionSheet *actionSheet)
     {
         LEAAlertController *alert = [LEAAlertController dismissibleAlertViewWithTitle:@"Info"
                                                                               message:@"Cancelled"
                                                                     cancelButtonTitle:@"Got it!"];
         
         [alert showInViewController:weakSelf];
     }];
    
    [actionSheet addDestructiveButtonWithTitle:@"Destructive button"
                                         block:^(LEAActionSheet *actionSheet)
     {
         LEAAlertController *alert = [LEAAlertController dismissibleAlertViewWithTitle:@"Warning"
                                                                               message:@"Destructive button pressed"
                                                                     cancelButtonTitle:@"Got it!"];
         
         [alert showInViewController:weakSelf];
     }];
    
    [actionSheet showInViewController:self];
}

@end
