//
//  main.m
//  RockPaperScissors
//
//  Created by Daniel Pratt on 5/3/17.
//  Copyright © 2017 Daniel Pratt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RPSController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        RPSController *game = [[RPSController alloc]init];
        [game throwDown:Rock];
        NSLog(@"%@", [game messageForGame:game.game]);
    }
    return 0;
}
