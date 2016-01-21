//
//  LEAAlertController.m
//  EasyAlert
//
//  Created by Javier Laguna on 21/01/2016.
//  Copyright © 2016 Javier Laguna. All rights reserved.
//

#import "LEAAlertController.h"

#define GET_VA_LIST(param) \
va_list args; \
va_start(args, \
param); \

#define END_FOR_EACH_VA_LIST va_end(args);

@interface LEAAlertController ()

/**
 Adss an array of UIAlertAction to the alert.
 
 @param item - array of UIALertAction toa add.
 @param vargs - value of the UIALertAction.
 */
- (void)addOtherAction:(id)item
                 vargs:(va_list)args;

@end

@implementation LEAAlertController

#pragma mark - DismissibleAlertViewWithTitle

+ (instancetype)dismissibleAlertViewWithTitle:(NSString *)title
                                      message:(NSString *)message
                            cancelButtonTitle:(NSString *)cancelButtonTitle
{
    LEAAlertController *alert = [LEAAlertController alertControllerWithTitle:title
                                                                     message:message
                                                              preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *dismissAction = [UIAlertAction actionWithTitle:cancelButtonTitle
                                                            style:UIAlertActionStyleCancel
                                                          handler:nil];
    
    [alert addAction:dismissAction];
    
    return alert;
}

+ (instancetype)dismissibleAlertViewWithTitle:(NSString *)title
                                      message:(NSString *)message
                            cancelButtonTitle:(NSString *)cancelButtonTitle
                           otherButtonActions:(UIAlertAction *)otherButtonActions, ...
{
    LEAAlertController *alert = [LEAAlertController dismissibleAlertViewWithTitle:title
                                                                          message:message
                                                                cancelButtonTitle:cancelButtonTitle];
    
    GET_VA_LIST(otherButtonActions)
    
    [alert addOtherAction:otherButtonActions
                    vargs:args];
    
    END_FOR_EACH_VA_LIST
    
    return alert;
}

#pragma mark - DismissibleAlertViewWithError

+ (instancetype)dismissibleAlertViewWithError:(NSError *)error
                            cancelButtonTitle:(NSString *)cancelButtonTitle
{
    LEAAlertController *alert = [LEAAlertController alertControllerWithTitle:@"Error"
                                                                     message:error.localizedDescription
                                                              preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *dismissAction = [UIAlertAction actionWithTitle:cancelButtonTitle
                                                            style:UIAlertActionStyleCancel
                                                          handler:nil];
    
    [alert addAction:dismissAction];
    
    return alert;
}

+ (instancetype)dismissibleAlertViewWithError:(NSError *)error
                            cancelButtonTitle:(NSString *)cancelButtonTitle
                           otherButtonActions:(UIAlertAction *)otherButtonActions, ...
{
    LEAAlertController *alert = [LEAAlertController dismissibleAlertViewWithError:error
                                                                cancelButtonTitle:cancelButtonTitle];
    
    GET_VA_LIST(otherButtonActions)
    
    [alert addOtherAction:otherButtonActions
                    vargs:args];
    
    END_FOR_EACH_VA_LIST
    
    return alert;
}

#pragma mark - AlertViewWithTitle

+ (instancetype)alertViewWithTitle:(NSString *)title
                           message:(NSString *)message
                           actions:(UIAlertAction *)actions, ...
{
    LEAAlertController *alert = [LEAAlertController alertControllerWithTitle:title
                                                                     message:message
                                                              preferredStyle:UIAlertControllerStyleAlert];
    GET_VA_LIST(actions)
    
    [alert addOtherAction:actions
                    vargs:args];
    
    END_FOR_EACH_VA_LIST
    
    return alert;
}

#pragma mark - AddOtherAction

- (void)addOtherAction:(id)item
                 vargs:(va_list)args
{
    for (UIAlertAction *arg = item; arg != nil; arg = va_arg(args, UIAlertAction *))
    {
        [self addAction:arg];
    }
}

#pragma mark - ShowInViewController

- (void)showInViewController:(UIViewController *)viewController
{
    [viewController presentViewController:self
                                 animated:YES
                               completion:nil];
}

@end
