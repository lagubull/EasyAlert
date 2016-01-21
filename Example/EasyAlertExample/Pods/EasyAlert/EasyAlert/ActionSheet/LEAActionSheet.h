//
//  LEAActionSheet.h
//  EasyAlert
//
//  Created by Javier Laguna on 21/01/2016.
//  Copyright © 2016 Javier Laguna. All rights reserved.
//

#import <UIKit/UIKit.h>

@class LEAActionSheet;

/**
 Wraps UIALertController to simplify creating a pop up menu and reduce the boilerplate code required.
 **/
@interface LEAActionSheet : UIAlertController

/**
 Block to be executed on pressing the option.
 */
typedef void (^LEAActionSheetButtonPressed)(LEAActionSheet *actionSheet);

/**
 Creates an action sheet with a title.
 
 @param title - text to display on the action sheet.
 
 @return instance of the LEAActionSheet.
 */
+ (instancetype)actionSheetWithTitle:(NSString *)title;

/**
 Adds a button with an action.
 
 @param title - title for the button.
 @return block - action to be exectured after pressing on the button.
 */
- (void)addButtonWithTitle:(NSString *)title
                  andBlock:(LEAActionSheetButtonPressed)block;

/**
 Adds a button with UIAlertActionStyleCancel style and an action.
 
 @param title - title for the button.
 @return block - action to be exectured after pressing on the button.
 */
- (void)addCancelButtonWithTitle:(NSString *)title
                        andBlock:(LEAActionSheetButtonPressed)block;

/**
 Adds a button with UIAlertActionStyleDestructive style and an action.
 
 @param title - title for the button.
 @return block - action to be exectured after pressing on the button.
 */
- (void)addDestructiveButtonWithTitle:(NSString *)title
                             andBlock:(LEAActionSheetButtonPressed)block;

/**
 Presents the alert.
 
 @param viewController - UIViewController to present the alert in.
 */
- (void)showInViewController:(UIViewController *)viewController;

@end
