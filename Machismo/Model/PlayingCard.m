//
//  PlayingCard.m
//  Machismo
//
//  Created by 王增迪 on 11/24/14.
//  Copyright (c) 2014 王增迪. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

- (NSString *)contents
{
    NSArray *rankStrings = [PlayingCard rankStrings];
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
}



@synthesize suit = _suit; //because we provide setter AND getter
+ (NSArray *)validSuits{
    return @[@"♥︎",@"♦︎",@"♠︎",@"♣︎"];
}
- (NSString *)suit{
    return _suit ? _suit : @"?";
}
- (void)setSuit:(NSString *)suit{
    if ([[PlayingCard validSuits] containsObject:suit]) {
        _suit = suit;
    }
}

+ (NSArray *)rankStrings{
    return @[@"?",@"A",@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
}

+ (NSUInteger)maxRank{
    return [[self rankStrings] count] - 1;
}

- (void)setRank:(NSUInteger)rank{
    if (rank <= [PlayingCard maxRank]) {
        _rank = rank;
    }
}





@end