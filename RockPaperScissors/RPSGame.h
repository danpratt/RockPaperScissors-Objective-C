//
//  RPSGame.h
//  RockPaperScissors
//
//  Created by Daniel Pratt on 5/3/17.
//  Copyright © 2017 Daniel Pratt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RPSTurn.h"

@interface RPSGame : NSObject

@property (nonatomic, readonly) RPSTurn* firstTurn;
@property (nonatomic, readonly) RPSTurn* secondTurn;

-(instancetype) initWithFirstTurnPlayerOne:(RPSTurn *)playersMove andPlayerTwo:(RPSTurn *)computersMove;

-(RPSTurn*) winner;
-(RPSTurn*) loser;
-(NSString*) resultsOfGame: (RPSGame*) game;

@end
