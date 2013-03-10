//
//  ViewController.h
//  TestingStuff
//
//  Created by Shane Collins on 3/9/13.
//  Copyright (c) 2013 Madison Junior High School. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    //Constructer!!
    UIImageView *bg;
    UIImageView *ball;
    UIImageView *platform;
    
    NSInteger Speed;
}

@property (nonatomic, retain) IBOutlet UIImageView *bg;
@property (nonatomic, retain) IBOutlet UIImageView *ball;
@property (nonatomic, retain) IBOutlet UIImageView *platform;

@property (nonatomic) NSInteger Speed;

- (void) gameStatePlayNormal;

- (IBAction)moveDown:(id)sender;
- (IBAction)moveUp:(id)sender;
- (IBAction)moveLeft:(id)sender;
- (IBAction)moveRight:(id)sender;

@end
