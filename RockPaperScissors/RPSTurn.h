//
//  RPSTurn.h
//  RockPaperScissors
//
//  Created by Daniel Pratt on 5/3/17.
//  Copyright © 2017 Daniel Pratt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RPSTurn.h"

typedef NS_ENUM(NSInteger, Move) {
    Rock,
    Paper,
    Scissors
};

@interface RPSTurn : NSObject

@property (nonatomic, readonly) Move move;

-(instancetype) initWithMove: (Move) move;

-(Move) generateMove;
-(BOOL) defeats: (RPSTurn*) opponent;
-(NSString *)description;

@end
