//
//  GameField.h
//  Battleship
//
//  Created by Ваня Капітан on 04.03.14.
//  Copyright (c) 2014 Vania Kep. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Ship4;
@class Ship3;
@class Ship2;
@class Ship1;

@interface GameField : NSObject{

    NSInteger _field[11][11] ;

}
-(void)createField;

-(void)addShip1:(Ship1 *)ship;
-(void)addShip2:(Ship2 *)ship;
-(void)addShip3:(Ship3 *)ship;
-(void)addShip4:(Ship4 *)ship;

-(void)showField;

@end
