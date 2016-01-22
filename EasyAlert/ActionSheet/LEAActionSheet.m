//
//  LEAActionSheet.m
//  EasyAlert
//
//  Created by Javier Laguna on 21/01/2016.
//  Copyright © 2016 Javier Laguna. All rights reserved.
//

#import "LEAActionSheet.h"

@interface LEAActionSheet ()

/**
 Adds a button to an an UIAlertController.
 
 @param title - text to show in the button.
 @param block- actions to be executed on pressing the button.
 @param style - specific style for the button.
 */
- (void)addButtonWithTitle:(NSString *)title
                  andBlock:(LEAActionSheetButtonPressed)block
                     style:(UIAlertActionStyle)style;

@end

@implementation LEAActionSheet

#pragma mark - Init

+ (instancetype)actionSheetWithTitle:(NSString *)title
{
    LEAActionSheet *actionSheet = [LEAActionSheet alertControllerWithTitle:title
                                                                   message:nil
                                                            preferredStyle:UIAlertControllerStyleActionSheet];
    
    return actionSheet;
}

#pragma mark  - Generic

- (void)addButtonWithTitle:(NSString *)title
                  andBlock:(LEAActionSheetButtonPressed)block
                     style:(UIAlertActionStyle)style
{
    UIAlertAction *action = [UIAlertAction actionWithTitle:title
                                                     style:style
                                                   handler:^(UIAlertAction *action)
                             {
                                 if (block)
                                 {
                                     ((LEAActionSheetButtonPressed)block)(self);
                                 }
                             }];
    
    [self addAction:action];
}

#pragma mark - StyledButtons

- (void)addCancelButtonWithTitle:(NSString *)title
                           block:(LEAActionSheetButtonPressed)block
{
    [self addButtonWithTitle:title
                    andBlock:block
                       style:UIAlertActionStyleCancel];
}

- (void)addDestructiveButtonWithTitle:(NSString *)title
                                block:(LEAActionSheetButtonPressed)block
{
    [self addButtonWithTitle:title
                    andBlock:block
                       style:UIAlertActionStyleDestructive];
}

- (void)addButtonWithTitle:(NSString *)title
                     block:(LEAActionSheetButtonPressed)block
{
    [self addButtonWithTitle:title
                    andBlock:block
                       style:UIAlertActionStyleDefault];
}

#pragma mark - ShowInViewController

- (void)showInViewController:(UIViewController *)viewController
{
    [viewController presentViewController:self
                                 animated:YES
                               completion:nil];
}

@end

