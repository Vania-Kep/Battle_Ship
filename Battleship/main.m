//
//  main.m
//  Battleship
//
//  Created by Ваня Капітан on 26.02.14.
//  Copyright (c) 2014 Vania Kep. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GameField.h"
#import "Ship4.h"
#import "Ship3.h"
#import "Ship2.h"
#import "Ship1.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
     
        //Ініціалізація і створення поля
        GameField *field1 = [[GameField alloc] init];
        [field1 createField];
        
        // Ініціалізація кораблів
        Ship4 *ship4_1 =[[Ship4 alloc]init];
        
        Ship3 *ship3_1 =[[Ship3 alloc]init];
        Ship3 *ship3_2 =[[Ship3 alloc]init];
        
        Ship2 *ship2_1 =[[Ship2 alloc]init];
        Ship2 *ship2_2 =[[Ship2 alloc]init];
        Ship2 *ship2_3 =[[Ship2 alloc]init];
        
        Ship1 *ship1_1 =[[Ship1 alloc]init];
        Ship1 *ship1_2 =[[Ship1 alloc]init];
        Ship1 *ship1_3 =[[Ship1 alloc]init];
        Ship1 *ship1_4 =[[Ship1 alloc]init];
        
        
        //Додавання кораблів у поле
        [field1 addShip4:ship4_1];
        
        [field1 addShip3:ship3_1];
        [field1 addShip3:ship3_2];
        
        [field1 addShip2:ship2_1];
        [field1 addShip2:ship2_2];
        [field1 addShip2:ship2_3];
        
        [field1 addShip1:ship1_1];
        [field1 addShip1:ship1_2];
        [field1 addShip1:ship1_3];
        [field1 addShip1:ship1_4];
        
     
        [field1 showField];
        
    }
    return 0;
}

