//
//  ViewController.h
//  TableViewTestApp
//
//  Created by Ani Khechoyan on 3/18/15.
//  Copyright (c) 2015 Ogma Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomTableViewCell.h"

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate, CustomTableViewCellProtocol>


@end

