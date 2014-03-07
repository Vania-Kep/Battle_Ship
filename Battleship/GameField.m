//
//  GameField.m
//  Battleship
//
//  Created by Ваня Капітан on 04.03.14.
//  Copyright (c) 2014 Vania Kep. All rights reserved.
//

#import "GameField.h"
#import "Ship4.h"
#import "Ship3.h"
#import "Ship2.h"
#import "Ship1.h"

@implementation GameField

-(void)createField
{
    //заполнение масива  нулями и координатами
    for(int i = 1; i < 11; i++)
    {
        for(int j = 1; j < 11; j++)
        {
            // координати
            _field[0][j]=j;  _field[i][0]=i;
            
            //поле
            _field[i][j]=0;
        }
    }
}


// додавання 1-х палубного корабля
-(void)addShip1:(Ship1 *)ship
{
    NSInteger x1, y1;
    
        //вибір пустого місця
    do {
            [ship createShip];
            
            x1=     [ship getX1];
            y1=    [ship getY1];
            
        } while (_field [x1][y1]!=0 );
        
        //зарисовка корабля і відступів від нього
       
            _field[x1][y1]= 1;
        
        //відступи
            _field[x1+1][y1]= 9;
            _field[x1-1][y1]= 9;
        
        _field[x1-1][y1-1]= 9; _field[x1][y1-1]= 9; _field[x1+1][y1-1]= 9;
        _field[x1-1][y1+1]= 9; _field[x1][y1+1]= 9; _field[x1+1][y1+1]= 9;
}


// додавання 2-х палубного корабля
-(void)addShip2:(Ship2 *)ship
{
    
    NSInteger x1, x2, y1, y2;
    
    [ship  chooseDirection];
    
    //зарисовка горизонтально розсташованого корабля
    if ([ship getDirection]==1) {
        do {
            [ship createShip];
            
            x1=    [ship getX1];
            y1=    [ship getY1];
            x2=    [ship getX2];
            y2=    [ship getY2];
        } while (_field [x1][y1]!=0 || _field [x1][y1+1]!=0 );
        
        //зарисовка корабля і відступів від нього
        for (int i=y1; i<=y2; i++) {
            _field[x1][i]= 2;
            
            _field[x1+1][i]= 9;
            _field[x1-1][i]= 9;
        }
        _field[x1-1][y1-1]= 9; _field[x1][y1-1]= 9; _field[x1+1][y1-1]= 9;
        _field[x1-1][y1+2]= 9; _field[x1][y1+2]= 9; _field[x1+1][y1+2]= 9;
    }
    
    
    
    //зарисовка вертикально розсташованого корабля
    else if ([ship getDirection]==0) {
        do {
            [ship createShip];
            
            x1=  [ship getX1];
            y1=  [ship getY1];
            x2=  [ship getX2];
            y2=  [ship getY2];
        }
        while (_field [x1][y1]!=0 || _field [x1+1][y1]!=0 );
        
        //зарисовка корабля і відступів від нього
        for (int i=x1; i<=x2; i++) {
            _field[i][y1]= 2;
            
            _field[i][y1+1]= 9;
            _field[i][y1-1]= 9;
        }
        _field[x1-1][y1-1]=9; _field[x1-1][y1]=9; _field[x1-1][y1+1]=9;
        _field[x1+2][y1-1]=9; _field[x1+2][y1]=9; _field[x1+2][y1+1]=9;
    }
}


// додавання 3-х палубного корабля
-(void)addShip3:(Ship3 *)ship
{
    
    NSInteger x1, x2, y1, y2;
    
    [ship  chooseDirection];
    
    //зарисовка горизонтально розсташованого корабля
    if ([ship getDirection]==1) {
        do {
            [ship createShip];
            
            x1=     [ship getX1];
            y1=    [ship getY1];
            x2=    [ship getX2];
            y2=    [ship getY2];
        } while (_field [x1][y1]!=0 || _field [x1][y1+1]!=0 || _field [x1][y1+2]!=0 );
        
        //зарисовка корабля і відступів від нього
        for (int i=y1; i<=y2; i++) {
            _field[x1][i]= 3;
            
            _field[x1+1][i]= 9;
            _field[x1-1][i]= 9;
        }
        _field[x1-1][y1-1]= 9;_field[x1][y1-1]= 9;_field[x1+1][y1-1]= 9;
        _field[x1-1][y1+3]= 9;_field[x1][y1+3]= 9;_field[x1+1][y1+3]= 9;
    }
    
    
    
    //зарисовка вертикально розсташованого корабля
    else if ([ship getDirection]==0) {
        do {
            [ship createShip];
            
            x1=  [ship getX1];
            y1=  [ship getY1];
            x2=  [ship getX2];
            y2=  [ship getY2];
        }
        while (_field [x1][y1]!=0 || _field [x1+1][y1]!=0 || _field [x1+2][y1]!=0);
        
        //зарисовка корабля і відступів від нього
        for (int i=x1; i<=x2; i++) {
            _field[i][y1]= 3;
            
            _field[i][y1+1]= 9;
            _field[i][y1-1]= 9;
        }
        _field[x1-1][y1-1]=9;_field[x1-1][y1]=9;_field[x1-1][y1+1]=9;
        _field[x1+3][y1-1]=9;_field[x1+3][y1]=9;_field[x1+3][y1+1]=9;
    }
}


    // додавання 4-х палубного корабля
-(void)addShip4:(Ship4 *)ship
{
    
    NSInteger x1, x2, y1, y2;
    
    [ship chooseDirection];
    
  //зарисовка горизонтально розсташованого корабля
    if ([ship getDirection]==1) {
        do {
            [ship createShip];
            
            x1=     [ship getX1];
            y1=    [ship getY1];
            x2=    [ship getX2];
            y2=    [ship getY2];
        } while (_field [x1][y1]!=0 || _field [x1][y1+1]!=0 || _field [x1][y1+2]!=0 || _field [x1][y1+3]!=0);
        
      //зарисовка корабля і відступів від нього
        for (int i=y1; i<=y2; i++) {
            _field[x1][i]= 4;
            
            _field[x1+1][i]= 9;
            _field[x1-1][i]= 9;
        }
        _field[x1-1][y1-1]= 9;_field[x1][y1-1]= 9;_field[x1+1][y1-1]= 9;
        _field[x1-1][y1+4]= 9;_field[x1][y1+4]= 9;_field[x1+1][y1+4]= 9;
    }
    
    
    
    //зарисовка вертикально розсташованого корабля
    else if ([ship getDirection]==0) {
        do {
            [ship createShip];
            
            x1=  [ship getX1];
            y1=  [ship getY1];
            x2=  [ship getX2];
            y2=  [ship getY2];
        }
        while (_field [x1][y1]!=0 || _field [x1+1][y1]!=0 || _field [x1+2][y1]!=0 || _field [x1+3][y1]!=0);
        
        //зарисовка корабля і відступів від нього
        for (int i=x1; i<=x2; i++) {
            _field[i][y1]= 4;
            
            _field[i][y1+1]= 9;
            _field[i][y1-1]= 9;
        }
        _field[x1-1][y1-1]=9;_field[x1-1][y1]=9;_field[x1-1][y1+1]=9;
        _field[x1+4][y1-1]=9;_field[x1+4][y1]=9;_field[x1+4][y1+1]=9;
    }
 }



-(void)showField
{
    printf("\n**********Show Field*******\n");
    
    //вивод масива
    for(int i = 0; i < 11; i++)
    {
        if(i==1){
            printf(" -----------------------\n"); //рамка
        }
        
        for(int j = 0; j < 11; j++)
        {
            //відновлення коордитан поля
            _field[0][j]=j;  _field[i][0]=i;
            
            //видалення видступів між кораблями
            if(_field[i+1][j+1]==9){
            _field[i+1][j+1]=0;
            }
         
            //левое координатное поле
            if(j==0 && i!=10){
                printf("%ld | ", (long)_field[i][j]);
            }
            
            
            else if(i==10 && j==0){
                printf("%ld| ", (long)_field[i][j]);
            }
            
            else if(i==0){
                printf("%ld ", (long)_field[i][j]);
            }
            
            
            else
                printf("%ld ", (long)_field[i][j]);
            
        }
        printf("\n");
    }
    printf("\n");
}


@end
