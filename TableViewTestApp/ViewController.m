//
//  ViewController.m
//  TableViewTestApp
//
//  Created by Ani Khechoyan on 3/18/15.
//  Copyright (c) 2015 Ogma Inc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {
    NSMutableDictionary *indexesForOpenAlertCells;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    indexesForOpenAlertCells = [[NSMutableDictionary alloc] init];
}


-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    float height = 106;
    
    if ([indexesForOpenAlertCells valueForKey:[NSString stringWithFormat:@"%zd", indexPath.row]]) {
        height += 90;
    }
    
    return height;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 15;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    cell.delegate = self;
    
    return cell;
}

-(void)openPressedForIndexPath:(NSIndexPath *)indexPath {
    [indexesForOpenAlertCells setValue:@(indexPath.row) forKey:[NSString stringWithFormat:@"%zd", indexPath.row]];
}

-(void)closePressedForIndexPath:(NSIndexPath *)indexPath {
    [indexesForOpenAlertCells removeObjectForKey:[NSString stringWithFormat:@"%zd", indexPath.row]];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
