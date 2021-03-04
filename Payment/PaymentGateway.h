//
//  PaymentGateway.h
//  Payment
//
//  Created by Yuki Tsukada on 2021/03/04.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface PaymentGateway : NSObject

- (void) processPaymentAmount: (NSInteger) amount;

@end

NS_ASSUME_NONNULL_END
