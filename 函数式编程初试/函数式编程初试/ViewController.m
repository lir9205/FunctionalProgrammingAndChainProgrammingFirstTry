//
//  ViewController.m
//  函数式编程初试
//
//  Created by admin on 2017/5/19.
//  Copyright © 2017年 lirui. All rights reserved.
//

#import "ViewController.h"
#import "Caculator.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    //函数式编程特点：每个方法必须有返回值（本身对象）,把函数或者Block当做参数,block参数（需要操作的值）block返回值（操作结果）
    //代表：ReactiveCocoa。
    Caculator *c = [[Caculator alloc] init];
    BOOL isEqule = [[[c caculator:^int(int result) {
        result += 5;
        result += 5;
        return result;
    }] equle:^BOOL(int result) {
        return result == 10;
    }] isEqule];
    
    NSLog(@"%d",isEqule);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
