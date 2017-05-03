//
//  RPSTurn.m
//  RockPaperScissors
//
//  Created by Daniel Pratt on 5/3/17.
//  Copyright © 2017 Daniel Pratt. All rights reserved.
//

#import "RPSTurn.h"

@interface RPSTurn()
@property (nonatomic, readwrite) Move move;

@end

@implementation RPSTurn

-(instancetype) initWithMove: (Move) move {
    self = [super init];
    if (self ) {
        _move = move;
    }
    return self;
}

-(Move) generateMove {
    return Rock;
}

-(BOOL) defeats:(RPSTurn *)turn {
    return false;
}

@end
