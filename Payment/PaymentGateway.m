//
//  PaymentGateway.m
//  Payment
//
//  Created by Yuki Tsukada on 2021/03/04.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

- (void) processPaymentAmount: (NSInteger) amount {
    [_delegate processPaymentAmount:amount];
}

@end
