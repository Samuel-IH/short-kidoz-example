//
//
//  main.m
//  Kidoz Integration Tests
//
//  Created by Samuel The Magnificent on 12/14/20.
//  Copyright © 2020 ___ORGANIZATIONNAME___. All rights reserved.
//  

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
