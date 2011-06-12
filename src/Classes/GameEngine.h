//
//  GameEngine.h
//  MathIsFun2V2
//
//  Created by saumya ray on 5/28/11.
//  Copyright 2011 Personal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Sparrow.h>
#import "SXParticleSystem.h"


@interface GameEngine : SPSprite
{
    @private 
    SXParticleSystem *mParticleSystem;
}

-(id)initWithDefaultOrientation;
-(void)initParticleSystem;

@end
