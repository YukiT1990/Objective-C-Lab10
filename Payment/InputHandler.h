//
//  InputHandler.h
//  Lab3
//
//  Created by Yuki Tsukada on 2021/02/25.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface InputHandler : NSObject

// public methods
- (instancetype) init;
- (NSString *) getUserInput: (NSString *) prompt;

@end

NS_ASSUME_NONNULL_END
