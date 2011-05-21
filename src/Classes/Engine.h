//
//  Engine.h
//  MathIsFun2V2
//
//  Created by saumya ray on 5/21/11.
//  Copyright 2011 Personal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Sparrow.h>

#import <GamePlayScreen.h>
#import <UserPreferenceScreen.h>
#import <ScoreDisplayScreen.h>

@interface Engine : SPSprite {
	int userScore;
	int timeTaken;//final time
	int timeCount;// timer counter will increment in each frame
	int operandFirst;
	int operandSecond;
	int operationType;//options 1="+", 2="-", 3="x", 4="/"
	int correctAnswer;
	int userAnswer;
	int optionOne;
	int optionTwo;
	int optionThree;
	int userLife;//max 100
	int userLifeLeft;//life will decrease upon each miss or wrong answer
	//
	int difficultyLevel;//1:timeCount=1000,2:timeCount=500,3:timeCount=100
	//int optionType;//1:rectangle,2:circular
	//int optionColor;//bg color of the option
	//UI elements
	GamePlayScreen *gps;
	ScoreDisplayScreen *sds;
	UserPreferenceScreen *ups;
	
}

//---------------------------methods-----------------------------------
//basic engine stuff
-(void)start;
-(void)update;
-(void)stop;

-(void)test;
//
-(id)initialise;
-(void)destroy;

//game creations
-(void)renderWelcomeScreen;
-(void)renderInstructionScreen;
-(void)renderScoreScreen;
//game controls
-(void)showWelcomeScreen;
-(void)showInstructionScreen;
-(void)showScoreScreen;
//resetting
-(void)resetGame;
//-------------------end--------methods-----------------------------------
//properties of the game
@property (assign) int userScore;

//ui
@property (assign) GamePlayScreen *gps;
@property (assign) ScoreDisplayScreen *sds;
@property (assign) UserPreferenceScreen *ups;


@end
