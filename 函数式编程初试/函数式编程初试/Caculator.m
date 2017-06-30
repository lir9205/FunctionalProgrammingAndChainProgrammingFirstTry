//
//  Caculator.m
//  函数式编程初试
//
//  Created by admin on 2017/5/19.
//  Copyright © 2017年 lirui. All rights reserved.
//

#import "Caculator.h"

@implementation Caculator
//函数式编程特点：每个方法必须有返回值（本身对象）,把函数或者Block当做参数,block参数（需要操作的值）block返回值（操作结果）
//代表：ReactiveCocoa。
- (Caculator *)caculator:(int (^)(int))caculator {
    _result =  caculator(_result);
    return self;
}

- (Caculator *)equle:(BOOL (^)(int))operation {
    _isEqule = operation(_result);
    return self;
}

@end
