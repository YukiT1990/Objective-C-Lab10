//
//  main.m
//  Payment
//
//  Created by Yuki Tsukada on 2021/03/04.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "PaymentGateway.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        InputHandler *newInputHandler = [[InputHandler alloc] init];
        
        NSInteger randomDoller = arc4random_uniform(901) + 100; // 100~1000
        NSString *userInputForPayment = [newInputHandler getUserInput:@"Thank you for shopping at Acme.com Your total today is $xxx Please select your payment method: 1: Paypal, 2: Stripe, 3: Amazon"];
        int paymentChoice = 0;
        BOOL duringInput = YES;
        while (duringInput) {
            if([userInputForPayment intValue] != 0) {
                paymentChoice = [userInputForPayment intValue];
                duringInput = NO;
            } else {
                NSLog(@"Invalid input. Please try again.");
            }
        }
        PaymentGateway *newPaymentGateway = [[PaymentGateway alloc] init];
        [newPaymentGateway processPaymentAmount:randomDoller];
        
        
    }
    return 0;
}
