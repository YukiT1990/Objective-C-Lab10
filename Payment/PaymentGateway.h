//
//  PaymentGateway.h
//  Payment
//
//  Created by Yuki Tsukada on 2021/03/04.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol PaymentDelegate <NSObject>

- (void) processPaymentAmount: (NSInteger) amount;

@end

@interface PaymentGateway : NSObject

- (void) processPaymentAmount: (NSInteger) amount;


@property (weak) id<PaymentDelegate> delegate;

@end

NS_ASSUME_NONNULL_END
