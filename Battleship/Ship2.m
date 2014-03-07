//
//  Ship2.m
//  Battleship
//
//  Created by Ваня Капітан on 07.03.14.
//  Copyright (c) 2014 Vania Kep. All rights reserved.
//

#import "Ship2.h"

@implementation Ship2

-(NSInteger)getDirection
{
    return _direction;
}



-(NSInteger)getX1
{
    return _x1;
}

-(NSInteger)getY1
{
    return _y1;
}

-(NSInteger)getX2
{
    return _x2;
}

-(NSInteger)getY2
{
    return _y2;
}


-(void)chooseDirection
{
    //Горизонтальне чи вертикальне положення корабля
    _direction = arc4random_uniform(2);
}


-(void)createShip
{
    if (_direction==1) {
        _x1=1+ arc4random_uniform(10);
        _y1=1+arc4random_uniform(9);
        _x2=_x1;
        _y2=_y1+1;
    }
    
    else if (_direction==0) {
        _y1= 1+ arc4random_uniform(10);
        _x1= 1+ arc4random_uniform(9);
        _x2=_x1+1;
        _y2=_y1;
    }
}

@end
