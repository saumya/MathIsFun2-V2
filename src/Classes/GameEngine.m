//
//  GameEngine.m
//  MathIsFun2V2
//
//  Created by saumya ray on 5/28/11.
//  Copyright 2011 Personal. All rights reserved.
//

#import "GameEngine.h"


@implementation GameEngine

-(id)initWithDefaultOrientation
{
	if ((self=[super init])) {
		[self init];
        NSLog(@"GameEngine:initWithDefaultOrientation");
        
        [self initParticleSystem];
	}
	return self;
}

-(void)initParticleSystem
{
    SPStage *stage=[SPStage mainStage];//new in Sparrow 1.2 , yeaahaa :)
    //SPStage *stage=[self stage];
    SPJuggler *juggler=[stage juggler];
    
    // create particle system
    mParticleSystem = [[SXParticleSystem alloc] initWithContentsOfFile:@"drugs.pex"];
    mParticleSystem.x = stage.width / 2.0f;
    mParticleSystem.y = stage.height / 2.0f;
    
    // add it to the stage and the juggler
    [self addChild:mParticleSystem];
    //[self.juggler addObject:mParticleSystem];
    [juggler addObject:mParticleSystem];
    
    [mParticleSystem start];
    [mParticleSystem release];
    
    
    // register touch event for emitter manipulation
    [self addEventListener:@selector(onTouch:) 
                  atObject:self 
                   forType:SP_EVENT_TYPE_TOUCH]; 
    
    
}

-(void)updateEmitorPositionWithX:(float)x AndY:(float)y
{
    mParticleSystem.emitterX = x;
    mParticleSystem.emitterY = y;
}

- (void)onTouch:(SPTouchEvent *)event
{
    NSLog(@"GameEngine : onTouch : ");
    SPTouch *touch = [[event touchesWithTarget:self] anyObject];
    if (touch)
    {
        SPPoint *emitterPos = [touch locationInSpace:mParticleSystem];
        mParticleSystem.emitterX = emitterPos.x;
        mParticleSystem.emitterY = emitterPos.y;
    }
}

@end
