//
//  ViewController.m
//  AsingDemo2
//
//  Created by yinzelin on 14-10-13.
//  Copyright (c) 2014年 ___YUEDUZHE___. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.data = [NSArray arrayWithObjects:@"s",@"l", nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.data count];
    
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSInteger row = [indexPath row];
    NSString *tableIdentifier = @"table_view";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:tableIdentifier];
    if(cell == nil){
        //第一次载入，没翻页
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:tableIdentifier];
    }
    cell.textLabel.text = [self.data objectAtIndex:row];
    UIImage *image = [UIImage imageNamed:@"pen"];
    cell.imageView.image = image;
    return cell;
}

@end
