//
//  CaculatorMaker.h
//  链式编程初试
//
//  Created by admin on 2017/5/19.
//  Copyright © 2017年 lirui. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CaculatorMaker : NSObject

/**   */
@property (nonatomic, assign) int result;

- (CaculatorMaker *(^)(int))add;
- (CaculatorMaker *(^)(int))sub;
- (CaculatorMaker *(^)(int))Muilt;
- (CaculatorMaker *(^)(int))divide;

@end
