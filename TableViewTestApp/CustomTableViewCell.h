//
//  CustomTableViewCell.h
//  TableViewTestApp
//
//  Created by Ani Khechoyan on 3/18/15.
//  Copyright (c) 2015 Ogma Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol CustomTableViewCellProtocol <NSObject>

-(void) openPressedForIndexPath:(NSIndexPath *)indexPath;
-(void) closePressedForIndexPath:(NSIndexPath *)indexPath;

@end

@interface CustomTableViewCell : UITableViewCell

@property (weak, nonatomic) id<CustomTableViewCellProtocol> delegate;

@end
