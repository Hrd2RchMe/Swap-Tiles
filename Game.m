//
//  Game.m
//  Swap Tiles
//
//  Created by Cory on 2/13/14.
//  Copyright (c) 2014 StickMan. All rights reserved.
//

#import "Game.h"

@interface Game ()

@end

@implementation Game

-(void)SwapTiles{
    switch (FirstTilePushed){                              // Switch first tile with second tile
        case 1:
            Tile1Type = SecondTileTypePushed;
            [self Tile1SelectedType];
            break;
        case 2:
            Tile2Type = SecondTileTypePushed;
            [self Tile2SelectedType];
            break;
        case 3:
            Tile3Type = SecondTileTypePushed;
            [self Tile3SelectedType];
            break;
        case 4:
            Tile4Type = SecondTileTypePushed;
            [self Tile4SelectedType];
            break;
        case 5:
            Tile5Type = SecondTileTypePushed;
            [self Tile5SelectedType];
            break;
        case 6:
            Tile6Type = SecondTileTypePushed;
            [self Tile6SelectedType];
            break;
        case 7:
            Tile7Type = SecondTileTypePushed;
            [self Tile7SelectedType];
            break;
        case 8:
            Tile8Type = SecondTileTypePushed;
            [self Tile8SelectedType];
            break;
        case 9:
            Tile9Type = SecondTileTypePushed;
            [self Tile9SelectedType];
            break;
        case 10:
            Tile10Type = SecondTileTypePushed;
            [self Tile10SelectedType];
            break;
        case 11:
            Tile11Type = SecondTileTypePushed;
            [self Tile11SelectedType];
            break;
        case 12:
            Tile12Type = SecondTileTypePushed;
            [self Tile12SelectedType];
            break;
        case 13:
            Tile13Type = SecondTileTypePushed;
            [self Tile13SelectedType];
            break;
        case 14:
            Tile14Type = SecondTileTypePushed;
            [self Tile14SelectedType];
            break;
        case 15:
            Tile15Type = SecondTileTypePushed;
            [self Tile15SelectedType];
            break;
        case 16:
            Tile16Type = SecondTileTypePushed;
            [self Tile16SelectedType];
            break;
            
        default:
            break;
        
    }
    
    switch (SecondTilePushed){                              // Switch second tile with first tile
        case 1:
            Tile1Type = FirstTileTypePushed;
            [self Tile1SelectedType];
            break;
        case 2:
            Tile2Type = FirstTileTypePushed;
            [self Tile2SelectedType];
            break;
        case 3:
            Tile3Type = FirstTileTypePushed;
            [self Tile3SelectedType];
            break;
        case 4:
            Tile4Type = FirstTileTypePushed;
            [self Tile4SelectedType];
            break;
        case 5:
            Tile5Type = FirstTileTypePushed;
            [self Tile5SelectedType];
            break;
        case 6:
            Tile6Type = FirstTileTypePushed;
            [self Tile6SelectedType];
            break;
        case 7:
            Tile7Type = FirstTileTypePushed;
            [self Tile7SelectedType];
            break;
        case 8:
            Tile8Type = FirstTileTypePushed;
            [self Tile8SelectedType];
            break;
        case 9:
            Tile9Type = FirstTileTypePushed;
            [self Tile9SelectedType];
            break;
        case 10:
            Tile10Type = FirstTileTypePushed;
            [self Tile10SelectedType];
            break;
        case 11:
            Tile11Type = FirstTileTypePushed;
            [self Tile11SelectedType];
            break;
        case 12:
            Tile12Type = FirstTileTypePushed;
            [self Tile12SelectedType];
            break;
        case 13:
            Tile13Type = FirstTileTypePushed;
            [self Tile13SelectedType];
            break;
        case 14:
            Tile14Type = FirstTileTypePushed;
            [self Tile14SelectedType];
            break;
        case 15:
            Tile15Type = FirstTileTypePushed;
            [self Tile15SelectedType];
            break;
        case 16:
            Tile16Type = FirstTileTypePushed;
            [self Tile16SelectedType];
            break;
            
        default:
            break;
            
    }

    
    [self UnselectTiles];
    
}



-(void)UnselectTiles{                           // Set default state for not selected tiles
    
    Tile1Selected.hidden = YES;
    Tile2Selected.hidden = YES;
    Tile3Selected.hidden = YES;
    Tile4Selected.hidden = YES;
    Tile5Selected.hidden = YES;
    Tile6Selected.hidden = YES;
    Tile7Selected.hidden = YES;
    Tile8Selected.hidden = YES;
    Tile9Selected.hidden = YES;
    Tile10Selected.hidden = YES;
    Tile11Selected.hidden = YES;
    Tile12Selected.hidden = YES;
    Tile13Selected.hidden = YES;
    Tile14Selected.hidden = YES;
    Tile15Selected.hidden = YES;
    Tile16Selected.hidden = YES;
    
    FirstTileSelected = NO;
    FirstTilePushed = 0;
    FirstTileTypePushed = 0;
    SecondTilePushed = 0;
    SecondTileTypePushed = 0;
    
}



-(void)CheckSwap{                                             // Here we check if the are next to each other or not

    if (FirstTilePushed == SecondTilePushed + 1) {            // Is tile two, one greater to the right of first selected tile
        if (FirstTilePushed == 5) {                           // If tile 5 is selected and second tile is 6, do not allow the swap
            [self UnselectTiles];
        }
        else if (FirstTilePushed == 9){                       // If tile 9 is selected and second tile is 10, do not allow the swap
            [self UnselectTiles];
        }
        else if(FirstTilePushed ==13){                        // If tile 13 is selected and second tile is 14, do not allow the swap
            [self UnselectTiles];
        }
        else{
            [self SwapTiles];
        }
    }
    else if (FirstTilePushed == SecondTilePushed - 1) {       // Is tile two, one less to the left of first selected tile
        if (FirstTilePushed == 4) {                           // If tile 4 is selected and second tile is 5, do not allow the swap
            [self UnselectTiles];
        }
        else if (FirstTilePushed == 8){                       // If tile 8 is selected and second tile is 9, do not allow the swap
            [self UnselectTiles];
        }
        else if(FirstTilePushed ==12){                        // If tile 12 is selected and second tile is 13, do not allow the swap
            [self UnselectTiles];
        }
        else{
            [self SwapTiles];
        }
    }
    else if (FirstTilePushed == SecondTilePushed + 4) {       //
        [self SwapTiles];
    }
    else if (FirstTilePushed == SecondTilePushed - 4) {       //
        [self SwapTiles];
    }
    else{
        [self UnselectTiles];
    }
    
}


// This code will decide what button was press and if pressed as well as if it is first or sencond pressed
-(IBAction)Tile1Button:(id)sender{
                                              // If this tile is pressed and no others have been pressed yet, what shall happen next
    if (FirstTileSelected == NO){
        Tile1Selected.hidden = NO;            // First we show the (white) selected tile to indicate that it was selected
        FirstTilePushed = 1;                  // This will indicate that the first tile has been pressed and stores it
        FirstTileTypePushed = Tile1Type;      // This tells xcode what type the tile is and stores it
        FirstTileSelected = YES;              // This tells the code that First tile has been selected
    }
    else{
        SecondTilePushed = 1;                 // Take tile 1 pushed and move it to second tile pushed location
        SecondTileTypePushed = Tile1Type;
        [self CheckSwap];                     // Check to verify that the tiles are next to each other
    }
}
-(IBAction)Tile2Button:(id)sender{
                                              // If this tile is pressed and no others have been pressed yet, what shall happen next
    if (FirstTileSelected == NO){
        Tile2Selected.hidden = NO;            // First we show the (white) selected tile to indicate that it was selected
        FirstTilePushed = 2;                  // This will indicate that the first tile has been pressed and stores it
        FirstTileTypePushed = Tile2Type;      // This tells xcode what type the tile is and stores it
        FirstTileSelected = YES;              // This tells the code that First tile has been selected
    }
    else{
        SecondTilePushed = 2;                 // Take tile 1 pushed and move it to second tile pushed location
        SecondTileTypePushed = Tile2Type;
        [self CheckSwap];                     // Check to verify that the tiles are next to each other
    }
    
}
-(IBAction)Tile3Button:(id)sender{
    // If this tile is pressed and no others have been pressed yet, what shall happen next
    if (FirstTileSelected == NO){
        Tile3Selected.hidden = NO;            // First we show the (white) selected tile to indicate that it was selected
        FirstTilePushed = 3;                  // This will indicate that the first tile has been pressed and stores it
        FirstTileTypePushed = Tile3Type;      // This tells xcode what type the tile is and stores it
        FirstTileSelected = YES;              // This tells the code that First tile has been selected
    }
    else{
        SecondTilePushed = 3;                 // Take tile 1 pushed and move it to second tile pushed location
        SecondTileTypePushed = Tile3Type;
        [self CheckSwap];                     // Check to verify that the tiles are next to each other
    }
}
-(IBAction)Tile4Button:(id)sender{
    // If this tile is pressed and no others have been pressed yet, what shall happen next
    if (FirstTileSelected == NO){
        Tile4Selected.hidden = NO;            // First we show the (white) selected tile to indicate that it was selected
        FirstTilePushed = 4;                  // This will indicate that the first tile has been pressed and stores it
        FirstTileTypePushed = Tile4Type;      // This tells xcode what type the tile is and stores it
        FirstTileSelected = YES;              // This tells the code that First tile has been selected
    }
    else{
        SecondTilePushed = 4;                 // Take tile 1 pushed and move it to second tile pushed location
        SecondTileTypePushed = Tile4Type;
        [self CheckSwap];                     // Check to verify that the tiles are next to each other
    }
}
-(IBAction)Tile5Button:(id)sender{
    // If this tile is pressed and no others have been pressed yet, what shall happen next
    if (FirstTileSelected == NO){
        Tile5Selected.hidden = NO;            // First we show the (white) selected tile to indicate that it was selected
        FirstTilePushed = 5;                  // This will indicate that the first tile has been pressed and stores it
        FirstTileTypePushed = Tile5Type;      // This tells xcode what type the tile is and stores it
        FirstTileSelected = YES;              // This tells the code that First tile has been selected
    }
    else{
        SecondTilePushed = 5;                 // Take tile 1 pushed and move it to second tile pushed location
        SecondTileTypePushed = Tile5Type;
        [self CheckSwap];                     // Check to verify that the tiles are next to each other
    }
}
-(IBAction)Tile6Button:(id)sender{
    // If this tile is pressed and no others have been pressed yet, what shall happen next
    if (FirstTileSelected == NO){
        Tile6Selected.hidden = NO;            // First we show the (white) selected tile to indicate that it was selected
        FirstTilePushed = 6;                  // This will indicate that the first tile has been pressed and stores it
        FirstTileTypePushed = Tile6Type;      // This tells xcode what type the tile is and stores it
        FirstTileSelected = YES;              // This tells the code that First tile has been selected
    }
    else{
        SecondTilePushed = 6;                 // Take tile 1 pushed and move it to second tile pushed location
        SecondTileTypePushed = Tile6Type;
        [self CheckSwap];                     // Check to verify that the tiles are next to each other
    }
}
-(IBAction)Tile7Button:(id)sender{
    // If this tile is pressed and no others have been pressed yet, what shall happen next
    if (FirstTileSelected == NO){
        Tile7Selected.hidden = NO;            // First we show the (white) selected tile to indicate that it was selected
        FirstTilePushed = 7;                  // This will indicate that the first tile has been pressed and stores it
        FirstTileTypePushed = Tile7Type;      // This tells xcode what type the tile is and stores it
        FirstTileSelected = YES;              // This tells the code that First tile has been selected
    }
    else{
        SecondTilePushed = 7;                 // Take tile 1 pushed and move it to second tile pushed location
        SecondTileTypePushed = Tile7Type;
        [self CheckSwap];                     // Check to verify that the tiles are next to each other
    }
}
-(IBAction)Tile8Button:(id)sender{
    // If this tile is pressed and no others have been pressed yet, what shall happen next
    if (FirstTileSelected == NO){
        Tile8Selected.hidden = NO;            // First we show the (white) selected tile to indicate that it was selected
        FirstTilePushed = 8;                  // This will indicate that the first tile has been pressed and stores it
        FirstTileTypePushed = Tile8Type;      // This tells xcode what type the tile is and stores it
        FirstTileSelected = YES;              // This tells the code that First tile has been selected
    }
    else{
        SecondTilePushed = 8;                 // Take tile 1 pushed and move it to second tile pushed location
        SecondTileTypePushed = Tile8Type;
        [self CheckSwap];                     // Check to verify that the tiles are next to each other
    }
}
-(IBAction)Tile9Button:(id)sender{
    // If this tile is pressed and no others have been pressed yet, what shall happen next
    if (FirstTileSelected == NO){
        Tile9Selected.hidden = NO;            // First we show the (white) selected tile to indicate that it was selected
        FirstTilePushed = 9;                  // This will indicate that the first tile has been pressed and stores it
        FirstTileTypePushed = Tile9Type;      // This tells xcode what type the tile is and stores it
        FirstTileSelected = YES;              // This tells the code that First tile has been selected
    }
    else{
        SecondTilePushed = 9;                 // Take tile 1 pushed and move it to second tile pushed location
        SecondTileTypePushed = Tile9Type;
        [self CheckSwap];                     // Check to verify that the tiles are next to each other
    }
}
-(IBAction)Tile10Button:(id)sender{
    // If this tile is pressed and no others have been pressed yet, what shall happen next
    if (FirstTileSelected == NO){
        Tile10Selected.hidden = NO;            // First we show the (white) selected tile to indicate that it was selected
        FirstTilePushed = 10;                  // This will indicate that the first tile has been pressed and stores it
        FirstTileTypePushed = Tile10Type;      // This tells xcode what type the tile is and stores it
        FirstTileSelected = YES;              // This tells the code that First tile has been selected
    }
    else{
        SecondTilePushed = 10;                 // Take tile 1 pushed and move it to second tile pushed location
        SecondTileTypePushed = Tile10Type;
        [self CheckSwap];                     // Check to verify that the tiles are next to each other
    }
}
-(IBAction)Tile11Button:(id)sender{
    // If this tile is pressed and no others have been pressed yet, what shall happen next
    if (FirstTileSelected == NO){
        Tile11Selected.hidden = NO;            // First we show the (white) selected tile to indicate that it was selected
        FirstTilePushed = 11;                  // This will indicate that the first tile has been pressed and stores it
        FirstTileTypePushed = Tile11Type;      // This tells xcode what type the tile is and stores it
        FirstTileSelected = YES;              // This tells the code that First tile has been selected
    }
    else{
        SecondTilePushed = 11;                 // Take tile 1 pushed and move it to second tile pushed location
        SecondTileTypePushed = Tile11Type;
        [self CheckSwap];                     // Check to verify that the tiles are next to each other
    }
}
-(IBAction)Tile12Button:(id)sender{
    // If this tile is pressed and no others have been pressed yet, what shall happen next
    if (FirstTileSelected == NO){
        Tile12Selected.hidden = NO;            // First we show the (white) selected tile to indicate that it was selected
        FirstTilePushed = 12;                  // This will indicate that the first tile has been pressed and stores it
        FirstTileTypePushed = Tile12Type;      // This tells xcode what type the tile is and stores it
        FirstTileSelected = YES;              // This tells the code that First tile has been selected
    }
    else{
        SecondTilePushed = 12;                 // Take tile 1 pushed and move it to second tile pushed location
        SecondTileTypePushed = Tile12Type;
        [self CheckSwap];                     // Check to verify that the tiles are next to each other
    }
}
-(IBAction)Tile13Button:(id)sender{
    // If this tile is pressed and no others have been pressed yet, what shall happen next
    if (FirstTileSelected == NO){
        Tile13Selected.hidden = NO;            // First we show the (white) selected tile to indicate that it was selected
        FirstTilePushed = 13;                  // This will indicate that the first tile has been pressed and stores it
        FirstTileTypePushed = Tile13Type;      // This tells xcode what type the tile is and stores it
        FirstTileSelected = YES;              // This tells the code that First tile has been selected
    }
    else{
        SecondTilePushed = 13;                 // Take tile 1 pushed and move it to second tile pushed location
        SecondTileTypePushed = Tile13Type;
        [self CheckSwap];                     // Check to verify that the tiles are next to each other
    }
}
-(IBAction)Tile14Button:(id)sender{
    // If this tile is pressed and no others have been pressed yet, what shall happen next
    if (FirstTileSelected == NO){
        Tile14Selected.hidden = NO;            // First we show the (white) selected tile to indicate that it was selected
        FirstTilePushed = 14;                  // This will indicate that the first tile has been pressed and stores it
        FirstTileTypePushed = Tile14Type;      // This tells xcode what type the tile is and stores it
        FirstTileSelected = YES;              // This tells the code that First tile has been selected
    }
    else{
        SecondTilePushed = 14;                 // Take tile 1 pushed and move it to second tile pushed location
        SecondTileTypePushed = Tile14Type;
        [self CheckSwap];                     // Check to verify that the tiles are next to each other
    }
}
-(IBAction)Tile15Button:(id)sender{
    // If this tile is pressed and no others have been pressed yet, what shall happen next
    if (FirstTileSelected == NO){
        Tile15Selected.hidden = NO;            // First we show the (white) selected tile to indicate that it was selected
        FirstTilePushed = 15;                  // This will indicate that the first tile has been pressed and stores it
        FirstTileTypePushed = Tile15Type;      // This tells xcode what type the tile is and stores it
        FirstTileSelected = YES;              // This tells the code that First tile has been selected
    }
    else{
        SecondTilePushed = 15;                 // Take tile 1 pushed and move it to second tile pushed location
        SecondTileTypePushed = Tile15Type;
        [self CheckSwap];                     // Check to verify that the tiles are next to each other
    }
}
-(IBAction)Tile16Button:(id)sender{
    // If this tile is pressed and no others have been pressed yet, what shall happen next
    if (FirstTileSelected == NO){
        Tile16Selected.hidden = NO;            // First we show the (white) selected tile to indicate that it was selected
        FirstTilePushed = 16;                  // This will indicate that the first tile has been pressed and stores it
        FirstTileTypePushed = Tile16Type;      // This tells xcode what type the tile is and stores it
        FirstTileSelected = YES;              // This tells the code that First tile has been selected
    }
    else{
        SecondTilePushed = 16;                 // Take tile 1 pushed and move it to second tile pushed location
        SecondTileTypePushed = Tile16Type;
        [self CheckSwap];                     // Check to verify that the tiles are next to each other
    }
}



// Here we start the code to run for each of the 16 methods
-(void)Tile1SelectedType{
    
// We will now set the button image to the image file based on the case number. The case number is 1 of the four random options form 0 to 3
    switch (Tile1Type) {
        case 0:
        {
            UIImage *buttonImage = [UIImage imageNamed:@"GreenTile.png"];
            [Tile1 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Tile1];
        }
            break;
        case 1:
        {
            UIImage *buttonImage = [UIImage imageNamed:@"BlueTile.png"];
            [Tile1 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Tile1];
        }
            break;
        case 2:
        {
            UIImage *buttonImage = [UIImage imageNamed:@"OrangeTile.png"];
            [Tile1 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Tile1];
        }
            break;
        case 3:
        {
            UIImage *buttonImage = [UIImage imageNamed:@"PinkTile.png"];
            [Tile1 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Tile1];
        }
            break;
            
        default:
            break;
    }
    
}
-(void)Tile2SelectedType;{
    switch (Tile2Type) {
        case 0:
        {
            UIImage *buttonImage = [UIImage imageNamed:@"GreenTile.png"];
            [Tile2 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Tile2];
        }
            break;
        case 1:
        {
            UIImage *buttonImage = [UIImage imageNamed:@"BlueTile.png"];
            [Tile2 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Tile2];
        }
            break;
        case 2:
        {
            UIImage *buttonImage = [UIImage imageNamed:@"OrangeTile.png"];
            [Tile2 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Tile2];
        }
            break;
        case 3:
        {
            UIImage *buttonImage = [UIImage imageNamed:@"PinkTile.png"];
            [Tile2 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Tile2];
        }
            break;
            
        default:
            break;
    }
    
    
}
-(void)Tile3SelectedType;{
    
    switch (Tile3Type) {
        case 0:
        {
            UIImage *buttonImage = [UIImage imageNamed:@"GreenTile.png"];
            [Tile3 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Tile3];
        }
            break;
        case 1:
        {
            UIImage *buttonImage = [UIImage imageNamed:@"BlueTile.png"];
            [Tile3 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Tile3];
        }
            break;
        case 2:
        {
            UIImage *buttonImage = [UIImage imageNamed:@"OrangeTile.png"];
            [Tile3 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Tile3];
        }
            break;
        case 3:
        {
            UIImage *buttonImage = [UIImage imageNamed:@"PinkTile.png"];
            [Tile3 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Tile3];
        }
            break;
            
        default:
            break;
    }
    
}
-(void)Tile4SelectedType;{
    
    switch (Tile4Type) {
        case 0:
        {
            UIImage *buttonImage = [UIImage imageNamed:@"GreenTile.png"];
            [Tile4 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Tile4];
        }
            break;
        case 1:
        {
            UIImage *buttonImage = [UIImage imageNamed:@"BlueTile.png"];
            [Tile4 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Tile4];
        }
            break;
        case 2:
        {
            UIImage *buttonImage = [UIImage imageNamed:@"OrangeTile.png"];
            [Tile4 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Tile4];
        }
            break;
        case 3:
        {
            UIImage *buttonImage = [UIImage imageNamed:@"PinkTile.png"];
            [Tile4 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Tile4];
        }
            break;
            
        default:
            break;
    }
    
    
}
-(void)Tile5SelectedType;{
    
    switch (Tile5Type) {
        case 0:
        {
            UIImage *buttonImage = [UIImage imageNamed:@"GreenTile.png"];
            [Tile5 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Tile5];
        }
            break;
        case 1:
        {
            UIImage *buttonImage = [UIImage imageNamed:@"BlueTile.png"];
            [Tile5 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Tile5];
        }
            break;
        case 2:
        {
            UIImage *buttonImage = [UIImage imageNamed:@"OrangeTile.png"];
            [Tile5 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Tile5];
        }
            break;
        case 3:
        {
            UIImage *buttonImage = [UIImage imageNamed:@"PinkTile.png"];
            [Tile5 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Tile5];
        }
            break;
            
        default:
            break;
    }
    
}
-(void)Tile6SelectedType;{
    
    switch (Tile6Type) {
        case 0:
        {
            UIImage *buttonImage = [UIImage imageNamed:@"GreenTile.png"];
            [Tile6 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Tile6];
        }
            break;
        case 1:
        {
            UIImage *buttonImage = [UIImage imageNamed:@"BlueTile.png"];
            [Tile6 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Tile6];
        }
            break;
        case 2:
        {
            UIImage *buttonImage = [UIImage imageNamed:@"OrangeTile.png"];
            [Tile6 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Tile6];
        }
            break;
        case 3:
        {
            UIImage *buttonImage = [UIImage imageNamed:@"PinkTile.png"];
            [Tile6 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Tile6];
        }
            break;
            
        default:
            break;
    }
    
}
-(void)Tile7SelectedType;{
    
    switch (Tile7Type) {
        case 0:
        {
            UIImage *buttonImage = [UIImage imageNamed:@"GreenTile.png"];
            [Tile7 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Tile7];
        }
            break;
        case 1:
        {
            UIImage *buttonImage = [UIImage imageNamed:@"BlueTile.png"];
            [Tile7 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Tile7];
        }
            break;
        case 2:
        {
            UIImage *buttonImage = [UIImage imageNamed:@"OrangeTile.png"];
            [Tile7 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Tile7];
        }
            break;
        case 3:
        {
            UIImage *buttonImage = [UIImage imageNamed:@"PinkTile.png"];
            [Tile7 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Tile7];
        }
            break;
            
        default:
            break;
    }
    
}
-(void)Tile8SelectedType;{
    
    switch (Tile8Type) {
        case 0:
        {
            UIImage *buttonImage = [UIImage imageNamed:@"GreenTile.png"];
            [Tile8 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Tile8];
        }
            break;
        case 1:
        {
            UIImage *buttonImage = [UIImage imageNamed:@"BlueTile.png"];
            [Tile8 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Tile8];
        }
            break;
        case 2:
        {
            UIImage *buttonImage = [UIImage imageNamed:@"OrangeTile.png"];
            [Tile8 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Tile8];
        }
            break;
        case 3:
        {
            UIImage *buttonImage = [UIImage imageNamed:@"PinkTile.png"];
            [Tile8 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Tile8];
        }
            break;
            
        default:
            break;
    }
    
    
}
-(void)Tile9SelectedType;{
    
    switch (Tile9Type) {
        case 0:
        {
            UIImage *buttonImage = [UIImage imageNamed:@"GreenTile.png"];
            [Tile9 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Tile9];
        }
            break;
        case 1:
        {
            UIImage *buttonImage = [UIImage imageNamed:@"BlueTile.png"];
            [Tile9 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Tile9];
        }
            break;
        case 2:
        {
            UIImage *buttonImage = [UIImage imageNamed:@"OrangeTile.png"];
            [Tile9 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Tile9];
        }
            break;
        case 3:
        {
            UIImage *buttonImage = [UIImage imageNamed:@"PinkTile.png"];
            [Tile9 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Tile9];
        }
            break;
            
        default:
            break;
    }
    
}
-(void)Tile10SelectedType;{
    
    switch (Tile10Type) {
        case 0:
        {
            UIImage *buttonImage = [UIImage imageNamed:@"GreenTile.png"];
            [Tile10 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Tile10];
        }
            break;
        case 1:
        {
            UIImage *buttonImage = [UIImage imageNamed:@"BlueTile.png"];
            [Tile10 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Tile10];
        }
            break;
        case 2:
        {
            UIImage *buttonImage = [UIImage imageNamed:@"OrangeTile.png"];
            [Tile10 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Tile10];
        }
            break;
        case 3:
        {
            UIImage *buttonImage = [UIImage imageNamed:@"PinkTile.png"];
            [Tile10 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Tile10];
        }
            break;
            
        default:
            break;
    }
    
}
-(void)Tile11SelectedType;{
    
    switch (Tile11Type) {
        case 0:
        {
            UIImage *buttonImage = [UIImage imageNamed:@"GreenTile.png"];
            [Tile11 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Tile11];
        }
            break;
        case 1:
        {
            UIImage *buttonImage = [UIImage imageNamed:@"BlueTile.png"];
            [Tile11 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Tile11];
        }
            break;
        case 2:
        {
            UIImage *buttonImage = [UIImage imageNamed:@"OrangeTile.png"];
            [Tile11 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Tile11];
        }
            break;
        case 3:
        {
            UIImage *buttonImage = [UIImage imageNamed:@"PinkTile.png"];
            [Tile11 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Tile11];
        }
            break;
            
        default:
            break;
    }
    
}
-(void)Tile12SelectedType;{
    
    switch (Tile12Type) {
        case 0:
        {
            UIImage *buttonImage = [UIImage imageNamed:@"GreenTile.png"];
            [Tile12 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Tile12];
        }
            break;
        case 1:
        {
            UIImage *buttonImage = [UIImage imageNamed:@"BlueTile.png"];
            [Tile12 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Tile12];
        }
            break;
        case 2:
        {
            UIImage *buttonImage = [UIImage imageNamed:@"OrangeTile.png"];
            [Tile12 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Tile12];
        }
            break;
        case 3:
        {
            UIImage *buttonImage = [UIImage imageNamed:@"PinkTile.png"];
            [Tile12 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Tile12];
        }
            break;
            
        default:
            break;
    }
    
}
-(void)Tile13SelectedType;{
    
    switch (Tile13Type) {
        case 0:
        {
            UIImage *buttonImage = [UIImage imageNamed:@"GreenTile.png"];
            [Tile13 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Tile13];
        }
            break;
        case 1:
        {
            UIImage *buttonImage = [UIImage imageNamed:@"BlueTile.png"];
            [Tile13 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Tile13];
        }
            break;
        case 2:
        {
            UIImage *buttonImage = [UIImage imageNamed:@"OrangeTile.png"];
            [Tile13 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Tile13];
        }
            break;
        case 3:
        {
            UIImage *buttonImage = [UIImage imageNamed:@"PinkTile.png"];
            [Tile13 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Tile13];
        }
            break;
            
        default:
            break;
    }
    
}
-(void)Tile14SelectedType;{
    
    switch (Tile14Type) {
        case 0:
        {
            UIImage *buttonImage = [UIImage imageNamed:@"GreenTile.png"];
            [Tile14 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Tile14];
        }
            break;
        case 1:
        {
            UIImage *buttonImage = [UIImage imageNamed:@"BlueTile.png"];
            [Tile14 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Tile14];
        }
            break;
        case 2:
        {
            UIImage *buttonImage = [UIImage imageNamed:@"OrangeTile.png"];
            [Tile14 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Tile14];
        }
            break;
        case 3:
        {
            UIImage *buttonImage = [UIImage imageNamed:@"PinkTile.png"];
            [Tile14 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Tile14];
        }
            break;
            
        default:
            break;
    }
    
}
-(void)Tile15SelectedType;{
    
    switch (Tile15Type) {
        case 0:
        {
            UIImage *buttonImage = [UIImage imageNamed:@"GreenTile.png"];
            [Tile15 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Tile15];
        }
            break;
        case 1:
        {
            UIImage *buttonImage = [UIImage imageNamed:@"BlueTile.png"];
            [Tile15 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Tile15];
        }
            break;
        case 2:
        {
            UIImage *buttonImage = [UIImage imageNamed:@"OrangeTile.png"];
            [Tile15 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Tile15];
        }
            break;
        case 3:
        {
            UIImage *buttonImage = [UIImage imageNamed:@"PinkTile.png"];
            [Tile15 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Tile15];
        }
            break;
            
        default:
            break;
    }
    
}
-(void)Tile16SelectedType;{
    
    switch (Tile16Type) {
        case 0:
        {
            UIImage *buttonImage = [UIImage imageNamed:@"GreenTile.png"];
            [Tile16 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Tile16];
        }
            break;
        case 1:
        {
            UIImage *buttonImage = [UIImage imageNamed:@"BlueTile.png"];
            [Tile16 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Tile16];
        }
            break;
        case 2:
        {
            UIImage *buttonImage = [UIImage imageNamed:@"OrangeTile.png"];
            [Tile16 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Tile16];
        }
            break;
        case 3:
        {
            UIImage *buttonImage = [UIImage imageNamed:@"PinkTile.png"];
            [Tile16 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Tile16];
        }
            break;
            
        default:
            break;
    }
    
    
}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
 
// Non Seleected tiles will now hide the (WHITE) Selected Tile until told not to hide later in the code.
    Tile1Selected.hidden = YES;
    Tile2Selected.hidden = YES;
    Tile3Selected.hidden = YES;
    Tile4Selected.hidden = YES;
    Tile5Selected.hidden = YES;
    Tile6Selected.hidden = YES;
    Tile7Selected.hidden = YES;
    Tile8Selected.hidden = YES;
    Tile9Selected.hidden = YES;
    Tile10Selected.hidden = YES;
    Tile11Selected.hidden = YES;
    Tile12Selected.hidden = YES;
    Tile13Selected.hidden = YES;
    Tile14Selected.hidden = YES;
    Tile15Selected.hidden = YES;
    Tile16Selected.hidden = YES;
    
// Set a random generator for between 0 and 3 for a total of 4 possibilities of randomness EA - Greeen, Blue, Pink, and Orange
    Tile1Type = arc4random() %4;
    Tile2Type = arc4random() %4;
    Tile3Type = arc4random() %4;
    Tile4Type = arc4random() %4;
    Tile5Type = arc4random() %4;
    Tile6Type = arc4random() %4;
    Tile7Type = arc4random() %4;
    Tile8Type = arc4random() %4;
    Tile9Type = arc4random() %4;
    Tile10Type = arc4random() %4;
    Tile11Type = arc4random() %4;
    Tile12Type = arc4random() %4;
    Tile13Type = arc4random() %4;
    Tile14Type = arc4random() %4;
    Tile15Type = arc4random() %4;
    Tile16Type = arc4random() %4;
  
 // Set the tile button to the correct image based on the random that was selected. Run the method named Tile#SelectedType
    [self Tile1SelectedType];
    [self Tile2SelectedType];
    [self Tile3SelectedType];
    [self Tile4SelectedType];
    [self Tile5SelectedType];
    [self Tile6SelectedType];
    [self Tile7SelectedType];
    [self Tile8SelectedType];
    [self Tile9SelectedType];
    [self Tile10SelectedType];
    [self Tile11SelectedType];
    [self Tile12SelectedType];
    [self Tile13SelectedType];
    [self Tile14SelectedType];
    [self Tile15SelectedType];
    [self Tile16SelectedType];
    
 // Check and run code for if 3 tiles selected and then delete tiles and then replace with random new tiles "Candy Crush - Make and iPhone App in Xcode 5 - Tutorial Video 3 of 4 @ 10:38"
    [self performSelector:@selector(CheckConnection) withObject:self afterDelay:0.3];
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
