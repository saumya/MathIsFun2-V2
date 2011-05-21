//
//  Engine.m
//  MathIsFun2V2
//
//  Created by saumya ray on 5/21/11.
//  Copyright 2011 Personal. All rights reserved.
//

#import "Engine.h"


@implementation Engine

@synthesize userScore;

-(void)start
{
	NSLog(@"Engine:start");
}
-(void)update
{
	NSLog(@"Engine:update");
}
-(void)stop
{
	NSLog(@"Engine:stop");
}

-(void)test
{
	NSLog(@"Engine:test");
	//[self privateTest];
}

-(void)privateTest
{
	NSLog(@"Engine:privateTest");
	NSLog(@"%i",[self userScore]);
}

-(id)initialise
{
	NSLog(@"Engine:initialise");
	//return self;
	if (self=[super init]) {
		[self init];
		//detecting the orientation change
		[[UIDevice currentDevice] beginGeneratingDeviceOrientationNotifications];
		[[NSNotificationCenter defaultCenter] addObserver:self 
												 selector:@selector(orientationDetected:) 
													 name:@"UIDeviceOrientationDidChangeNotification" 
												   object:nil];
		//end orientation detection
	}
	return self;
}

-(void)destroy
{
	NSLog(@"Engine:destroy");
}


-(void)orientationDetected:(UIEvent *)event
{
	NSLog(@"Engine : orientation Change : %i",[UIDevice currentDevice].orientation);
	//NSLog(@"90 degrees= %f",(M_PI/180)*90);
	
	//if (self.optionSelectionSprite.visible) {
		//DO Nothing
	//}else {
		//[self removeEventListener:@selector(onEachFrameAlertUser:) atObject:self forType:SP_EVENT_TYPE_ENTER_FRAME];
		
		int orientation=[UIDevice currentDevice].orientation;
		if (orientation==2) {
			self.x=320+10;
			self.y=480;
			self.rotation=M_PI;
			//[self initGameAgainWithSubtraction];
		}else if (orientation==3) {
			self.x=320+70;
			self.y=80;
			self.rotation=M_PI/2;
			//[self initGameAgainWithMultiplication];
		}else if (orientation==4) {
			//self.rotation=3*M_PI;
			self.x=0-70;
			self.y=480-80;
			self.rotation=-(M_PI/2);
			//[self initGameAgainWithDivision];
		}else {
			self.x=0;
			self.y=0;
			self.rotation=0;
			//[self initGameAgain];
		}
	//}
}

@end
