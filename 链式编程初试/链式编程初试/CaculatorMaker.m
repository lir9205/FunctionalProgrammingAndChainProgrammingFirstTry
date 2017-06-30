//
//  CaculatorMaker.m
//  链式编程初试
//
//  Created by admin on 2017/5/19.
//  Copyright © 2017年 lirui. All rights reserved.
//

#import "CaculatorMaker.h"

@implementation CaculatorMaker

//方法的返回值是block,block必须有返回值（本身对象），block参数（需要操作的值）
- (CaculatorMaker *(^)(int))add {
    return ^CaculatorMaker *(int value) {
        _result += value;
        return self;
    };
}

- (CaculatorMaker *(^)(int))sub {
    return ^CaculatorMaker *(int value) {
        _result -= value;
        return self;
    };
}

- (CaculatorMaker *(^)(int))Muilt {
    return ^CaculatorMaker*(int value) {
        _result *= value;
        return self;
    };
}

- (CaculatorMaker *(^)(int))divide {
    return ^CaculatorMaker*(int value) {
        _result /= value;
        return self;
    };
}
@end
