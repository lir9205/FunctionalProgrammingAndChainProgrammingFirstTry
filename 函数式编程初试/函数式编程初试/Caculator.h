//
//  Caculator.h
//  函数式编程初试
//
//  Created by admin on 2017/5/19.
//  Copyright © 2017年 lirui. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Caculator : NSObject

/**   */
@property (nonatomic, assign) int result;
/**   */
@property (nonatomic, assign) BOOL isEqule;

- (Caculator *)caculator:(int(^)(int result))caculator;

- (Caculator *)equle:(BOOL(^)(int result))operation;


@end
