//
//  RPSController.h
//  RockPaperScissors
//
//  Created by Daniel Pratt on 5/3/17.
//  Copyright © 2017 Daniel Pratt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RPSTurn.h"
#import "RPSGame.h"

@interface RPSController : NSObject

@property (nonatomic) RPSGame* game;

-(void) throwDown: (Move) playerMove;
-(NSString*)messageForGame:(RPSGame*)game;

@end
