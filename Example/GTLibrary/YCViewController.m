//
//  YCViewController.m
//  GTLibrary
//
//  Created by guohuaizhen on 02/13/2019.
//  Copyright (c) 2019 guohuaizhen. All rights reserved.
//

#import "YCViewController.h"
#import <SystemConfiguration/CaptiveNetwork.h>

@interface YCViewController ()

@end

@implementation YCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    
    
}

-(NSString *)fetchSSIDInfo
{
    NSString *currentSSID = @"NOT FOUND";
    CFArrayRef myArray = CNCopySupportedInterfaces();
    if (myArray) {
        NSDictionary *myDict = CFBridgingRelease(CNCopyCurrentNetworkInfo(CFArrayGetValueAtIndex(myArray, 0)));
    }
    return currentSSID;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
