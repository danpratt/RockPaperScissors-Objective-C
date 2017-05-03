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
    
}

@end
