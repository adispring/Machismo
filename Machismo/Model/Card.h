//
//  Card.h
//  Machismo
//
//  Created by 王增迪 on 11/24/14.
//  Copyright (c) 2014 王增迪. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString *contents;

@property (nonatomic, getter=isChosen) BOOL chosen;
@property (nonatomic, getter=isMatched) BOOL matched;

- (int)match:(NSArray *)card;





















@end
