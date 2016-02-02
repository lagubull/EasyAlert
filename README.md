[![Build Status](https://travis-ci.org/lagubull/EasyAlert.svg)](https://travis-ci.org/lagubull/EasyAlert)
[![Version](https://img.shields.io/cocoapods/v/EasyAlert.svg?style=flat)](http://cocoapods.org/pods/EasyAlert)
[![License](https://img.shields.io/cocoapods/l/EasyAlert.svg?style=flat)](http://cocoapods.org/pods/EasyAlert)
[![Platform](https://img.shields.io/cocoapods/p/EasyAlert.svg?style=flat)](http://cocoapods.org/pods/EasyAlert)
[![CocoaPods](https://img.shields.io/cocoapods/metrics/doc-percent/EasyAlert.svg)](http://cocoapods.org/pods/EasyAlert)
[![Readme Score](http://readme-score-api.herokuapp.com/score.svg?url=https://github.com/lagubull/easyalert/)](http://clayallsopp.github.io/readme-score?url=https://github.com/lagubull/easyalert/)

EasyAlert is a bundle of convenient methods that wrap UIALertController to reduce the amount of boiler plate code needed.

##Installation via [Cocoapods](https://cocoapods.org/)

To integrate EasyAlert into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '8.0'

pod 'EasyAlert'
```

Then, run the following command:

```bash
$ pod install
```

> CocoaPods 0.39.0+ is required to build EasyAlert.

##Usage

EasyAlert is built on top of UIAlertController. It is composed of an alert view (pop up message) and an Action Sheet (bottom up menu).

#### AlertController

####Creation

```objc
#import <LEAAlertController.h>

....

    LEAAlertController *alert = [LEAAlertController dismissibleAlertViewWithTitle:@"Info"
                                                                          message:@"This is an Easy Alert example"
                                                                cancelButtonTitle:@"Got it!"];                                                         
```

#### Presentation

```objc
	[alert showInViewController:self];
```

#### AlertController

####Creation

```objc
#import <LEAActionSheet.h>

....

 LEAActionSheet *actionSheet = [LEAActionSheet actionSheetWithTitle:@"Select an option:"];
    
    [actionSheet addButtonWithTitle:@"Regular option"
                           andBlock:^(LEAActionSheet *actionSheet)
     {
         [self showDismissableAlert1:nil];
     }];

```

#### Presentation

```objc
	[actionSheet showInViewController:self];
```

EasyAlert comes with an [example project](https://github.com/lagubull/EasyAlert/tree/master/Example/EasyAlertExample) to provide more details than listed above.

##Found an issue?

Please open a [new Issue here](https://github.com/lagubull/EasyAlert/issues/new) if you run into a problem specific to EasyAlert, have a feature request, or want to share a comment.

Pull requests are encouraged and greatly appreciated! Please try to maintain consistency with the existing. If you're considering taking on significant changes or additions to the project, please communicate in advance by opening a new Issue. This allows everyone to get onboard with upcoming changes, ensures that changes align with the project's design philosophy, and avoids duplicated work.

Thank you!
