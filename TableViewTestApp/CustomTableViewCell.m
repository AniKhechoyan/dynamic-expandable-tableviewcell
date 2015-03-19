//
//  CustomTableViewCell.m
//  TableViewTestApp
//
//  Created by Ani Khechoyan on 3/18/15.
//  Copyright (c) 2015 Ogma Inc. All rights reserved.
//

#import "CustomTableViewCell.h"

@interface CustomTableViewCell()

@property (weak, nonatomic) IBOutlet UIView *containerView;

@end

@implementation CustomTableViewCell {
    BOOL _isOpened;
}

- (void)awakeFromNib {
    // Initialization code
    
    [self.containerView setClipsToBounds:YES];
}

- (IBAction)open:(id)sender {
    UITableView *tableView = (UITableView *)self.superview.superview;
    
    if (!_isOpened) {
        if ([self.delegate respondsToSelector:@selector(openPressedForIndexPath:)]) {
            [self.delegate openPressedForIndexPath:[tableView indexPathForCell:self]];
        }
    } else {
        if ([self.delegate respondsToSelector:@selector(closePressedForIndexPath:)]) {
            [self.delegate closePressedForIndexPath:[tableView indexPathForCell:self]];
        }
    }
    
    _isOpened = !_isOpened;
    
    [tableView beginUpdates];
    [tableView endUpdates];
}



- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
