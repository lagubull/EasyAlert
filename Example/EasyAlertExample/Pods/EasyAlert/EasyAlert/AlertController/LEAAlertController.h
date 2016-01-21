//
//  LEAAlertController.h
//  EasyAlert
//
//  Created by Javier Laguna on 21/01/2016.
//  Copyright © 2016 Javier Laguna. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 Wraps UIALertController to simplify creating a pop up message and reduce the boilerplate code required.
 **/
@interface LEAAlertController : UIAlertController

/**
 Creates an alert view with a button to dismiss.
 
 @param title - Message for the title.
 @param message - main text in the alert.
 @param cancelButtonTitle - text on the dismissal button.
 
 @return an instance of LEAAlertController.
 **/
+ (instancetype)dismissibleAlertViewWithTitle:(NSString *)title
                                      message:(NSString *)message
                            cancelButtonTitle:(NSString *)cancelButtonTitle;

/**
 Creates an alert view with a button to dismiss and some other buttons.
 
 @param title - Message for the title.
 @param message - main text in the alert.
 @param cancelButtonTitle - text on the dismissal button.
 @param otherButtonActions - array of UIALertAction to show.
 
 @return an instance of LEAAlertController.
 **/
+ (instancetype)dismissibleAlertViewWithTitle:(NSString *)title
                                      message:(NSString *)message
                            cancelButtonTitle:(NSString *)cancelButtonTitle
                           otherButtonActions:(UIAlertAction *)otherButtonActions, ... NS_REQUIRES_NIL_TERMINATION;

/**
 Creates an alert view with a button to dismiss and "Error" as title.
 
 @param title - Message for the title.
 @param message - main text in the alert.
 @param cancelButtonTitle - text on the dismissal button.
 
 @return an instance of LEAAlertController.
 **/
+ (instancetype)dismissibleAlertViewWithError:(NSError *)error
                            cancelButtonTitle:(NSString *)cancelButtonTitle;

/**
 Creates an alert view with a button to dismiss and "Error" as title and some other buttons.
 
 @param title - Message for the title.
 @param message - main text in the alert.
 @param cancelButtonTitle - text on the dismissal button.
 
 @return an instance of LEAAlertController.
 **/
+ (instancetype)dismissibleAlertViewWithError:(NSError *)error
                            cancelButtonTitle:(NSString *)cancelButtonTitle
                           otherButtonActions:(UIAlertAction *)otherButtonActions, ... NS_REQUIRES_NIL_TERMINATION;

/**
 Creates an alert view with some buttons.
 
 @param title - Message for the title.
 @param message - main text in the alert.
 @param actions - array of UIALertAction to show.
 
 @return an instance of LEAAlertController.
 **/
+ (instancetype)alertViewWithTitle:(NSString *)title
                           message:(NSString *)message
                           actions:(UIAlertAction *)action, ... NS_REQUIRES_NIL_TERMINATION;

/**
 Presents the alert.
 
 @param viewController - UIViewController to present the alert in.
 */
- (void)showInViewController:(UIViewController *)viewController;

@end
