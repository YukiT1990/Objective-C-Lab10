//
//  main.m
//  Payment
//
//  Created by Yuki Tsukada on 2021/03/04.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "PaymentGateway.h"
#import "PaypalPaymentService.h"
#import "StripePaymentService.h"
#import "AmazonPaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        InputHandler *newInputHandler = [[InputHandler alloc] init];
        
        NSInteger randomDoller = arc4random_uniform(901) + 100; // 100~1000
        NSString *userInputForPayment = [newInputHandler getUserInput:[NSString stringWithFormat:@"\nThank you for shopping at Acme.com \nYour total today is $ %d \nPlease select your payment method: \n1: Paypal, 2: Stripe, 3: Amazon", (int)randomDoller]];
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
        NSLog(@"input %d", paymentChoice);
        PaymentGateway *newPaymentGateway = [[PaymentGateway alloc] init];
        
        
        PaypalPaymentService *paypalPaymentService = [PaypalPaymentService new];
        StripePaymentService *stripePaymentService = [StripePaymentService new];
        AmazonPaymentService *amazonPaymentService = [AmazonPaymentService new];
        switch (paymentChoice) {
            case 1:
                newPaymentGateway.delegate = paypalPaymentService;
                break;
            case 2:
                newPaymentGateway.delegate = stripePaymentService;
                break;
            case 3:
                newPaymentGateway.delegate = amazonPaymentService;
                break;
            default:
                NSLog(@"Delegate error");
                break;
        }
        [newPaymentGateway processPaymentAmount:randomDoller];
        
        
    }
    return 0;
}
