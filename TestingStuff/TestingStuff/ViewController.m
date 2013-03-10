//
//  ViewController.m
//  TestingStuff
//
//  Created by Shane Collins on 3/9/13.
//  Copyright (c) 2013 Madison Junior High School. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize bg, ball, platform;
@synthesize Speed;


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [NSTimer scheduledTimerWithTimeInterval:1.0/60 target:self selector:@selector(gameLoop) userInfo:nil repeats:YES];
    
    Speed = 6;
}


-(void) gameLoop
{
    [self gameStatePlayNormal];
}

-(void) gameStatePlayNormal 
{
    ball.center = CGPointMake(ball.center.x, ball.center.y);
/*
    if (ball.center.x > 300) 
    {
        Speed = -6;
    }
    if (ball.center.x < 32)
    {
        Speed = 6;
    }
*/
    
    if (ball.center.x > platform.center.x - 32 && ball.center.x < platform.center.x + 32 && ball.center.y > platform.center.y - 32 && ball.center.y < platform.center.y + 32) {
        printf("COLLISION");
        platform.center = CGPointMake(platform.center.x + 20, platform.center.y + 2);
    } 
    if (platform.center.x > 300)
    {
        platform.center = CGPointMake(0, platform.center.y);
    }
}


- (IBAction)moveDown:(id)sender
{
    ball.center = CGPointMake(ball.center.x, ball.center.y + 20);
}
- (IBAction)moveUp:(id)sender
{
    ball.center = CGPointMake(ball.center.x, ball.center.y - 20);
}
- (IBAction)moveLeft:(id)sender
{
    ball.center = CGPointMake(ball.center.x - 20, ball.center.y);
}
-(IBAction)moveRight:(id)sender
{
    ball.center = CGPointMake(ball.center.x + 20, ball.center.y);
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    self.bg = nil;
    self.ball = nil;
    self.platform = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
