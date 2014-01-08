//
//  AppDelegate.m
//  EjemploEstructuraBasica
//
//  Created by Eduardo Valenzuela on 1/7/14.
//  Copyright (c) 2014 Eduardo Valenzuela. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    StartingVC * starterVC = [[StartingVC alloc]initWithNibName:@"StartingVC" bundle:[NSBundle mainBundle]];
    
    
    [[self window] setRootViewController:starterVC];
    [[self window] makeKeyAndVisible];
    return YES;
}

@end