//
//  Ship1.h
//  Battleship
//
//  Created by Ваня Капітан on 07.03.14.
//  Copyright (c) 2014 Vania Kep. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Ship1 : NSObject{
    NSInteger _x1;
    NSInteger _y1;
}

-(NSInteger)getX1;
-(NSInteger)getY1;

-(void)createShip;

@end
