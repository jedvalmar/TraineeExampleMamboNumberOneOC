//
//  ViewController.m
//  EjemploEstructuraBasica
//
//  Created by Eduardo Valenzuela on 1/7/14.
//  Copyright (c) 2014 Eduardo Valenzuela. All rights reserved.
//

#import "StartingVC.h"

@interface StartingVC ()

@end

@implementation StartingVC

-(id) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        // creas variables custom
    }
    
    return self;
}

-(IBAction)onPuchon:(UIButton *)sender
{
    __block CGRect originalFrame = [[self aButton]frame];
    
    
    [UIView animateWithDuration:0.5f delay:0 options:UIViewAnimationOptionAllowAnimatedContent animations:^
    {
        CGRect otherFrame = CGRectMake(originalFrame.origin.x, originalFrame.origin.y - 100, originalFrame.size.width, originalFrame.size.height);
        
        [[self aButton] setFrame:otherFrame];
        
    } completion:^(BOOL finished)
     {
         [UIView animateWithDuration:0.5f delay:0 options:UIViewAnimationOptionAllowAnimatedContent animations:^
          {
              CGRect otherFrame = CGRectMake(originalFrame.origin.x, originalFrame.origin.y + 100, originalFrame.size.width, originalFrame.size.height);
              
              [[self aButton] setFrame:otherFrame];
              
          } completion:^(BOOL finished)
          {
              [UIView animateWithDuration:0.5f delay:0 options:UIViewAnimationOptionAllowAnimatedContent animations:^
              {
                  CGRect otherFrame = originalFrame;
                  
                  [[self aButton] setFrame:otherFrame];
                  
              } completion:^(BOOL finished)
              {
                  if (finished) {
                      NSLog(@"Me movi apa!!");
                  } else {
                      NSLog(@"No se pudo!");
                  }
                  
              }];
              
          }];
        
    }];
    
}

- (void)viewDidLoad
{
    
    [super viewDidLoad];
    
}

@end
