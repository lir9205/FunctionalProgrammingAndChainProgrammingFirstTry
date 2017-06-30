//
//  ViewController.m
//  链式编程初试
//
//  Created by admin on 2017/5/19.
//  Copyright © 2017年 lirui. All rights reserved.
//

#import "ViewController.h"
#import "NSObject+Caculator.h"
#import "CaculatorMaker.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //链式编程特点：方法的返回值是block,block必须有返回值（本身对象），block参数（需要操作的值）
    //代表：Masonry
    int result = [NSObject makeCaculators:^(CaculatorMaker *maker) {
        maker.add(10).add(5).Muilt(3).divide(9);
    }];
    NSLog(@"result: %zd", result);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
