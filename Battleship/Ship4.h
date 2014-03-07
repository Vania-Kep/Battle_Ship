//
//  Ship4.h
//  Battleship
//
//  Created by Ваня Капітан on 04.03.14.
//  Copyright (c) 2014 Vania Kep. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Ship4 : NSObject{
    NSInteger _direction;
    NSInteger _x1;
    NSInteger _y1;
    NSInteger _x2;
    NSInteger _y2;
}

-(NSInteger)getDirection;

-(NSInteger)getX1;
-(NSInteger)getY1;
-(NSInteger)getX2;
-(NSInteger)getY2;

-(void)chooseDirection;
-(void)createShip;

@end
