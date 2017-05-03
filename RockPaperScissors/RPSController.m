//
//  RPSController.m
//  RockPaperScissors
//
//  Created by Daniel Pratt on 5/3/17.
//  Copyright © 2017 Daniel Pratt. All rights reserved.
//

#import "RPSController.h"
#import "RPSTurn.h"

@implementation RPSController

-(void) throwDown:(Move)playerMove {
    // here is the RPSTurn class generates the opponent's move
    RPSTurn *playersTurn = [[RPSTurn alloc] initWithMove: playerMove];
    RPSTurn *computersTurn = [[RPSTurn alloc] init];
    
    // The RPSGame class stores the results of a game
    self.game = [[RPSGame alloc] initWithFirstTurnPlayerOne:playersTurn
                                               andPlayerTwo:computersTurn];
}

-(NSString*)messageForGame:(RPSGame*)game {
    // First, handle the tie
    // Check too see if the defeats is false
    NSString *gameResultString = [[game resultsOfGame:game] description];
    
    // Then build up the results message "Rock defeats Scissors. You Win!" etc.
    NSString *winnerString = [[game winner] description];
    // Build the loserString here.
    NSString *loserString = [[game loser] description];
    // Build the resultsString here.
    
    if ([gameResultString isEqualToString:@"Tie Game!"]) {
        return [[NSString alloc] initWithFormat:@"%@ You both had %@.", gameResultString, winnerString];
    } else {
        return  [[NSString alloc] initWithFormat:@"%@ %@ defeats %@.", gameResultString, winnerString, loserString];
    }
    
    
    
    
    
}

@end
