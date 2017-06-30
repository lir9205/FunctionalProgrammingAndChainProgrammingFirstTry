//
//  NSObject+Caculator.h
//  链式编程初试
//
//  Created by admin on 2017/5/19.
//  Copyright © 2017年 lirui. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CaculatorMaker;
@interface NSObject (Caculator)

+ (int)makeCaculators:(void(^)(CaculatorMaker *maker))block;

@end
