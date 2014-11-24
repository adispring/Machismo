//
//  Card.m
//  Machismo
//
//  Created by 王增迪 on 11/24/14.
//  Copyright (c) 2014 王增迪. All rights reserved.
//

#import "Card.h"

@interface Card ()

@end



@implementation Card

-(int)match:(NSArray *)otherCards
{
    int score = 0;
    for (Card *card in otherCards) {
        if ([card.contents isEqualToString:self.contents]) {
            score = 1;
        }
    
    }
    
    
    return score;
}


@synthesize contents = _contents;

- (NSString *)contents
{
    return _contents;
}

- (void)setContents:(NSString *)contents
{
    _contents = contents;
}

@end




/*
 xcode中在.h文件和.m文件之间切换
 ⌃ + ⌘ + [↑|↓]
 Ctrl + Command + [↑|↓]

 中英文输入法切换
 Command + Space
 */
