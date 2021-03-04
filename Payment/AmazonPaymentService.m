//
//  AmazonPaymentService.m
//  Payment
//
//  Created by Yuki Tsukada on 2021/03/04.
//

#import "AmazonPaymentService.h"

@implementation AmazonPaymentService

- (void)processPaymentAmount:(NSInteger)amount {
    if (self.canProcessPayment) {
        NSLog(@"Amazon payments processed amount $ %d", (int)amount);
    } else {
        NSLog(@"The payment cannot be processed. Sorry.");
    }
}

- (BOOL)canProcessPayment {
    NSInteger binary = arc4random_uniform(2);  // 0 or 1
    if (binary == 0) {
        return NO;
    } else {
        return YES;
    }
}


@end
