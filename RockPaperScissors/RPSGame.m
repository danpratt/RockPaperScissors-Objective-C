//
//  RPSGame.m
//  RockPaperScissors
//
//  Created by Daniel Pratt on 5/3/17.
//  Copyright © 2017 Daniel Pratt. All rights reserved.
//

#import "RPSGame.h"
#import "RPSTurn.h"

@interface RPSGame()

@property (nonatomic, readwrite) RPSTurn* firstTurn;
@property (nonatomic, readwrite) RPSTurn* secondTurn;
@end

@implementation RPSGame

-(instancetype) initWithFirstTurnPlayerOne:(RPSTurn *)playersMove
                              andPlayerTwo:(RPSTurn *)computersMove {
    self = [super init];
    
    if (self) {
        _firstTurn = playersMove;
        _secondTurn = computersMove;
    }
    
    return self;
}

-(RPSTurn*) winner {
    return [self.firstTurn defeats:self.secondTurn] ? self.firstTurn : self.secondTurn;
}

-(RPSTurn*) loser {
    return [self.firstTurn defeats:self.secondTurn] ? self.secondTurn : self.firstTurn;
}

-(NSString*) resultsOfGame:(RPSGame *)game {
    return [game.firstTurn defeats:game.secondTurn] ? @"You Win!" : @"You Lose!";
}

@end
