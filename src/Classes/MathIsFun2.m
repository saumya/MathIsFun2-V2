//
//  MathIsFun2.m
//  MathIsFun2V2
//
//  Created by saumya ray on 6/14/11.
//  Copyright 2011 Personal. All rights reserved.
//

#import "MathIsFun2.h"


@implementation MathIsFun2

-(id)initWithDefaultEngine
{
	if ((self=[super init]))
    {
		[self init];
        NSLog(@"MathIsFun2:initWithDefaultEngine :");
        ge=[[GameEngine alloc] initWithDefaultOrientation];
        [self addChild:ge];
        [ge release];
	}
	return self;
}

@end
