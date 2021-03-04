//
//  PaypalPaymentService.m
//  Payment
//
//  Created by Yuki Tsukada on 2021/03/04.
//

#import "PaypalPaymentService.h"

@implementation PaypalPaymentService

- (void)processPaymentAmount:(NSInteger)amount {
    NSLog(@"Process $ %d payment with Paypal.", (int)amount);
}

@end
