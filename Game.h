//
//  Game.h
//  Swap Tiles
//
//  Created by Cory on 2/13/14.
//  Copyright (c) 2014 StickMan. All rights reserved.
//

#import <UIKit/UIKit.h>

// Our integers to hold what type of tile is selected

int Tile1Type;
int Tile2Type;
int Tile3Type;
int Tile4Type;
int Tile5Type;
int Tile6Type;
int Tile7Type;
int Tile8Type;
int Tile9Type;
int Tile10Type;
int Tile11Type;
int Tile12Type;
int Tile13Type;
int Tile14Type;
int Tile15Type;
int Tile16Type;

// Integers to hold values of tiles pressed
// When a tile pressed that has not already been selected the values will be saved to the integers below

     // Store that the first tile was pressed
int FirstTilePushed;
     // Store what type (color) the first tile pressed was
int FirstTileTypePushed;
     // Store that the 2nd tile was pressed
int SecondTilePushed;
     // Store what type (color) the second tile pressed was
int SecondTileTypePushed;
     // These integers will also be called upon to do the swaping of the tiles later in the code

     // Is this the first tile selected or the second
BOOL FirstTileSelected;

     // Do we delete the tile or not
BOOL Tile1Deleted;
BOOL Tile2Deleted;
BOOL Tile3Deleted;
BOOL Tile4Deleted;
BOOL Tile5Deleted;
BOOL Tile6Deleted;
BOOL Tile7Deleted;
BOOL Tile8Deleted;
BOOL Tile9Deleted;
BOOL Tile10Deleted;
BOOL Tile11Deleted;
BOOL Tile12Deleted;
BOOL Tile13Deleted;
BOOL Tile14Deleted;
BOOL Tile15Deleted;
BOOL Tile6Deleted;


@interface Game : UIViewController

{
// Our 16 buttons. One for each tile
    IBOutlet UIButton *Tile1;
    IBOutlet UIButton *Tile2;
    IBOutlet UIButton *Tile3;
    IBOutlet UIButton *Tile4;
    IBOutlet UIButton *Tile5;
    IBOutlet UIButton *Tile6;
    IBOutlet UIButton *Tile7;
    IBOutlet UIButton *Tile8;
    IBOutlet UIButton *Tile9;
    IBOutlet UIButton *Tile10;
    IBOutlet UIButton *Tile11;
    IBOutlet UIButton *Tile12;
    IBOutlet UIButton *Tile13;
    IBOutlet UIButton *Tile14;
    IBOutlet UIButton *Tile15;
    IBOutlet UIButton *Tile16;
    
// Our 16 image views. One for each tile
    IBOutlet UIImageView *Tile1Selected;
    IBOutlet UIImageView *Tile2Selected;
    IBOutlet UIImageView *Tile3Selected;
    IBOutlet UIImageView *Tile4Selected;
    IBOutlet UIImageView *Tile5Selected;
    IBOutlet UIImageView *Tile6Selected;
    IBOutlet UIImageView *Tile7Selected;
    IBOutlet UIImageView *Tile8Selected;
    IBOutlet UIImageView *Tile9Selected;
    IBOutlet UIImageView *Tile10Selected;
    IBOutlet UIImageView *Tile11Selected;
    IBOutlet UIImageView *Tile12Selected;
    IBOutlet UIImageView *Tile13Selected;
    IBOutlet UIImageView *Tile14Selected;
    IBOutlet UIImageView *Tile15Selected;
    IBOutlet UIImageView *Tile16Selected;
    
    
    
    
}

// This will be used to tell xcode what to do when a button is pressed
-(IBAction)Tile1Button:(id)sender;
-(IBAction)Tile2Button:(id)sender;
-(IBAction)Tile3Button:(id)sender;
-(IBAction)Tile4Button:(id)sender;
-(IBAction)Tile5Button:(id)sender;
-(IBAction)Tile6Button:(id)sender;
-(IBAction)Tile7Button:(id)sender;
-(IBAction)Tile8Button:(id)sender;
-(IBAction)Tile9Button:(id)sender;
-(IBAction)Tile10Button:(id)sender;
-(IBAction)Tile11Button:(id)sender;
-(IBAction)Tile12Button:(id)sender;
-(IBAction)Tile13Button:(id)sender;
-(IBAction)Tile14Button:(id)sender;
-(IBAction)Tile15Button:(id)sender;
-(IBAction)Tile16Button:(id)sender;

// now the code to decide if the 2 tiles are next to each other or not
-(void)CheckSwap;
-(void)UnselectTiles;
-(void)SwapTiles;


// Our 16 methods. One for each of the selected tiles
-(void)Tile1SelectedType;
-(void)Tile2SelectedType;
-(void)Tile3SelectedType;
-(void)Tile4SelectedType;
-(void)Tile5SelectedType;
-(void)Tile6SelectedType;
-(void)Tile7SelectedType;
-(void)Tile8SelectedType;
-(void)Tile9SelectedType;
-(void)Tile10SelectedType;
-(void)Tile11SelectedType;
-(void)Tile12SelectedType;
-(void)Tile13SelectedType;
-(void)Tile14SelectedType;
-(void)Tile15SelectedType;
-(void)Tile16SelectedType;

// Methods to determine if we have 3 of the same tiles in a row and what to do if so
-(void)CheckConnection;      // Do we have 3 of the same tiles in a row
-(void)GetRidOfTiles;        // If so remove the selected tiles
-(void)ReplaceTiles;         // Now replace the tiles with new random ones


@end
