//
//  PlayingCard.h
//  Machismo
//
//  Created by 王增迪 on 11/24/14.
//  Copyright (c) 2014 王增迪. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;



@end
