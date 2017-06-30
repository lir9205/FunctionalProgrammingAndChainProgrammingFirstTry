//
//  NSObject+Caculator.m
//  链式编程初试
//
//  Created by admin on 2017/5/19.
//  Copyright © 2017年 lirui. All rights reserved.
//

#import "NSObject+Caculator.h"
#import "CaculatorMaker.h"

@implementation NSObject (Caculator)

+ (int)makeCaculators:(void (^)(CaculatorMaker *))block {
    CaculatorMaker *maker = [[CaculatorMaker alloc] init];
    block(maker);
    return maker.result;
}

@end
