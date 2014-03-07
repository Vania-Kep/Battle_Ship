//
//  Ship1.m
//  Battleship
//
//  Created by Ваня Капітан on 07.03.14.
//  Copyright (c) 2014 Vania Kep. All rights reserved.
//

#import "Ship1.h"

@implementation Ship1


-(NSInteger)getX1
{
    return _x1;
}

-(NSInteger)getY1
{
    return _y1;
}


-(void)createShip
{
        _x1=1+ arc4random_uniform(10);
        _y1=1+arc4random_uniform(10);
}

@end
